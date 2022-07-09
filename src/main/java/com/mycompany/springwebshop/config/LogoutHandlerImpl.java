package com.mycompany.springwebshop.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;

import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Component;

import com.mycompany.springwebshop.model.ClientDTO;
import com.mycompany.springwebshop.service.CartService;
@Component
public class LogoutHandlerImpl implements LogoutHandler{

    @Autowired
    private CartService cartService;

	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
		HttpSession session=request.getSession();
		ClientDTO client=(ClientDTO)session.getAttribute("client");
			cartService.saveItemCartList(client.getItemcartList());

	}

}
