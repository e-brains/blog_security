<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">

	<form>
		<input type="hidden" id="id" value="${board.id}" />
		<div class="form-group">
			<label for="title">Title</label> 
			<input value="${board.title}" type="text" class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">Content:</label>
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>

	</form>

	<!-- jquery를 사용하여 ajax로 통신할때는 form 태그 밖에 놓아야 ajax통신 후 스크립트가 제대로 동작함 -->
	<button id="btn-update" class="btn btn-primary">수정완료</button>

</div>

<!-- summernote 적용  https://summernote.org/getting-started/#for-bootstrap-4 -->
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>

<script src="/js/board.js"></script>

<%@ include file="../layout/footer.jsp"%>
