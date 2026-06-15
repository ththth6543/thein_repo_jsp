# 📖 JSP & Tomcat 학습용 연습 프로젝트

이 프로젝트는 Apache Tomcat 환경에서 JSP(Java Server Pages)의 기초 태그와 동작 원리를 이해하고 연습하기 위한 개인 학습 프로젝트입니다.

---

## 🛠 개발 환경 및 기술 스택
* **Language:** Java 11+, JSP (Java Server Pages)
* **Web Server:** Apache Tomcat 9.0+
* **Framework / Styling:** Bootstrap 5.3, Material Symbols (Google Icons)
* **IDE / Tooling:** Eclipse (Dynamic Web Project), VS Code

---

## 📂 프로젝트 구조 및 주요 파일

```text
proj_st0615/
├── src/
│   └── main/
│       ├── java/          # Java 소스 코드 (Servlet, Beans 등)
│       └── webapp/        # 웹 리소스 루트 폴더 (브라우저 접근 경로)
│           ├── WEB-INF/   # 외부 직접 접근이 금지된 보안 영역
│           │   └── lib/   # 자바 라이브러리 (.jar)
│           ├── index.html       # 메인 정적 HTML 파일
│           ├── index.jsp        # 메인 동적 JSP 파일
│           ├── welcome.jsp      # 부트스트랩을 활용한 북마켓 메인 화면
│           ├── scripting.jsp    # 스크립트릿, 선언문, 표현식 태그 연습
│           └── declaration02.jsp # 선언문(메서드 선언) 실습
```

---

## 📝 주요 학습 내용

### 1. JSP 기본 스크립트 태그
* **선언문 (Declaration) `<%! %>`**: 멤버 변수와 메서드를 선언할 때 사용합니다.
* **스크립트릿 (Scriptlet) `<% %>`**: 자바 코드를 자유롭게 작성할 수 있는 영역입니다.
* **표현식 (Expression) `<%= %>`**: 변수의 값이나 메서드의 반환값을 화면에 직접 출력할 때 사용합니다.

### 2. Tomcat 서버 경로 바인딩
* 브라우저에서 직접 요청할 수 있는 정적/동적 파일들은 `src/main/webapp` 하위에 직접 위치해야 정상 작동합니다. (`WEB-INF` 내부에 있을 경우 404 에러 발생)

---

## 🚀 실행 방법

### 방법 1 (Eclipse)
1. Eclipse IDE에서 프로젝트(`proj_st0615`)를 가져옵니다.
2. `welcome.jsp` 또는 `index.jsp` 파일을 우클릭한 뒤 **Run As > Run on Server**를 실행합니다.
3. 로컬 호스트 주소로 접속을 확인합니다:
   * URL: `http://localhost:8080/proj_st0615/welcome.jsp`

### 방법 2 (수동 배포)
1. `src/main/webapp` 하위 폴더 내의 파일들을 복사합니다.
2. Apache Tomcat 설치 경로 하위의 `webapps/proj_st0615/` 폴더에 복사한 파일들을 붙여넣습니다.
3. Tomcat을 시작한 뒤 브라우저를 통해 접속합니다.