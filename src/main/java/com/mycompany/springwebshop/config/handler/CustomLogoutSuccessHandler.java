package com.mycompany.springwebshop.config.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;

import com.mycompany.springwebshop.model.ClientDTO;
import com.mycompany.springwebshop.service.CartService;

public class CustomLogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler implements LogoutSuccessHandler {
    @Autowired
    private CartService cartService;
	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		ClientDTO client=(ClientDTO) session.getAttribute("client");
//		cartService.saveItemCartList(client.getItemcartList());
//		session.r

		super.onLogoutSuccess(request, response, authentication);
		
	}

}
