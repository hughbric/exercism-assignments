using System;

public static class TwoFer
{
    public static string Speak(string name = "")
    {
        return $"One for {(string.IsNullOrEmpty(name) ? "you" : name)}, one for me.";
    }
}
