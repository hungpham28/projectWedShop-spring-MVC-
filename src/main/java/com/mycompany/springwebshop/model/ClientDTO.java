package com.mycompany.springwebshop.model;


import com.mycompany.springwebshop.until.*;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import com.mycompany.springwebshop.entity.ClientEntity;
import com.mycompany.springwebshop.entity.ItemCartEntity;
import com.mycompany.springwebshop.service.ClientService;


public class ClientDTO {

    long id;

    String money;

    String fullName;

    String birthday;

    String address;

    String phone;

    String image;
    
    List<ItemCartEntity> itemcartList;
    String subtotal;
   
    
    
    int sizeCart;
	public ClientDTO(ClientEntity client) {
		if(client!=null) {
			this.setId(client.getId());
			this.setMoney (FormNumber.formMoney(client.getMoney()));
			this.setFullName(client.getFullName());
			this.setBirthday(client.getBirthday());
			this.setAddress(client.getAddress());
			this.setPhone(client.getPhone());
			this.setImage(client.getImage());
		}
	}

	public ClientDTO() {
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}


	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public List<ItemCartEntity> getItemcartList() {
		return itemcartList;
	}

	public void setItemcartList(List<ItemCartEntity> itemcartList) {
		this.itemcartList = itemcartList;
	}

	
	public void setSizeCart(int sizeCart) {
		this.sizeCart = sizeCart;
	}

	public int getSizeCart() {
		return sizeCart;
	}
	
	public String getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}


    
    
}
