/**
 * @description       : Challenge 1
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-22-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/

// Challenge 
//Develop a piece of code to identify if the given number is a mystical number or not
//Mystical number is a number where the sum of the individual digits is equals to multiplication of all the digits in the number e.g. 123 
// number is 3456 if 3+4+5+6 = 3*4*5*6  this is true. if isnot equal this will false.
//Apex write a method to take an integer input and give boolean output


public with sharing class Algo1_Apex {
  
    public static Boolean checkMisstical(Integer Num){
        String strNum=String.valueOf(Num);
        
        List<String> strArray = strNum.split('');

        Integer sumofNum=0;
        Integer mulofNum=1;

        for (String chr:strArray){

            sumofNum+=Integer.valueOf(chr);
            mulofNum*=Integer.valueOf(chr);


        }

        return (sumofNum==mulofNum);
    }
}