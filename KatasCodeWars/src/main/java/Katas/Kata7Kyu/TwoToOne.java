package Katas.Kata7Kyu;

// 7 Kyu Kata CodeWars
// https://www.codewars.com/kata/5656b6906de340bd1b0000ac/train/java
// Take 2 strings s1 and s2 including only letters from ato z. 
//Return a new sorted string, the longest possible, containing distinct letters, 

import java.util.Arrays;

    public class TwoToOne {

        public static String longest(String s1, String s2) {
            String result = "";
            char[] string1 = s1.toCharArray();
            for (char letter : string1) {
                if (result.indexOf(letter) == -1) {
                    result += letter;
                } else
                    ;
            }
            char[] string2 = s2.toCharArray(); 
            for (char letter : string2) {
                if (result.indexOf(letter) == -1) {
                    result += letter;
                }
            }

            char[] ar = result.toCharArray();
            Arrays.sort(ar);
            result = String.valueOf(ar);
            System.out.println(result);
            return result;
        }
    }