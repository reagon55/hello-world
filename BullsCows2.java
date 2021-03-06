package Redbus;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BullsCows2 {

	static String computerNumber;
	static String predict_number;
	static int bulls;
	static int cows;
	static int moves;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
      String randomNumber = getRandomDigitNumber("1234567890");
      // String input = "01234567";//for debugging purpose to check if first character in string is 0
      computerNumber = generateNumber(randomNumber);
      //enter("Generated computer number is : "+computerNumber);//for debugging purpose to print the non repetitive 4 digit number which is generated by computer
      
      
      while(true){
    	  
    	  enter("Type Number :");
          Scanner sc = new Scanner(System.in);
          predict_number = sc.nextLine();
          
          Pattern p = Pattern.compile("[^A-Za-z0-9]");
          Matcher m = p.matcher(predict_number);
          boolean b = m.find();
      if(predict_number.length() == 4 && (b == false) && BullsCows2.uniqueCharacters(predict_number) && (predict_number.matches("[0-9]+"))){
    	  moves++;
    	 for(int i=0;i<=3;i++){
    		 if(predict_number.charAt(i) == computerNumber.charAt(i))
    			 bulls++;
    		 else if(computerNumber.contains(predict_number.charAt(i)+""))
    			 cows++;
    	 }//end of for
    	 if(bulls == 4){
    		 enter("Congratulation ! You win in " + moves + " moves .And you guessed the correct computerNumber which is "+computerNumber);
    		 break;
    	 }else{
    		 enter(" Bulls " + bulls + " cows " +cows);
    	 }
    	 bulls = 0;
    	 cows = 0;
      }else {
    	  enter("Enter only 4 digit unique number ####");
    	  
      }
     }//end of while loop
      
	}//end of main
	
	public static boolean uniqueCharacters(String str)
	{
		
		for (int i=0; i<str.length(); i++)
			for (int j=i+1; j<str.length(); j++)
				if (str.charAt(i) == str.charAt(j))
					return false;
        return true;
	}
	
	private static void enter(String txt) {
		// TODO Auto-generated method stub
		System.out.println(txt);
	}

	private static String generateNumber(String get4digitNumber) {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer();
		String  zero = "0";
		
			if(get4digitNumber.charAt(0) == zero.charAt(0)){
				for(int j=1;j<=4;j++)
			sb.append(get4digitNumber.charAt(j));
				
			}
			else{
				for(int j=0;j<=3;j++)
				sb.append(get4digitNumber.charAt(j));
			}
			
		
		return sb.toString();
	}//end of method generate

	public static String getRandomDigitNumber(String gameInput){
		List<Character> characters = new ArrayList<>();
		
		for(char c : gameInput.toCharArray()){
			characters.add(c);
		}
		StringBuffer output = new StringBuffer(gameInput.length());
		while(characters.size() != 0){
			int randomPicker = (int) (Math.random()*characters.size());
			output.append(characters.remove(randomPicker));
		}
		
		return output.toString();
		
	}//end of getRandom4digitNumber

}
