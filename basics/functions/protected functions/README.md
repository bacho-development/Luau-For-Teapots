# Protected functions: difference between normal functions.

### Imagine your PC: you just downloaded Solara, and you dont know if it's a rat or not, so you make a VM, download Solara there and inject it into Roblox (you got ratted the second you launched it)
Basically, protected functions are the same thing

---

## What protected functions exist?

Read more at [Roblox DevForum](https://devforum.roblox.com/t/pcall-xpcall-and-ypcall-tutorial-how-do-they-work/1417471)

Basically, protected functions create a special environment that can access global variables of the script where it was created and local variables that this function can access. All protected functions do the same, just in their own way.

Every example is [here](https://github.com/bacho-development/Luau-For-Teapots/tree/main/basics/functions/protected%20functions/example.lua)

### pcall()

Pcall is a variation of a protected function without a custom way of handling.

[create.roblox.com:](https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#pcall)
> pcall():
>
> parameters:
>   - func: Function
>   - args: Tuple
>
> returns:
>   - bool
>   - Variant

### xpcall()

Xpcall is a variation of a protected function with a custom way of handling.
Xpcall "err" parameter preserves the traceback, that can be accessed by ```debug.traceback()```

[create.roblox.com:](https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#xpcall)
> xpcall():
>
> parameters:
>   - func: Function
>   - err: Function
>   - args: Tuple
>
> returns:
>   - bool
>   - Variant


### ypcall()

Ypcall is the same as pcall. Pcall wasn't yielding in the past, unlike ypcall, but now pcall yields too, so ypcall is pretty much not useful now.