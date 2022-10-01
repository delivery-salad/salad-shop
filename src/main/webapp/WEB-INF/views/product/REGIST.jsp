<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../include/HEADER.jsp"%>

<style>




</style>



    <section class="product-details spad">
        <div class="container">
            <div class="row">

				<div class="col-sm6 col-md-6 col-lg-6 col-xl-6">
				<form action="<c:url value='/product/productRegist' />" method="post" enctype="multipart/form-data" >

					<table>
                           <tbody>
                                <tr>
                                    <td>상품 이름　　</td>
                                    <td><input class="form-control" type="text" name="productName" placeholder="이름"></td>
                                </tr>
                                <tr>
                                    <td>상품 가격</td>
                                    <td><input class="form-control"  type="text" name="productPrice" placeholder="가격"></td>
                                </tr>
                                <tr>
                                    <td>상품 개수</td>
                                    <td><input class="form-control"  type="text" name="productCount" placeholder="개수">
                                    </td>
                                </tr>
                                <tr>
                                    <td>상품 썸네일</td>
                                    <td>
                                    <input class="form-control"  type="file" name="file_url" id="file_url"  placeholder="내용" accept=".jpg,.png,,.pdf">
                                    	
                                    	<img  id="pre" alt="이미지 업로드에 실패하였습니다" class="form-control">
                                    </td>
                                </tr>
                                <tr>
                                    <td>상품 상세 이미지</td>
                                    <td><input class="form-control"  type="file" name="file_content" id="file_content"  placeholder="내용"  accept=".jpg ,.png ,,.pdf">
                                    	<img  id="pre_content" alt="이미지 업로드에 실패하였습니다">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="text-center ">
                            <button type="submit" class="btn btn-outline-secondary">등록</button>
                        </div>

				</form>
				</div>
			</div>

		</div>
</section>


<%@ include file="../include/FOOTER.jsp"%>


<script>

$(function(){
	
	
	function upload() {
		//자바스크립트의 파일 확장자 체크 검색.
		let file = $('#file_url').val();
		
		console.log(file);
		//.을 제거한 확장자만 얻어낸 후 그것을 소문자로 일괄 변경
		file = file.slice(file.indexOf('.') + 1).toLowerCase();
		console.log(file);
		
		//ajax 폼 전송의 핵심 FormData 객체.
		const formData = new FormData();
		const data = $('#file_url');
		
		console.log('폼 데이터: ' + formData);
		console.log('data: ' + data);
		console.log(data[0]); //input type="file" 요소를 지목할 때 사용.
		console.log(data[0].files); //파일 태그에 담긴 파일 정보를 확인하는 키값.
		console.log(data[0].files[0]); //사용자가 등록한 최종 파일 정보
		
		/*
		data[index] -> 파일 업로드 버튼이 여러 개 존재할 경우 요소의 인덱스를 지목해서 가져오는 법.
		우리는 요소를 id로 취득했기 때문에 하나만 찍히지만, class이름 같은 걸로 지목하면 여러 개가 취득되겠죠?
		files[index] -> 파일이 여러 개 전송되는 경우, 몇 번째 파일인지를 지목.
		우리는 multiple 속성을 주지 않았기 때문에 0번 인덱스 밖에 없는 겁니다.
		*/
		
		//FormData 객체에 사용자가 업로드한 파일의 정보가 들어있는 객체를 전달.
		formData.append('file', data[0].files[0]);
		
		//비동기 방식으로 파일 업로드 및 게시글 등록을 진행.
		$.ajax({
			url: '<c:url value="/product/uploadProductImg" />',
			type: 'post',
			data: formData, //폼 데이터 객체를 넘깁니다.
			contentType: false, //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
			processData: false, //폼 데이터를 &변수=값&변수=값... 형식으로 변경되는 것을  막는 요소.
			success: function(result) {
				if(result === 'success') {
					alert('사진 등록이 정상적으러 완료되었습니다.');
				} else {
					alert('업로드에 실패했습니다.');
				}
			},
			error: function(request, status, error) {
				console.log('code: ' + request + '\n message: ' + request.responseText + "\n" + 'error: ' + error);
				alert('업로드에 실패했습니다. 관리자에게 문의 해 주세요.');
			}
			
		}); //end ajax
    	
	} 
	function upload2() {
		//자바스크립트의 파일 확장자 체크 검색.
		let file = $('#file_content').val();
		
		console.log(file);
		//.을 제거한 확장자만 얻어낸 후 그것을 소문자로 일괄 변경
		file = file.slice(file.indexOf('.') + 1).toLowerCase();
		console.log(file);
		
		//ajax 폼 전송의 핵심 FormData 객체.
		const formData = new FormData();
		const data = $('#file_content');
		
		console.log('폼 데이터: ' + formData);
		console.log('data: ' + data);
		console.log(data[0]); //input type="file" 요소를 지목할 때 사용.
		console.log(data[0].files); //파일 태그에 담긴 파일 정보를 확인하는 키값.
		console.log(data[0].files[0]); //사용자가 등록한 최종 파일 정보
		
		/*
		data[index] -> 파일 업로드 버튼이 여러 개 존재할 경우 요소의 인덱스를 지목해서 가져오는 법.
		우리는 요소를 id로 취득했기 때문에 하나만 찍히지만, class이름 같은 걸로 지목하면 여러 개가 취득되겠죠?
		files[index] -> 파일이 여러 개 전송되는 경우, 몇 번째 파일인지를 지목.
		우리는 multiple 속성을 주지 않았기 때문에 0번 인덱스 밖에 없는 겁니다.
		*/
		
		//FormData 객체에 사용자가 업로드한 파일의 정보가 들어있는 객체를 전달.
		formData.append('file', data[0].files[0]);
		
		//비동기 방식으로 파일 업로드 및 게시글 등록을 진행.
		$.ajax({
			url: '<c:url value="/product/uploadProductImg" />',
			type: 'post',
			data: formData, //폼 데이터 객체를 넘깁니다.
			contentType: false, //ajax 방식에서 파일을 넘길 때는 반드시 false로 처리 -> "multipart/form-data"로 선언됨.
			processData: false, //폼 데이터를 &변수=값&변수=값... 형식으로 변경되는 것을  막는 요소.
			success: function(result) {
				if(result === 'success') {
					alert('사진 등록이 정상적으러 완료되었습니다.');
				} else {
					alert('업로드에 실패했습니다.');
				}
			},
			error: function(request, status, error) {
				console.log('code: ' + request + '\n message: ' + request.responseText + "\n" + 'error: ' + error);
				alert('업로드에 실패했습니다. 관리자에게 문의 해 주세요.');
			}
			
		}); //end ajax
    	
	} 
	
	$("#file_url").change(function() {
		upload();
	    readURL(this); //this는 #file자신 태그를 의미
	    
	});
	
	$("#file_content").change(function() {
		upload2();
	    readURL2(this); //this는 #file자신 태그를 의미
	    
	});
	//자바 스크립트 파일 미리보기 기능
	function readURL(input) {
		if (input.files && input.files[0]) {
			
	    	var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
	    	//readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
	    	reader.readAsDataURL(input.files[0]); 
	    	//파일업로드시 화면에 숨겨져있는 클래스fileDiv를 보이게한다
	    	
	    	reader.onload = function(event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
	        	$('#pre').attr("src", event.target.result); 
	        	console.log(event.target)//event.target은 이벤트로 선택된 요소를 의미
	    	}
		}
	}
	function readURL2(input) {
		if (input.files && input.files[0]) {
			
	    	var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
	    	//readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
	    	reader.readAsDataURL(input.files[0]); 
	    	//파일업로드시 화면에 숨겨져있는 클래스fileDiv를 보이게한다
	    	
	    	reader.onload = function(event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
	        	$('#pre_content').attr("src", event.target.result); 
	        	console.log(event.target)//event.target은 이벤트로 선택된 요소를 의미
	    	}
		}
	}
}); //JQuery 종료 



</script>