local function print_str(self)
    print(self.str)
end

local function new()
    return {
        str = "Hello, world!"
    }
end

local object = new()
object:print_str() --> Hello, world!

-- ok: pcall_with_method
pcall(object.print_str, object)
