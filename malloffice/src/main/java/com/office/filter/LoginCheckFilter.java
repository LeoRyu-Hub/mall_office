package com.office.filter;

import java.io.IOException;

import org.springframework.util.PatternMatchUtils;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {
	private static final String[] whitelist = { "/manager/*", "/assets/*", "/js/*" }; // 필터를 적용하지 않을 url

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		String requestURI = httpRequest.getRequestURI();
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		try {
			if (isLoginCheckPath(requestURI)) {
				HttpSession session = httpRequest.getSession(false);
				if (session == null || session.getAttribute("MANAGER") == null) {
					httpResponse.sendRedirect("/manager/loginPage?url="+requestURI); // 로그인페이지로 돌아가는 리디렉션
					return;

				}
			}
			chain.doFilter(request, response);
		} catch (Exception e) {
			throw e;
		} finally {
		}
	}

	private boolean isLoginCheckPath(String requestURI) {
		return !PatternMatchUtils.simpleMatch(whitelist, requestURI);
	}

}
