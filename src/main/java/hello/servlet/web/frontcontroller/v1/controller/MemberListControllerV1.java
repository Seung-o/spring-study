package hello.servlet.web.frontcontroller.v1.controller;

import hello.servlet.domain.member.MemberRepository;
import hello.servlet.web.frontcontroller.v1.ControllerV2;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class MemberListControllerV1 implements ControllerV2 {

    private MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("members", memberRepository.findAll());

        String viewPath = "/WEB-INF/views/members.jsp";
        request.getRequestDispatcher(viewPath).forward(request, response);
    }
}
