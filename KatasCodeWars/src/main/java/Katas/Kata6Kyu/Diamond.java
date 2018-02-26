package Katas.Kata6Kyu;

// 6 Kyu Kata CodeWars
//https://www.codewars.com/kata/give-me-a-diamond/train/java
// Print a Diamond

class Diamond {
    public static String print(int n) {
        String result = "";
      if ( n%2 == 0 ) {
        return null;
    } else {
       
        int size = n,odd = 1, nos = size/2; 
            for (int i = 1; i <= size; i++) { 
              for (int k = nos; k >= 1; k--) { 
                  System.out.print(" ");
                  result += " ";
              }
              for (int j = 1; j <= odd; j++) { 
                  System.out.print("*");
                  result += "*";

              }
              System.out.println();
              if (i < size/2+1) {
                  odd += 2;  
                  nos -= 1; 
              } else {
                  odd -= 2; 
                  nos += 1;
              }
            }  
        } return result;
    }
}
