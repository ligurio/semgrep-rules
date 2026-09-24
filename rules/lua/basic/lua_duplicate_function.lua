-- # ruleid: lua_duplicate_function
function foo() end
function foo() end -- Duplicate function definition: 'foo' also defined on line 1

-- OK: the functions are not defined in the same scope.
if x then
    function bar() end
else
    function bar() end
end
