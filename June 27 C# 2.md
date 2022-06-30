# Arrays and Strings
1. When to use String vs. StringBuilder in C# ?
* If a string is going to remain constant throughout the program, then use String class object because a String object is immutable.
* If a string can change, then using a StringBuilder is the best option.

2. What is the base class for all arrays in C#?
* The Array class.

3. How do you sort an array in C#?
* Use Array.Sort method.

4. What property of an array object can be used to get the total number of elements in an array?
* Length Property.

5. Can you store multiple data types in System.Array?
* No.

6. What’s the difference between the System.Array.CopyTo() and System.Array.Clone()?
* CopyTo require to have a destination array when Clone return a new array.
* CopyTo let you specify an index (if required) to the destination array.

# Practice Arrays
## 1. Copying an array
```
class CopyArray
{
    static void Main()
    {
        int[] n = new int[10];
        int[] nn = new int[n.Length];

        for (int i = 0; i < 10; i++)
        {
            n[i] = i;
        }
        for(int i = 0; i < 10; i++)
        {
            nn[i] = n[i];
        }

        Console.WriteLine("The original array is:");
        for (int i = 0; i < 10; i++)
        {
            Console.WriteLine(n[i]);
        }
        Console.WriteLine("The copied array is:");
        for (int i = 0; i < 10; i++)
        {
            Console.WriteLine(nn[i]);
        }
    }
}
```


## 2. Manage a list
```
class ManageArray
{
    static void Main()
    {
        while (true)
        {
            Console.WriteLine("Enter command (+ item, - item, or -- to clear):");
            StringBuilder builder = new StringBuilder();
            string UserCommand = Console.ReadLine();
            builder.Append(UserCommand);
            List<string> UserList = new List<string>();


            if (builder[0] == '+')
            {
                UserList.Add(builder.ToString().Remove(0,2));
            }
            if (builder[0] == '-')
            {
                if (builder[1] == '-')
                {
                    UserList.Clear();
                }
                else
                {
                    UserList.Add(builder.ToString(2, 20));
                }
            }
        }
    }
}
```


## 3. Prime Numbers
```
class FindPrime
{

    public static bool IsPrime(int number)
    {
        if (number <= 1) return false;
        if (number == 2) return true;
        if (number % 2 == 0) return false;

        var boundary = (int)Math.Floor(Math.Sqrt(number));

        for (int i = 3; i <= boundary; i += 2)
            if (number % i == 0)
                return false;

        return true;
    }
    static void Main()
    {
        int startNum = int.Parse(Console.ReadLine());
        int endNum = int.Parse(Console.ReadLine());
        string sol = "";
        for (int num = startNum; num <= endNum; num++)
        {
            bool res = IsPrime(num);
            if (res)
            {
                sol = sol + num.ToString()+", ";
            }
        }
        Console.WriteLine(sol);
    }
}
```


## 4. Rotation
```
class Rotation
{
    static void Main()
    {
        string numsstr = Console.ReadLine();   
        string[] nums = numsstr.Split(' ');
        int k = int.Parse(Console.ReadLine());
        var numbers = new List<int>(nums.Length);
        var results = new List<int>(nums.Length);
        for (int i=0; i<nums.Length; i++)
        {
            numbers.Add(int.Parse(nums[i]));
            results.Add(0);
        }

        for (int i = 1; i <= k; i++)
        {
            int last = numbers[nums.Length - 1];
            numbers.RemoveAt(nums.Length - 1);
            //numbers.Add(last);
            numbers.Insert(0, last);
            //Console.WriteLine(String.Join(", ", numbers.ToArray()));
            for (int j = 0; j < numbers.Count; j++)
            {
                //Console.WriteLine(j);
                //Console.WriteLine(numbers[j]);
                results[j] += numbers[j];
            }
        }
        var result = String.Join(", ", results.ToArray());
        Console.WriteLine(result);
    }
}
```


## 5. Longest Sequence
```
class Longest
{
    static void Main()
    {
        string numsstr = Console.ReadLine();
        string[] nums = numsstr.Split(' ');
        int nowlength = 1;
        int maxlength = 1;
        string s = " ";
        for (int i = 0; i < nums.Length-1; i++)
        {
            if (nums[i + 1] == nums[i])
            {
                nowlength++;
                if (nowlength > maxlength)
                {
                    maxlength = nowlength;
                    s = nums[i];
                }
            }
            else
            {
                nowlength = 1;
            }
        }
        Console.WriteLine(string.Concat(Enumerable.Repeat(s, maxlength)));
    }    
}
```


## 6. Most Frequent Number
```
class MostFreq
{
    static void Main()
    {
        string numsstr = Console.ReadLine();
        string[] nums = numsstr.Split(' ');
        var frequency = nums.GroupBy(x => x).ToDictionary(x => x.Key, x => x.Count());
        int maxfreq = 0;
        string maxstr = " ";
        foreach(KeyValuePair<string, int> entry in frequency)
        {
            if (entry.Value > maxfreq)
            {
                maxstr = entry.Key;
                maxfreq = entry.Value;
            }
        }

        Console.WriteLine($"The most frequent element is {maxstr}");
    }    
}
```


# Practice Strings
## 1. a


## 2. a


## 3. a


## 4. a

