#include <lua.h>
#include <lauxlib.h>

void zero_index_to_string(lua_State *L)
{
	// ruleid: lua_capi_arg_index
	lua_tostring(L, 0);
}

void zero_index_checkstring(lua_State *L)
{
	// ruleid: lua_capi_arg_index
	luaL_checkstring(L, 0);
}

void zero_index_remove(lua_State *L)
{
	// ruleid: lua_capi_arg_index
	lua_remove(L, 0);
}

void zero_index_getfield(lua_State *L)
{
	// ruleid: lua_capi_arg_index
	lua_getfield(L, 0, "key");
}

void valid_settop(lua_State *L)
{
	// ok: lua_capi_arg_index
	lua_settop(L, 0);
}

void valid_call_nargs(lua_State *L)
{
	// ok: lua_capi_arg_index
	lua_call(L, 0, 0);
}

void valid_push_value(lua_State *L)
{
	// ok: lua_capi_arg_index
	lua_pushinteger(L, 0);
}

void valid_rawgeti_key(lua_State *L)
{
	// ok: lua_capi_arg_index
	lua_rawgeti(L, 1, 0);
}
