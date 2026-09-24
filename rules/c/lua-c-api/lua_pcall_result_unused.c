#include <lua.h>
#include <lauxlib.h>

void ignores_pcall(lua_State *L)
{
	// ruleid: lua_pcall_result_unused
	lua_pcall(L, 0, 0, 0);
}

void ignores_dostring(lua_State *L)
{
	// ruleid: lua_pcall_result_unused
	luaL_dostring(L, "return 1");
}

void checks_pcall(lua_State *L)
{
	// ok: lua_pcall_result_unused
	if (lua_pcall(L, 0, 0, 0) != LUA_OK) {
		return;
	}
}

void stores_pcall(lua_State *L)
{
	int rc;

	// ok: lua_pcall_result_unused
	rc = lua_pcall(L, 0, 0, 0);
	(void)rc;
}

void explicit_ignore(lua_State *L)
{
	// ok: lua_pcall_result_unused
	(void)lua_pcall(L, 0, 0, 0);
}
