package com.office;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

import com.office.filter.LoginCheckFilter;

import jakarta.servlet.Filter;

@SpringBootApplication
@EnableScheduling
public class MallofficeApplication {

	public static void main(String[] args) {
		SpringApplication.run(MallofficeApplication.class, args);
	}
	
	@Bean
    public Filter loginCheckFilter() {
        return new LoginCheckFilter();
    }
	
}


