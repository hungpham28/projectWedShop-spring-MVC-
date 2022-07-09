/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.springwebshop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.mycompany.springwebshop.config.handler.CustomLogoutSuccessHandler;
import com.mycompany.springwebshop.service.ManageAccountService;


/**
 *
 * @author XV
 */
@EnableWebSecurity
public class SpringSecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired 
	private ManageAccountService manageAccountService;
	
	@Autowired
	private LogoutHandler logoutHandler;
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/","/Trangchu","/SignUpIn").permitAll()
                .antMatchers("/Product/**","/User/**").hasRole("CLIENT")
                .anyRequest().authenticated()
                .and()
                .httpBasic();
        http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
        // Cấu hình cho Login Form.
        http.authorizeRequests().and().formLogin()//
       
                // Submit URL của trang login
                .loginProcessingUrl("/j_spring_security_check") // Submit URL
                .loginPage("/SignUpIn")//
                .defaultSuccessUrl("/loginSuccessStatus",true).permitAll()//
                .failureUrl("/SignUpIn?error=true")//
                .usernameParameter("username")//
                .passwordParameter("password")
                
                // Cấu hình cho Logout Page.
                .and().logout().addLogoutHandler(logoutHandler).logoutUrl("/logout").permitAll().logoutSuccessUrl("/")
                .and().csrf().disable();
    }

    @Override
    public void configure(WebSecurity web) {
        web.ignoring().antMatchers("/resources/**");
    }

    @Bean
    @Override
    public UserDetailsService userDetailsService() {
        return new InMemoryUserDetailsManager(manageAccountService.getAllAccount());
    }

}
