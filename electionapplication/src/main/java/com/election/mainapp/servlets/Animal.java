package com.election.mainapp.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;






public class Animal extends HttpServlet {

	public Animal() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String msg = lStrings.getString("http.method_get_not_supported");
//		sendMethodNotAllowed(req, resp, msg);
	}

	public void legs() {
		System.out.println("4 legs");
	}

}
