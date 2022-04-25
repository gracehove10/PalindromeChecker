public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  word.toLowerCase();
  String s = "";
for(int i = 0; i<word.length(); i++){
  
  char c = word.charAt(i);
  if(c  !=' '){
    
   s += c; 
  }
  s = word;
}
  String backwards = "";
  for(int i = word.length()-1; i>=0;i--)
  {
    backwards+= word.charAt(i);
    
  }
  if(backwards.equals(word)){
   return true; 
  }
  return false;
}
