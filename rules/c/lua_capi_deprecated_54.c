#include <lua.h>
#include <lauxlib.h>

void deprecated_userdata(lua_State *L)
{
	// ruleid: lua_capi_deprecated_54
	lua_newuserdata(L, 4);
	// ruleid: lua_capi_deprecated_54
	lua_getuservalue(L, 1);
	// ruleid: lua_capi_deprecated_54
	lua_setuservalue(L, 1);
}

void modern_userdata(lua_State *L)
{
	// ok: lua_capi_deprecated_54
	lua_newuserdatauv(L, 4, 1);
}

void deprecated_resetthread(lua_State *L)
{
	// ruleid: lua_capi_deprecated_54
	lua_resetthread(L);
}

void deprecated_gc(lua_State *L)
{
	// ruleid: lua_capi_deprecated_54
	lua_gc(L, LUA_GCSETPAUSE, 100);
	// ruleid: lua_capi_deprecated_54
	lua_gc(L, LUA_GCSETSTEPMUL, 100);
}

void modern_gc(lua_State *L)
{
	// ok: lua_capi_deprecated_54
	lua_gc(L, LUA_GCINC);
}
