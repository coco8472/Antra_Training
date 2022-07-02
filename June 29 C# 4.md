# Generics
1. Describe the problem generics address.
* The basic idea behind using Generic is to allow type (Integer, String, … etc and user-defined types) to be a parameter to methods, classes, and interfaces

2. How would you create a list of strings, using the generic List class?
* var nums = new List<string>();

3. How many generic type parameters does the Dictionary class have?
* Two type parameters. TKey and TValue.

4. True/False. When a generic class has multiple type parameters, they must all match.
* False

5. What method is used to add items to a List object?
* Insert()

6. Name two methods that cause items to be removed from a List.
* RemoveAt(), Remove(), RemoveAll()

7. How do you indicate that a class has a generic type parameter?
* I shall use angle brackets after a type name.

8. True/False. Generic classes can only have one generic type parameter.
* False

9. True/False. Generic type constraints limit what can be used for the generic type.
* True

10. True/False. Constraints let you use the methods of the thing you are constraining to.
* False

# Practice working with Generics
## 1. MyStack
```
class Node
{
    Node next;
    Object data;
}

class Stack
{
    Node Top;
    int len = 0;
    public int Count()
    {
        return len;
    }

    public Node Pop()
    {
        if (Top == null)
            return null;

        Node n = Top;
        Top = Top.Next;
        len--;
        return n;
    }

    public void Push(Object i)
    {
        Node n = new Node(i);
        n.Next = Top;
        Top = n;
        len++;
    }
}  
```

## 2. MyList





## 3. GenericRepository







