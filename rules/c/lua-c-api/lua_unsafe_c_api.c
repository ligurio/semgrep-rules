#include <lua.h>
#include <lauxlib.h>

static const char *reader(lua_State *L, void *ud, size_t *sz);

void binary_mode_load(lua_State *L)
{
	// ruleid: lua_unsafe_c_api
	lua_load(L, reader, NULL, "chunk", "b");
}

void text_mode_load(lua_State *L)
{
	// ok: lua_unsafe_c_api
	lua_load(L, reader, NULL, "chunk", "t");
}

void default_mode_load(lua_State *L)
{
	// ruleid: lua_unsafe_c_api
	lua_load(L, reader, NULL, "chunk", NULL);
}

void binary_mode_buffer(lua_State *L)
{
	// ruleid: lua_unsafe_c_api
	luaL_loadbufferx(L, "code", 4, "chunk", "b");
}

void text_mode_buffer(lua_State *L)
{
	// ok: lua_unsafe_c_api
	luaL_loadbufferx(L, "code", 4, "chunk", "t");
}

void binary_mode_file(lua_State *L)
{
	// ruleid: lua_unsafe_c_api
	luaL_loadfilex(L, "file.lua", "b");
}

void text_mode_file(lua_State *L)
{
	// ok: lua_unsafe_c_api
	luaL_loadfilex(L, "file.lua", "t");
}

void unsafe_format(lua_State *L, const char *msg)
{
	// ruleid: lua_unsafe_c_api
	lua_pushfstring(L, msg);
}

void safe_format(lua_State *L)
{
	// ok: lua_unsafe_c_api
	lua_pushfstring(L, "%s", "x");
}

void unsafe_error(lua_State *L, const char *msg)
{
	// ruleid: lua_unsafe_c_api
	luaL_error(L, msg);
}

void safe_error(lua_State *L)
{
	// ok: lua_unsafe_c_api
	luaL_error(L, "%s", "x");
}
