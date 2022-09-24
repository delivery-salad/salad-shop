package com.delivery.salad.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
	public String getProductList(Model model,PageVO vo) {
	
		
		PageCreate pagecreate=new PageCreate();
		pagecreate.setPaging(vo);
		pagecreate.setArticleTotalCount(productService.productTotalCount());
		
		//product테이블의 모든 게시글 모델이 담아서 화면으로 전달 
		model.addAttribute("productList", productService.productList(vo));
		
		//PageCreate객체를 모델이 담아서 전달
		model.addAttribute("pagecreate", pagecreate);
		return "product/LIST";
		
	}
	
	//특정 상품 조회
	@GetMapping("/product/productSelect/productNum={productNum}")
	public String getProductSelect(@PathVariable int productNum,Model model) {
		
		
		model.addAttribute("product", productService.productSelect(productNum));
		
		
		return "product/SELECT";
	}
	
	
	//상품 등록 화면
	@GetMapping("/product/productRegist")
	public String registProduct(HttpSession session) {
		
		
		
		return "product/REGIST";
		
	}
	
	//상품 등록 
	@PostMapping("/product/productRegist")
	public String registProduct(ProductVO vo) {
		
		if(productService.productRegist(vo) == 1) {
			System.out.println("상품 등록이 정상적으로 완료되었습니다.");
			System.out.println(vo.getProductNum());
		}
		
		return "redirect:/product/productList";
		
	}
	
	@GetMapping("/product/productModify/productNum={productNum}")
	public String modifyProduct(Model model,@PathVariable int productNum) {
		model.addAttribute("product", productService.productSelect(productNum));
		return "product/MODIFY";
	}
	
	@PostMapping("/product/productModify")
	public String modifyProduct(ProductVO vo) {
		
		productService.productModify(vo);
		System.out.println(vo.getProductNum());
		
		return "redirect:/product/productSelect/productNum="+vo.getProductNum();
	}
	
	@PostMapping("/product/productDelte")
	public String deleteProduct(int productNum) {
		
		productService.productDelte(productNum);
		return "redirect:/product/productList";
	}

	
	
}
