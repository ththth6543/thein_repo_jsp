<%@ page pageEncoding="UTF-8"%>
<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=home" />
<header class="pb-3 mb-4 border-bottom">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="./welcome.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <span class="material-symbols-outlined me-2">home</span>
                <span class="fs-4">BookMarket</span>
            </a>
            <ul class="nav nav-pills">
                <li class="nav-item"><a href="./welcome.jsp" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="./books.jsp" class="nav-link">도서 목록</a></li>
                <li class="nav-item"><a href="./addBook.jsp" class="nav-link">도서 등록</a></li>
                <li class="nav-item"><a href="./editBook.jsp?edit=update" class="nav-link">도서 수정</a></li>
                <li class="nav-item"><a href="./editBook.jsp?edit=delete" class="nav-link">도서 삭제</a></li>
            </ul>
        </div>
    </div>
</header>