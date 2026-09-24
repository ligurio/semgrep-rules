-- # ruleid: L1051
math.randomseed()

-- # ok: L1051
math.randomseed(os.time())

-- # ok: L1051
math.randomseed(384)
