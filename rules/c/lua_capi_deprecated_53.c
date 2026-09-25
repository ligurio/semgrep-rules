#include <lua.h>
#include <lauxlib.h>

void deprecated_unsigned(lua_State *L)
{
	// ruleid: lua_capi_deprecated_53
	lua_pushunsigned(L, 1);
	// ruleid: lua_capi_deprecated_53
	lua_tounsigned(L, 1);
	// ruleid: lua_capi_deprecated_53
	luaL_checkunsigned(L, 1);
	// ruleid: lua_capi_deprecated_53
	luaL_optunsigned(L, 1, 0);
}

void deprecated_integer_aliases(lua_State *L)
{
	// ruleid: lua_capi_deprecated_53
	luaL_checkint(L, 1);
	// ruleid: lua_capi_deprecated_53
	luaL_checklong(L, 1);
	// ruleid: lua_capi_deprecated_53
	luaL_optint(L, 1, 0);
	// ruleid: lua_capi_deprecated_53
	luaL_optlong(L, 1, 0);
}

void modern_integer(lua_State *L)
{
	// ok: lua_capi_deprecated_53
	lua_Integer n = luaL_checkinteger(L, 1);
	(void)n;
}

void deprecated_getctx(lua_State *L)
{
	// ruleid: lua_capi_deprecated_53
	lua_getctx(L, NULL);
}
