<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
	.mypageContainer{
		width:1920px;
        display:flex;
        justify-content: space-around;
    }
   	.mypageInnerContainer{
	    width:1024px;
	    align-items:center;
	}
	.mypageEmptyContainer{
		width:1024px;
		height:40px;
	}
    .form-popup {
    	display: none;
    	position: fixed;
    	bottom: 0;
    	right: 15px;
    	border: 3px solid #f1f1f1;
    	z-index: 9;
    }
	.mypageIntro {
  		color: #937062; 
  		font-size: 28px; 
	}
	.btn-group .button {
		width:256px;
		height:56px;
    	background-color:#FFFFFF;
		border: none;
		border-bottom: 1px solid #937062;
    	color: #937062;
  		text-align: center;
		font-size: 19px;
    	float: left;
	}
	.btn-group .button:hover,
	.btn-group .button.active {
		border: 1px solid #937062;
		border-bottom: 1px solid #ffffff;
	}
    .mypageBox{
    	width:1022px;
    	height: auto;
		border: 1px solid #937062;
    	display:flex;
    	flex-wrap: wrap;
    	justify-content: space-around;
    	border-top:1px solid #FFFFFF;
    	border-bottom-left-radius: 0.5%;
    	border-bottom-right-radius: 0.5%;
	}
	.popContentsContainer{
		margin-top: 24px;
		margin-bottom: 8px;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 24px;
		grid-row-gap: 32px;
    	grid-auto-flow: dense;
	}
    .popup {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.5);
    }
    .popup-content {
        background-color: white;
        padding: 20px;
        width:750px;
	    height:400px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
    .close {
    	float: right;
        cursor: pointer;
    }

    input[type="password"] {
        width:527px;
        height:41px; 
        padding: 0px;
        margin-bottom: 10px;
        display: block; 
        margin: 0 auto;
    }
    .yesbutton{
    	width:527px;
		height:41px; 
    	border-radius: 5%;
    	text-align: center;
    	color: #FFFFFF;
    	background-color:#937062;
    	display: block; 
    	margin: 0 auto;
    }
    .recipeCard{
		width: 232px;
		height: 336px;
		border: 1px solid #BDBDBD;
		border-radius: 5px;
		display: flex;
		flex-direction: column;
	}
	.popImg{
		width: 232px;
		height: 232px;
		object-fit: cover;
		overflow: hidden;
		border-radius: 5px 5px 0 0;
	}
	.recpContents{
		margin-top: 4px;
		display: flex;
		flex-direction: column;
		text-align: center;
	}
	.popTitle{
		margin-top: 8px;
		font-size: 16px;
		font-weight: medium;
	}
	.popTime{
		margin-top: 8px;
		font-size: 16px;
		color: #616161;
		font-weight: medium;
	}
	.popCategories{
		margin-top: 8px;
		width: 232px;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	.popCategories > p {
		margin: 0 5px;
		flex-wrap: nowrap;
		font-size: 12px;
		color: #937062;
	}
	.cateType{
		font-size: 12px;
	}
	.like-count{
  		font-size: 16px;
  		color:white;
	}

	.like-icon {
  		width: 20px; 
 		height: 20px;
		margin-right: 5px; 
	}
	.like-container {
		position: absolute;
		bottom: 5px;
		right: 5px;
		display: flex;
		align-items: center;
	}
	.recipeImgContainer{
		width: 232px;
		height: 232px;
		position: relative;
	}
	.commentContentContainer{
		width:232px;
		height:80px;
		display: flex;
		flex-direction: column;
		text-align:left;
	}
	.commentTimeContainer{
		width:232px;
		height:16px;
		display: flex;
		flex-direction: column;
		text-align:right;
	}
	.commentContent{
		margin-top: 8px;
  		font-size: 20px;
		color:#000000;
		word-wrap: break-word; 
	}
	.commentTime{
		color: #616161;
  		font-size: 16px;
	}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="mypageContainer">   
    <div class="mypageInnerContainer">
    	<div class="mypageEmptyContainer"></div>
        <p class="mypageIntro">마이페이지</p>
        <div class="mypageEmptyContainer"></div>
        <div class="btn-group">
            <button class="button">레시피</button>
            <button class="button">좋아요</button>
            <button class="button">댓글</button>
            <button class="button" id="openPopup">회원정보수정</button>
        </div>
        <div class="mypageBox">
        	<div class="popContentsContainer">
				<div class="recipeCard">
					<div class="recipeImgContainer">
						<img src="./image/recipe2.png" alt="" class="popImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">0</span>
  							</div>
					</div>
					<div class="recpContents">
						<p class="popTitle">꼬마김밥</p>
						<p class="popTime">20분</p>
						<div class="popCategories">
							<p>#밥</p>
							<p>#기타</p>
							<p>#채소/과일류</p>
						</div>
					</div>
				</div>
				<div class="recipeCard">
					<div class="recipeImgContainer">
						<img src="./image/recipe1.png" alt="" class="popImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">1000</span>
  							</div>
					</div>
					<div class="commentContentContainer">
						<p class="commentContent">맛이 없어요</p>
					</div>
					<div class="commentTimeContainer">
						<p class="commentTime">2024-03-26</p>
					</div>
				</div>
								<div class="recipeCard">
					<div class="recipeImgContainer">
						<img src="./image/recipe4.png" alt="" class="popImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100000</span>
  							</div>
					</div>
					<div class="recpContents">
						<p class="popTitle">꼬마김밥</p>
						<p class="popTime">20분</p>
						<div class="popCategories">
							<p>#밥</p>
							<p>#기타</p>
							<p>#채소/과일류</p>
						</div>
					</div>
				</div>
								<div class="recipeCard">
					<div class="recipeImgContainer">
						<img src="./image/example.png" alt="" class="popImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">10000</span>
  							</div>
					</div>
					<div class="recpContents">
						<p class="popTitle">꼬마김밥</p>
						<p class="popTime">20분</p>
						<div class="popCategories">
							<p>#밥</p>
							<p>#기타</p>
							<p>#채소/과일류</p>
						</div>
					</div>
				</div>
								<div class="recipeCard">
					<div class="recipeImgContainer">
						<img src="./image/example.png" alt="" class="popImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100</span>
  							</div>
					</div>
					<div class="recpContents">
						<p class="popTitle">꼬마김밥</p>
						<p class="popTime">20분</p>
						<div class="popCategories">
							<p>#밥</p>
							<p>#기타</p>
							<p>#채소/과일류</p>
						</div>
					</div>
				</div>
								<div class="recipeCard">
					<div class="recipeImgContainer">
						<img src="./image/example.png" alt="" class="popImg">
							<div class="like-container">
								<img src="./image/like-heart.png" class="like-icon">
								<span class="like-count">100</span>
  							</div>
					</div>
					<div class="recpContents">
						<p class="popTitle">꼬마김밥</p>
						<p class="popTime">20분</p>
						<div class="popCategories">
							<p>#밥</p>
							<p>#기타</p>
							<p>#채소/과일류</p>
						</div>
					</div>
				</div>
			</div>
    	</div>
	</div>
</div>
<div id="passwordPopup" class="popup">
    <div class="popup-content">
        <span class="close" id="closePopup">&times;</span>
        <div class="">
        	<br><br><h3 style="color: #937062; font-size: 32px; text-align: center;">비밀번호 확인</h3><br>
        	<p style="margin-battom: 20px; font-size: 24px;text-align: center;">비밀번호 확인이 필요한 요청입니다.</p>
        	<p style="margin-battom: 100px; font-size: 24px;text-align: center;">현재 비밀번호를 입력해주세요.</p><br><br>
        	<input type="password" id="passwordInput" placeholder="비밀번호를 입력하세요"><br>
        	<button class="yesbutton" id="closePopup">입력완료</button>
    </div>
</div>
<script>
    document.getElementById('openPopup').addEventListener('click', function() {
        document.getElementById('passwordPopup').style.display = 'block';
    });
    document.getElementById('closePopup').addEventListener('click', function() {
        document.getElementById('passwordPopup').style.display = 'none';
    });
</script>
</body>
</html>