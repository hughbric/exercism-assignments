using System;

public static class Pangram
{
    public static bool IsPangram(string input)
    {
        if (input.Contains("abcdefghijklmnopqrstuvwxyz"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
