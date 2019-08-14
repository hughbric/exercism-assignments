using System;

public static class Pangram
{
    public static bool IsPangram(string input)
    {
        for (char letter = 'a'; letter <= 'z'; letter++)
        {
            string lowercaseInput = input.ToLower();
            if (!lowercaseInput.Contains(letter))
            {
                return false;
            }
        }
      return true;
    }
}
