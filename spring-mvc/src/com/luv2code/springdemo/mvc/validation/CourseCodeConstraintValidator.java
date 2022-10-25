package com.luv2code.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator 
		implements ConstraintValidator<CourseCode, String>{
	
	private String couresePrefix;
	@Override
	public void initialize(CourseCode theCourseCode) {
		couresePrefix = theCourseCode.value();
	}
	
	// Business logic return true or false if the given string validates
	// The code HTML Form Data entered by user
	@Override 
	public boolean isValid(String theCode, ConstraintValidatorContext theConstraintValidatorContext) {
		boolean result;
		
		if(theCode !=null) {
			result = theCode.startsWith(couresePrefix);
		}else {
			result = true;
		}
		return result;
		
		
	}
	
}
