package com.springbook.view.controller;

import java.util.HashMap;
import java.util.Map;

import com.springbook.view.product.GetProductListController;

public class HandlerMapping {
	private Map<String,Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();
		mappings.put("/getProductList.do", new GetProductListController());
//		mappings.put("/getBoard.do", new GetBoardController());
//		mappings.put("/insertBoard.do", new InsertBoardController());
		mappings.put("/updateBoard.do", new UpdateBoardController());
//		mappings.put("/deleteBoard.do", new DeleteBoardController());
//		mappings.put("/logout.do", new LogoutController());
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
	
}
