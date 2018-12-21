package com.amazonaws.lambda.demo;

import com.amazonaws.lambda.demo.input.ConverterInput;
import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class LambdaFunctionHandler implements RequestHandler<ConverterInput, Double> {

	 public final static String lambdaFunctionName = "ConvertMonnaie";
	
    @Override
    public Double handleRequest(ConverterInput input, Context context) {
    	
    	Double prixObtenu = 0.0;
    	
    	switch(input.getDeviseVoulue()) {
    	
    		case "Desertot" :{
    			prixObtenu = input.getPrix() * 0.000001;//car cette monaie vaut beaucoup plus que le bitcoin
    			break;
    		}
    		case "Yen" :{
    			prixObtenu = input.getPrix() * 127.45;
    			break;
    		}
    		case "Dollar" :{
    			prixObtenu = input.getPrix() * 1.14;
    			break;
    		}
    		case "Franc Suisse" :{
    			prixObtenu = input.getPrix() * 1.13;
    			break;
    		}
    	}
    	
    	return prixObtenu;
    }

}
