#include <lua.h>
#include <lauxlib.h>

void deprecated_open(void)
{
	// ruleid: lua_capi_deprecated_51
	lua_State *L = lua_open();
	(void)L;
}

void modern_open(void)
{
	// ok: lua_capi_deprecated_51
	lua_State *L = luaL_newstate();
	(void)L;
}

void deprecated_openlib(lua_State *L)
{
	// ruleid: lua_capi_deprecated_51
	luaL_openlib(L, "name", NULL, 0);
}

void modern_register(lua_State *L)
{
	// ok: lua_capi_deprecated_51
	luaL_register(L, "name", NULL);
}

void deprecated_getn(lua_State *L)
{
	// ruleid: lua_capi_deprecated_51
	luaL_getn(L, 1);
	// ruleid: lua_capi_deprecated_51
	luaL_setn(L, 1, 2);
}

void deprecated_strlen(lua_State *L)
{
	// ruleid: lua_capi_deprecated_51
	lua_strlen(L, 1);
}

void modern_length(lua_State *L)
{
	// ok: lua_capi_deprecated_51
	lua_objlen(L, 1);
}
