-- ruleid: init_rng_without_seed
math.randomseed()

-- ok: init_rng_without_seed
math.randomseed(os.time())

-- ok: init_rng_without_seed
math.randomseed(384)
