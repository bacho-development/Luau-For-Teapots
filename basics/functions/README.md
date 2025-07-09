# Functions: basic and nested
### What is what and when do I use them

---

**Lets understand what is a function:**

> In computer programming, a function (also procedure, method, subroutine, routine, or subprogram) is a callable unit of software logic that has a well-defined interface and behavior and can be invoked multiple times.

Taken from: https://en.wikipedia.org/wiki/Function_(computer_programming)

**Less scientific explanation:**

> A function is a part of a code, that is waiting to be "called" to perform what it "should do". Function contains it's own logic, so in some way it's an isolated code.

---

### OK, we understood what is a function. But how do we use it correctly?

It is really easy to use! Let's take functions from our [example](https://github.com/bacho-development/Luau-For-Teapots/tree/main/basics/functions/example.lua) and use them in our examples:

---

1. Example with a function that doesn't return anything:
```lua
abc() -- will print nothing because it doesn't have a print function in it.

print(abc()) -- will print "function" and its memory address because it doesnt return anything.
```

---

2. Example with a function that does return a string:
```lua
magic_word("Byfron") -- will print nothing because we don't call print() before it

print(magic_word("Byfron")) -- "The magic word is Byfron"
```

---

3. Example with a function that prints a string in it:
```lua
fruit("mango") -- "My fruit is a mango"

print(fruit("mango")) -- will print "function" and its memory address because it doesnt return anything.
```

---

4. Example with a function that prints a string and returns it:
```lua
bypassbyfron() -- "bypassing byfron... GET SKIDDED L0L!1!"

print(bypassbyfron()) -- same result ^
```

---

You can also store what a function returns by using either local or global variables:

```lua
local mama = parents("mom") -- stores "nolan's mom" here

print(mama) -- "nolan's mom"
wait(3)
print(mama) -- "nolan's mom"
```

---

You can also call functions inside of functions:

---

```lua
function mycoolfunction()
    local dad = parents("dad")
    local byfron = bypassbyfron2() -- executing solara dll.... adding rat to ur pc... stealing passwords... done!
    execute_my_script() -- "BYE WORLD!"
    return "Hello, "..dad.."!"
end

mycoolfunction() -- what will it print out?
```