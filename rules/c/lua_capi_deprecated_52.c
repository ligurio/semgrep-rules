#include <lua.h>
#include <lauxlib.h>

void deprecated_length(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	lua_objlen(L, 1);
}

void modern_length(lua_State *L)
{
	// ok: lua_capi_deprecated_52
	lua_rawlen(L, 1);
}

void deprecated_environment(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	lua_getfenv(L, 1);
	// ruleid: lua_capi_deprecated_52
	lua_setfenv(L, 1);
}

void modern_environment(lua_State *L)
{
	// ok: lua_capi_deprecated_52
	lua_getuservalue(L, 1);
	// ok: lua_capi_deprecated_52
	lua_setuservalue(L, 1);
}

void deprecated_register(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	luaL_register(L, "name", NULL);
}

void modern_register(lua_State *L)
{
	// ok: lua_capi_deprecated_52
	luaL_newlib(L, NULL);
}

void deprecated_compare(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	lua_equal(L, 1, 2);
	// ruleid: lua_capi_deprecated_52
	lua_lessthan(L, 1, 2);
}

void deprecated_cpcall(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	lua_cpcall(L, NULL, NULL);
}

void deprecated_typerror(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	luaL_typerror(L, 1, "string");
}

void deprecated_pseudoindices(lua_State *L)
{
	// ruleid: lua_capi_deprecated_52
	lua_gettable(L, LUA_GLOBALSINDEX);
	// ruleid: lua_capi_deprecated_52
	lua_gettable(L, LUA_ENVIRONINDEX);
}
