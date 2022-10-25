package com.luv2code.springdemo.mvc.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = CourseCodeConstraintValidator.class)
@Target({ElementType.METHOD,ElementType.FIELD}) 
// Retent this annotation in the byte code and also use it at RUNTIME by the JVM
@Retention(RetentionPolicy.RUNTIME)
public @interface CourseCode {
	// define default course code
	public String value() default "LUV";
	// define default error message
	public String message() default "must start with LUV";
	// define default group for group constrain together
	public Class<?>[] groups() default{};
	// define default payloads additional information about the validate error
	public Class<? extends Payload>[] payload() default {};
}
