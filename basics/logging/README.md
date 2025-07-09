# Three ways of logging

### Print

The most simple, yet the most useful out of three ways of logging.
Just call print() with some text in it and you're good to go!

> The print function doesn't halt the current running thread, just a simple function to print out some info. Learn more at [Roblox Docs: Lua Globals](https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#print)

---

### Warn

This one is different from print. It prints out text not in white, but yellow(!) to show that it is more important than print.

> Warn doesn't halt the current running thread too. Learn more at [Roblox Docs: Roblox Globals](https://create.roblox.com/docs/reference/engine/globals/RobloxGlobals#warn)

---

### Error

Not recommended in non-protected functions unless you need to use it. Error() prints out text in red, stating there's been an error at some position of the function.

There is 3 levels of error():

1. Level 0 - print out just the error and nothing else.
2. Level 1 - print out the error and traceback. Prints out position of the error line, not everything that called the function, script, etc.
3. Level 2 - print out the error and traceback to everything that called the erroring function.

> Error halts the current running thread and stops the function. The function wont return anything because error() halts and stops everything after it, just like return, but different. Use [protected functions](https://github.com/bacho-development/Luau-For-Teapots/tree/main/basics/functions/protected%20functions) so your script wont halt.