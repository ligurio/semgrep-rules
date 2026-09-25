#include <lua.h>
#include <lauxlib.h>

void deprecated_length(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_objlen(L, 1);
}

void modern_length(lua_State *L)
{
	// ok: lua_capi_deprecated
	lua_rawlen(L, 1);
}

void deprecated_strlen(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_strlen(L, 1);
}

void deprecated_environment(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_getfenv(L, 1);
	// ruleid: lua_capi_deprecated
	lua_setfenv(L, 1);
}

void deprecated_register(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	luaL_register(L, "name", NULL);
}

void modern_register(lua_State *L)
{
	// ok: lua_capi_deprecated
	luaL_newlib(L, NULL);
}

void deprecated_open(void)
{
	// ruleid: lua_capi_deprecated
	lua_State *L = lua_open();
	(void)L;
}

void deprecated_compare(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_equal(L, 1, 2);
	// ruleid: lua_capi_deprecated
	lua_lessthan(L, 1, 2);
}

void deprecated_cpcall(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_cpcall(L, NULL, NULL);
}

void deprecated_integer(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	luaL_checkint(L, 1);
	// ruleid: lua_capi_deprecated
	luaL_checklong(L, 1);
	// ruleid: lua_capi_deprecated
	luaL_optint(L, 1, 0);
	// ruleid: lua_capi_deprecated
	luaL_optlong(L, 1, 0);
}

void deprecated_unsigned(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_pushunsigned(L, 1);
	// ruleid: lua_capi_deprecated
	lua_tounsigned(L, 1);
	// ruleid: lua_capi_deprecated
	luaL_checkunsigned(L, 1);
	// ruleid: lua_capi_deprecated
	luaL_optunsigned(L, 1, 0);
}

void deprecated_misc(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	luaL_typerror(L, 1, "string");
	// ruleid: lua_capi_deprecated
	luaL_getn(L, 1);
	// ruleid: lua_capi_deprecated
	luaL_setn(L, 1, 2);
	// ruleid: lua_capi_deprecated
	lua_setlevel(L, L);
}

void deprecated_userdata(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_newuserdata(L, 4);
	// ruleid: lua_capi_deprecated
	lua_getuservalue(L, 1);
	// ruleid: lua_capi_deprecated
	lua_setuservalue(L, 1);
}

void deprecated_resetthread(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_resetthread(L);
}

void deprecated_gc(lua_State *L)
{
	// ruleid: lua_capi_deprecated
	lua_gc(L, LUA_GCSETPAUSE, 100);
	// ruleid: lua_capi_deprecated
	lua_gc(L, LUA_GCSETSTEPMUL, 100);
}

void modern_gc(lua_State *L)
{
	// ok: lua_capi_deprecated
	lua_gc(L, LUA_GCINC);
}
