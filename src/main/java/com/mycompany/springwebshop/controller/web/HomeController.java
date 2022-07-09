/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.springwebshop.controller.web;

import com.mycompany.springwebshop.entity.ItemCartEntity;
import com.mycompany.springwebshop.model.ClientDTO;
import com.mycompany.springwebshop.model.ProductDTO;
import com.mycompany.springwebshop.model.ShopDTO;
import com.mycompany.springwebshop.service.CartService;
import com.mycompany.springwebshop.service.ClientService;
import com.mycompany.springwebshop.service.OwnerShopService;
import com.mycompany.springwebshop.service.ProductService;
import com.mycompany.springwebshop.until.FormNumber;


import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class HomeController {
    @Autowired
    private ProductService productService;
    
    @Autowired
    private OwnerShopService shopService;
    
    
    @Autowired
    private ClientService clientService;

    @Autowired
    private CartService cartService;
    
    @RequestMapping(value = {"/","/Trangchu"}, method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("Home");
        mav.addObject("shopList",shopService.getShops());
        mav.addObject("itemCart",new ItemCartEntity());
        return mav;
    }

    @RequestMapping(value = "/Product/{id}", method = RequestMethod.GET)
    public ModelAndView detailPage(@PathVariable(value="id") long id) {
        ModelAndView mav = new ModelAndView("Detail");
        ProductDTO product=productService.getProductByID(id);
        mav.addObject("product",product);
      
        mav.addObject("commentList",productService.getCommentList(id));
        return mav;
    }

    @RequestMapping(value = "/SignUpIn", method = RequestMethod.GET)
    public ModelAndView LoginRegistPage() {
        ModelAndView mav = new ModelAndView("SignUp-In/SignUpIn");
	    mav.addObject("user", new ClientDTO());
	    mav.addObject("shop", new ShopDTO());
        return mav;
    }
    @RequestMapping(value = "/loginSuccessStatus", method = RequestMethod.GET)
    public String LoginPage(Authentication authentication,HttpSession session) {
    	String username=authentication.getName();
    	ClientDTO client=clientService.getUserDTOByUsername(username);
    	if(client!=null) {
	    	List<ItemCartEntity> itemList=(List<ItemCartEntity>)clientService.getItemCartList(client.getId());
			client.setItemcartList(itemList);
			long total=0;
			for (ItemCartEntity item: itemList) {
				total+=(item.getQuantity())*Long.parseLong(item.getProduct().getSalePrice());
			}
			client.setSubtotal(Long.toString(total));
			client.setSizeCart(itemList.size());
	    	session.setAttribute("client", client);
    	}
        return "redirect:/Trangchu";
    }
    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String LogoutPage(HttpSession session) {
    	ClientDTO client=(ClientDTO) session.getAttribute("client");
//    	cartService.saveItemCartList(client.getItemcartList());
        return "redirect:/Trangchu";
    }
    @RequestMapping(value = {"/403","/errors"}, method = RequestMethod.GET)
    public String accessDenied() {   
        return "Eror";
    }
    @GetMapping("/User/Cart")
    public ModelAndView CartPage() {
        ModelAndView mav = new ModelAndView("ActionDataPage/Cart");
        mav.addObject("FormNumber",new FormNumber());

        return mav;
    }
    
    @PostMapping(value = {"/","/Trangchu"})
    public String AddItemCart(@ModelAttribute ItemCartEntity itemCart,HttpSession session) {
    	ClientDTO client=(ClientDTO) session.getAttribute("client");
    	List<ItemCartEntity> itemList=client.getItemcartList();
    	for(ItemCartEntity item: itemList) {
    		if(item.getProduct().getId()==itemCart.getProduct().getId() && item.getClient().getId()==itemCart.getClient().getId()) {
    			itemCart.setId(item.getId());
    			itemCart.setQuantity(item.getQuantity()+1);
    			break;
    		}
    	}
    	cartService.saveItemCart(itemCart);
    	itemList=clientService.getItemCartList(client.getId());
    	client.setSizeCart(itemList.size());
    	client.setItemcartList(itemList);
    	session.setAttribute("client", client);
        return "redirect:/Trangchu";
    }
    
    @GetMapping("/User/Cart/update")
    public String ActionCart(@RequestParam(name = "item_Id") int item_Id,@RequestParam(name = "actionCart") String actionCart, HttpSession session) {
    	
    	ClientDTO client=(ClientDTO) session.getAttribute("client");
    	ListIterator<ItemCartEntity> iterator=client.getItemcartList().listIterator();
    	ItemCartEntity item;
	    switch (actionCart) {
		case "remove":
			while (iterator.hasNext()) {
				item = (ItemCartEntity) iterator.next();
				if(item.getId()==item_Id) {
					item.setQuantity(0);
					client.setSizeCart(client.getSizeCart()-1);
					break;
				}
			}
			break;
		case "plus":
			while (iterator.hasNext()) {
				item = (ItemCartEntity) iterator.next();
				if(item.getId()==item_Id) {
					item.setQuantity(item.getQuantity()+1);
					iterator.set(item);
					break;
				}
			}
			break;
		case "minus":
			while (iterator.hasNext()) {
				item = (ItemCartEntity) iterator.next();
				if(item.getId()==item_Id) {
					if(item.getQuantity()<=1) {
						item.setQuantity(0); 
						client.setSizeCart(client.getSizeCart()-1);
						break;
					}else if(item.getQuantity()>1) {
						item.setQuantity(item.getQuantity()-1);
						break;
					}
				}
			}
		default:
			break;
		}
	    session.setAttribute("client", client);
    	return "redirect:/User/Cart";
    }
    @GetMapping("/User/Cart/save")
    public String ActionSaveCart( HttpSession session) {
    	ClientDTO client=(ClientDTO)session.getAttribute("client");
    	cartService.saveItemCartList(client.getItemcartList());
    	return "redirect:/User/Cart";
    }


}
