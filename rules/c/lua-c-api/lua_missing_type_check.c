#include <lua.h>
#include <lauxlib.h>

static void use(const char *s);
static void use_int(lua_Integer n);
static void use_ptr(void *p);

void unchecked_string(lua_State *L)
{
	// ruleid: lua_missing_type_check
	const char *s = lua_tostring(L, 1);
	use(s);
}

void guarded_by_isstring(lua_State *L)
{
	if (lua_isstring(L, 1)) {
		// ok: lua_missing_type_check
		use(lua_tostring(L, 1));
	}
}

void guarded_by_early_return(lua_State *L)
{
	if (!lua_isstring(L, 1))
		return;
	// ok: lua_missing_type_check
	const char *s = lua_tostring(L, 1);
	use(s);
}

void guarded_by_lua_type(lua_State *L)
{
	if (lua_type(L, 1) == LUA_TSTRING) {
		// ok: lua_missing_type_check
		use(lua_tostring(L, 1));
	}
}

void guarded_by_checkstring(lua_State *L)
{
	luaL_checkstring(L, 1);
	// ok: lua_missing_type_check
	const char *s = lua_tostring(L, 1);
	use(s);
}

void unchecked_wrong_index(lua_State *L)
{
	if (lua_isstring(L, 1))
		use(NULL);
	// ruleid: lua_missing_type_check
	const char *s = lua_tostring(L, 2);
	use(s);
}

void unchecked_number(lua_State *L)
{
	// ruleid: lua_missing_type_check
	lua_Integer n = lua_tointeger(L, 2);
	use_int(n);
}

void guarded_number(lua_State *L)
{
	if (lua_isnumber(L, 2)) {
		// ok: lua_missing_type_check
		use_int(lua_tointeger(L, 2));
	}
}

void unchecked_userdata(lua_State *L)
{
	// ruleid: lua_missing_type_check
	void *p = lua_touserdata(L, 1);
	use_ptr(p);
}

void guarded_userdata(lua_State *L)
{
	if (luaL_testudata(L, 1, "mytype")) {
		// ok: lua_missing_type_check
		use_ptr(lua_touserdata(L, 1));
	}
}

void unchecked_getfield(lua_State *L)
{
	// ruleid: lua_missing_type_check
	lua_getfield(L, 1, "key");
	lua_pop(L, 1);
}

void guarded_getfield_checktype(lua_State *L)
{
	luaL_checktype(L, 1, LUA_TTABLE);
	// ok: lua_missing_type_check
	lua_getfield(L, 1, "key");
	lua_pop(L, 1);
}

void guarded_getfield_istable(lua_State *L)
{
	if (lua_istable(L, 1)) {
		// ok: lua_missing_type_check
		lua_getfield(L, 1, "key");
		lua_pop(L, 1);
	}
}

void not_an_api_conversion(lua_State *L)
{
	// ok: lua_missing_type_check
	lua_pushstring(L, "hello");
}

void checkstring_without_to(lua_State *L)
{
	// ok: lua_missing_type_check
	const char *s = luaL_checkstring(L, 1);
	use(s);
}
