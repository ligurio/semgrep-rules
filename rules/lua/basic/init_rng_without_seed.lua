-- ruleid: init_rng_without_seed
math.random()

-- ok: init_rng_without_seed
math.random(os.time())

-- ok: init_rng_without_seed
math.random(384)
