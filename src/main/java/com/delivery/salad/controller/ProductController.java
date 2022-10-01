package com.delivery.salad.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.delivery.salad.command.ProductVO;
import com.delivery.salad.product.service.IProductService;
import com.delivery.salad.util.PageCreate;
import com.delivery.salad.util.PageVO;

@Controller
public class ProductController {

	@Autowired
	private IProductService productService;
	
	
	//전체 상품 조회 
	@GetMapping("/product/productList")
	public String getProductList(Model model,PageVO vo,HttpSession session) {
	
		
		PageCreate pagecreate=new PageCreate();
		pagecreate.setPaging(vo);
		pagecreate.setArticleTotalCount(productService.productTotalCount());
		
		//product테이블의 모든 게시글 모델이 담아서 화면으로 전달 
		model.addAttribute("productList", productService.productList(vo));
		
		//PageCreate객체를 모델이 담아서 전달
		model.addAttribute("pagecreate", pagecreate);
		return "product/LIST";
		
	}
	
	//전제 상품 조회에서 이미지 연결 +상품 상세조회에서 썸네일 사진 
	@GetMapping("/product/productImgGet/fileName={productImgName}")
	@ResponseBody
	public ResponseEntity<byte[]> getProductImg(@PathVariable String productImgName) {
		
		File file=new File("C:\\test\\upload\\"+productImgName);
		
		ResponseEntity<byte[]> result=null;
		
		HttpHeaders headers=new HttpHeaders(); //필수는 아님 
		
		try {
			//probeContentType : 파라미터로 전달받은 파일의 타입을 문자열로 변환해 주는 메서드 
			//사용자에게 보여주고자 하는 데이터가 어떤 파일인지를 검사해서 응답상태 코드를 다르게 리턴 할 수 있다.
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			//headers.add("merong","hello"); 이런식으로도 보낼 수 있다.
			
			//ResponseEntity<> (응답객체에 담을 내용 , 응답헤더파일에 담을 내용 , 상태메시지) 전송 가능
			//FileCopyUtils :파일 및 스트림 데이터 복사를 위한 간단한 유틸리티 메서드의 집합체.
			//file객체 안에 있는 내용을 복사해서 byte배열로 변환해서 바디에 담아 화면에 전달
			result=new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file),headers,HttpStatus.OK);
		} 
		catch (IOException e) {
			e.printStackTrace();
		} //
		return result;
				
		
	}
	
	
	
	
	
	
	//특정 상품 조회
	@GetMapping("/product/productSelect/productNum={productNum}&fileName={productImgName}")
	public String getProductSelect(@PathVariable int productNum,Model model,@PathVariable String productImgName) {
		
		
		model.addAttribute("product", productService.productSelect(productNum));
		
		
		return "product/SELECT";
	}
	
	
	//상품 등록 화면
	@GetMapping("/product/productRegist")
	public String registProduct(HttpSession session) {
		
//		if(session.getAttribute(""))
//		
		
		return "product/REGIST";
		
	}
	
	//상품 등록  +이미지 업로드 
	@PostMapping("/product/productRegist")
	public String registProduct(ProductVO vo,@RequestParam("file_url")MultipartFile file,@RequestParam("file_content")MultipartFile file2) {
		try {
			//썸네일 
			String fileRealName=file.getOriginalFilename();
			long size=file.getSize(); 
			
			//실제 내용
			String fileRealName2=file2.getOriginalFilename();
			long size2=file2.getSize(); 



			//DB에는 파일 경로를 저장, 실제 파일은 서버 컴퓨터의 로컬 경로에 저장하는 방식 (원본이미지를 DB에 넣기에는 용량이 크다)
			String uploadFolder="C:\\test\\upload";   //    // ,\\ 둘다 사용해도 무방   ::폴더 경로
			
			//썸네일
			String fileExtension=fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
			
			
			//실제 내용
			String fileExtension2=fileRealName2.substring(fileRealName2.lastIndexOf("."),fileRealName2.length());
						
			UUID uuid=UUID.randomUUID();  // - 로 연결 되어 있음 
			UUID uuid2=UUID.randomUUID();  // - 로 연결 되어 있음 
			
			System.out.println(uuid.toString());
			
			String[] uuids=uuid.toString().split("-");
			String[] uuids2=uuid2.toString().split("-");
			
			System.out.println("생성된 고유 문자열 : "+uuids[0]);
			System.out.println("확장자명 :"+fileExtension);
			
			//자바 폴더 생성
			File folder=new File(uploadFolder);
			if(!folder.exists()) {
				folder.mkdirs(); //폴더가 존재하지 않는다면 생성해라.   **mkdir은 마지막경로의 폴더만 제작해주고(즉, 앞에경로가 완성되어야함)
															// mkdirs는 모두 다 사겢
			}
			File folder2=new File(uploadFolder);
			if(!folder2.exists()) {
				folder2.mkdirs(); //폴더가 존재하지 않는다면 생성해라.   **mkdir은 마지막경로의 폴더만 제작해주고(즉, 앞에경로가 완성되어야함)
															// mkdirs는 모두 다 사겢
			}
			
						//새로운 경로 생성
			folder=new File(uploadFolder+"\\"+uuids[0]+fileExtension);

			folder2=new File(uploadFolder+"\\"+uuids2[0]+fileExtension2);
			
			String file_urls=uploadFolder+"\\"+uuids[0]+fileExtension;
			file.transferTo(folder);
			
			String file_urls2=uploadFolder+"\\"+uuids2[0]+fileExtension2;
			file2.transferTo(folder2);
			
			
			vo.setProductContent("간단한 설명");
			vo.setProductImgUrl(uploadFolder+"\\");
			vo.setProductImgName(uuids[0]+fileExtension);

			vo.setProductContentImgUrl(uploadFolder+"\\");
			vo.setProductContentImgName(uuids2[0]+fileExtension2);
			
			if(productService.productRegist(vo) == 1) {
			  System.out.println("상품 등록이 정상적으로 완료되었습니다.");
			  System.out.println(vo.getProductNum()); }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return "redirect:/product/productList";
		
	}
	
	// 비동기 통신 이미지 업로드 
	@PostMapping("/product/uploadProductImg")
	@ResponseBody
	public String uploadProductImg(MultipartFile file) {
		
		//파일 업로드 hepler_edu_file
		//날짜별로 폴더를 생성해서 파일을 관리
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = new Date();
		String fileloca = sdf.format(date);

		//저장할 폴더 경로
		String uploadPath = "C:\\upload\\" + fileloca;

		File folder = new File(uploadPath);
		if(!folder.exists()) {
			folder.mkdirs(); //폴더가 존재하지 않는다면 생성하라.
		}

		//원본 파일명.
		String fileRealName = file.getOriginalFilename();

		//파일명을 고유한 랜덤 문자로 생성.
		UUID uuid = UUID.randomUUID();
		String uuids = uuid.toString().replaceAll("-", "");

		//확장자를 추출합니다.
		String fileExtension = fileRealName.substring(fileRealName.indexOf("."), fileRealName.length());

		System.out.println("저장할 폴더 경로: " + uploadPath);
		System.out.println("실제 파일명: " + fileRealName);
		System.out.println("폴더명: " + fileloca);
		System.out.println("확장자: " + fileExtension);
		System.out.println("고유랜덤문자: " + uuids);

		String fileName = uuids + fileExtension;
		System.out.println("변경해서 저장할 파일명: " + fileName);

		//업로드한 파일을 서버 컴퓨터 내의 지정한 경로에 실제로 저장.
		File saveFile = new File(uploadPath + "/" + fileName);
		try {
			file.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "success";	
	}

	
	
	
	//상품 수정 화면 이동
	@GetMapping("/product/productModify/productNum={productNum}")
	public String modifyProduct(Model model,@PathVariable int productNum,HttpSession session) {
		model.addAttribute("product", productService.productSelect(productNum));
		return "product/MODIFY";
	}
	
	//상품 수정 
	@PostMapping("/product/productModify")
	public String modifyProduct(ProductVO vo) {
		
		productService.productModify(vo);
		System.out.println(vo.getProductNum());
		
		return "redirect:/product/productSelect/productNum="+vo.getProductNum();
	}

	//상품 삭제 
	@PostMapping("/product/productDelte")
	public String deleteProduct(int productNum) {
		
		productService.productDelte(productNum);
		return "redirect:/product/productList";
	}

	
	
}
