package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.office.filter.LoginCheckFilter;

import jakarta.servlet.Filter;

@Configuration
public class FilterConfig {
    @Bean
    public Filter loginCheckFilter() {
        return new LoginCheckFilter();
    }

}

//모든 페이지에 적용하기위한 클래스