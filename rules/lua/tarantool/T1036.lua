-- # ruleid: T1036
box.schema.func.create("checkout")

-- # ok: T1036
box.schema.func.create("checkout", {language = "LUA"})
