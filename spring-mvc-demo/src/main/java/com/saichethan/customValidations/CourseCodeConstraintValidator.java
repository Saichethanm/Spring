package com.saichethan.customValidations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    private String coursePrefix;

    @Override
    public void initialize(CourseCode theCourseCode) {
//        ConstraintValidator.super.initialize(constraintAnnotation);
        coursePrefix = theCourseCode.value();
    }

    @Override
    public boolean isValid(String theCode, ConstraintValidatorContext constraintValidatorContext) {

        //the code is the text, user entered in the html form
        //the second parameter is used to give additional error messages if needed.

        boolean result;

        if(theCode == null)
            return false;
        else
            return theCode.startsWith(coursePrefix);

//        return result;
    }
}
