/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.springwebshop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.mycompany.springwebshop.entity.ClientEntity;
import com.mycompany.springwebshop.entity.ItemCartEntity;
import com.mycompany.springwebshop.model.ClientDTO;
import com.mycompany.springwebshop.repository.ClientRepository;

/**
 *
 * @author Admin
 */
@Service
public class ClientService {
	@Autowired
	private ClientRepository clientRepository;
	
	public  ClientDTO getUserDTOByUsername(String username) {
		ClientEntity client=clientRepository.findByUser(username);
		if(client!=null) {
			return new ClientDTO(client);
		}
		return null;
	}
	

    public List<UserDetails> getAllAccountOfShop(){
    	List<UserDetails> accountList=new ArrayList<UserDetails>();
    	clientRepository.findAllAccount().forEach(objects -> accountList.add(
    		User.withDefaultPasswordEncoder()
                .username(objects[0].toString())
                .password(objects[1].toString())
                .roles("CLIENT")
                .build()));
    	return accountList;
    }
    public List<ItemCartEntity> getItemCartList(long id){
    	try {
			return  clientRepository.findByIdAndFetchItemcartListEager(id).getItemcartList();
		} catch (Exception e) {
			return null;
			// TODO: handle exception
		}
    }
}
