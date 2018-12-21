package com.amazonaws.lambda.demo;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.logging.Logger;

import org.junit.Test;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.lambda.demo.input.ConverterInput;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.lambda.AWSLambda;
import com.amazonaws.services.lambda.AWSLambdaClientBuilder;
import com.amazonaws.services.lambda.model.InvokeRequest;
import com.amazonaws.services.lambda.model.InvokeResult;
import com.amazonaws.services.s3.model.Region;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


public class ConvertMonnaie {

	public ConvertMonnaie() {
		super();
	}

	/**
	 * Build an Amazon Web Services Lambda client object.
	 * 
	 * @param accessID The AWS credential ID
	 * @param accessKey The AWS credential secret key
	 * @return An AWS Lambda client
	 */
	private AWSLambda buildClient(String accessID, String accessKey) {
		Regions region = Regions.fromName(Region.US_East_2.toString());
		BasicAWSCredentials credentials = new BasicAWSCredentials(accessID, accessKey);
		AWSLambdaClientBuilder builder = AWSLambdaClientBuilder.standard()
				.withCredentials(new AWSStaticCredentialsProvider(credentials))
				.withRegion(region);
		AWSLambda client = builder.build();
		return client;
	}

	public Double lambdaFunction(ConverterInput input) {
		final String aws_access_key_id = "AKIAI7YXINNSNI5CTHHQ";
		final String aws_secret_access_key = "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";
		final Logger logger = Logger.getLogger( this.getClass().getName() );

		AWSLambda lambdaClient = buildClient(aws_access_key_id, aws_secret_access_key);
		ObjectMapper om = new ObjectMapper();
		String lambdaMessageJSON = "";
		try {
			lambdaMessageJSON = om.writeValueAsString(input);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		InvokeRequest req = new InvokeRequest()
				.withFunctionName("arn:aws:lambda:us-east-2:431061506213:function:ConvertMonnaie")
				.withPayload( lambdaMessageJSON );
		InvokeResult requestResult = lambdaClient.invoke(req);
		ByteBuffer byteBuf = requestResult.getPayload();
		Double d = 0.0;
		if (byteBuf != null) {
			String result = StandardCharsets.UTF_8.decode(byteBuf).toString();
			logger.info("testLambdaFunction::Lambda result: " + result);
			d = Double.parseDouble(result);
		} else {
			logger.severe("testLambdaFunction: result payload is null");
		}
		return d;
	}

}
