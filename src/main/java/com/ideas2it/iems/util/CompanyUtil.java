package com.ideas2it.iems.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.time.Period;


/**
 * Util class to perform some common logical calculations on web application
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */
public final class CompanyUtil {

    
    /**
     * Method to Calculate difference between two provided years with current year
     *
     * @param startDate an initial date for calculating the difference from
     * @return duration year- difference between two years
     */
     public static int differenceCalculator(String startDate) {
     	int duration;
     	LocalDate presentDate;
     	Period durationPeriod;
        LocalDate initialDate = LocalDate.parse(startDate);
        presentDate = LocalDate.now();
        durationPeriod = Period.between(initialDate, presentDate);
        duration = durationPeriod.getYears();
        return duration;
    }
    
    /**
     * Method to Encrypt the plain text into Encrypted hash text  
     *
     * @param plainText text that has to be encrypted
     * @return duration- year difference between two years
     */
    public static String encryptPassword(String plainText) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            byte[] digestedPassword = messageDigest.digest(plainText.getBytes());
            BigInteger number = new BigInteger(1, digestedPassword);
            String hashText = number.toString(16);
            while (hashText.length() < 32) {
                hashText = 0 + hashText;
            }
            return hashText;
        } catch (NoSuchAlgorithmException ex) {
            throw new RuntimeException(ex);
        }    
    }
}
