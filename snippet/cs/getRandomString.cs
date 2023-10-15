using System;

Random rand = new Random();
// generate random string with lenght 2 or 3 char
int stringLength = rand.Next(2, 4);
int index;
string str = "";
char letter;

for (int count = 0; count < stringLength; count++)
{
    index = rand.Next(0, 26);
    letter = Convert.ToChar(index + 65);
    str = str + letter;
}
Console.WriteLine(str);

