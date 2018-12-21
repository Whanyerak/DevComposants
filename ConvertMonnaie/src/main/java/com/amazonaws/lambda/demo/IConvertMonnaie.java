package com.amazonaws.lambda.demo;

import com.amazonaws.lambda.demo.input.ConverterInput;

public interface IConvertMonnaie {
	public Double lambdaFunction(ConverterInput input);
}
