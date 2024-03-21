<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 서블릿에서는 이런식으로 코드를 작성해야한다.
    // Request, Response 객체를 사용 가능하다.
    MemberRepository memberRepository = MemberRepository.getInstance();
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    저장 완료
    <ul>
        <li>username=<%= member.getUsername() %></li>
        <li>age=<%= member.getAge() %></li>
    </ul>
    <a href="/servlet/members">회원 목록 보기</a>
</body>
</html>
