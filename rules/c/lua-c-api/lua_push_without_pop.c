#include <lua.h>
#include <lauxlib.h>

static int cond;

static int push_return0(lua_State *L)
{
	// ruleid: lua_push_without_pop
	lua_pushstring(L, "x");
	return 0;
}

static int push_return1(lua_State *L)
{
	// ok: lua_push_without_pop
	lua_pushstring(L, "x");
	return 1;
}

static int push_then_consume(lua_State *L)
{
	// ok: lua_push_without_pop
	lua_pushstring(L, "x");
	lua_setglobal(L, "g");
	return 0;
}

static int push_then_pop(lua_State *L)
{
	// ok: lua_push_without_pop
	lua_pushnil(L);
	lua_pop(L, 1);
	return 0;
}

static int push_then_error(lua_State *L)
{
	// ok: lua_push_without_pop
	lua_pushstring(L, "bad argument");
	luaL_error(L, "%s", "bad argument");
	return 0;
}

static int getfield_return0(lua_State *L)
{
	// ruleid: lua_push_without_pop
	lua_getfield(L, 1, "key");
	return 0;
}

static int push_nested_return0(lua_State *L)
{
	if (cond) {
		// ruleid: lua_push_without_pop
		lua_pushnil(L);
	}
	return 0;
}

static void setup_without_return(lua_State *L)
{
	// ok: lua_push_without_pop
	lua_pushnil(L);
}
