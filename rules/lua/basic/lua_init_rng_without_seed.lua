-- ruleid: lua_init_rng_without_seed
math.randomseed()

-- ok: lua_init_rng_without_seed
math.randomseed(os.time())

-- ok: lua_init_rng_without_seed
math.randomseed(384)
