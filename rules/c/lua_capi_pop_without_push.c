#include <lua.h>
#include <lauxlib.h>

static int cond;

void pop_without_push(lua_State *L)
{
	// ruleid: lua_capi_pop_without_push
	lua_pop(L, 1);
}

void pop_after_push(lua_State *L)
{
	lua_pushstring(L, "x");
	// ok: lua_capi_pop_without_push
	lua_pop(L, 1);
}

void pop_after_nested_push(lua_State *L)
{
	if (cond) {
		lua_pushnil(L);
	}
	// ok: lua_capi_pop_without_push
	lua_pop(L, 1);
}

void pop_after_gettop(lua_State *L)
{
	// ok: lua_capi_pop_without_push
	lua_pop(L, lua_gettop(L));
}

void settop_reset(lua_State *L)
{
	// ok: lua_capi_pop_without_push
	lua_settop(L, 0);
}

void settop_pop(lua_State *L)
{
	// ruleid: lua_capi_pop_without_push
	lua_settop(L, -2);
}

void remove_without_push(lua_State *L)
{
	// ruleid: lua_capi_pop_without_push
	lua_remove(L, 1);
}

void setfield_without_push(lua_State *L)
{
	// ruleid: lua_capi_pop_without_push
	lua_setfield(L, 1, "key");
}

void setfield_after_push(lua_State *L)
{
	lua_pushinteger(L, 1);
	// ok: lua_capi_pop_without_push
	lua_setfield(L, 1, "key");
}

void concat_without_push(lua_State *L)
{
	// ruleid: lua_capi_pop_without_push
	lua_concat(L, 2);
}

void call_without_push(lua_State *L)
{
	// ruleid: lua_capi_pop_without_push
	lua_call(L, 0, 0);
}
