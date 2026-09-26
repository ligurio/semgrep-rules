## semgrep rules

This repo holds patterns for finding non-determinism and missed error handling
in C, Python and Go source code, and rules for Lua source code.

The rules currently supports [semgrep](https://semgrep.dev/) and
[coccinelle](https://coccinelle.gitlabpages.inria.fr/website/).

To run a single semgrep rule:

```
$ semgrep -f rules/<lang>/<rule>.yml .
```

To run all semgrep rules:

```
$ semgrep --config rules/<lang>/
```

Rules marked with `severity: INFO` are heuristics that may report false
positives. To see only actionable findings, filter them out:

```
$ semgrep --config rules/<lang>/ --severity ERROR --severity WARNING .
```

To run a single coccinelle rule:

```
$ spatch --sp-file coccinelle/mmap_map_failed.cocci --very-quiet --dir ~/sources/tarantool/src/
```

### C

| ID | Description |
| -- | ----------- |
| [libc_clock](rules/c/libc_clock.yaml) | Using CLOCK_REALTIME clock affected by leap seconds. |
| [lua_capi_arg_index](rules/c/lua_capi_arg_index.yaml) | Lua C API call with a literal zero stack index. |
| [lua_capi_deprecated_51](rules/c/lua_capi_deprecated_51.yaml) | Using Lua C API function(s) deprecated in Lua 5.1. |
| [lua_capi_deprecated_52](rules/c/lua_capi_deprecated_52.yaml) | Using Lua C API function(s) deprecated in Lua 5.2. |
| [lua_capi_deprecated_53](rules/c/lua_capi_deprecated_53.yaml) | Using Lua C API function(s) deprecated in Lua 5.3. |
| [lua_capi_deprecated_54](rules/c/lua_capi_deprecated_54.yaml) | Using Lua C API function(s) deprecated in Lua 5.4. |
| [lua_capi_missing_type_check](rules/c/lua_capi_missing_type_check.yaml) | Lua C API call without a prior argument type check. |
| [lua_capi_pcall_result_unused](rules/c/lua_capi_pcall_result_unused.yaml) | Result of a protected call is ignored. |
| [lua_capi_pop_without_push](rules/c/lua_capi_pop_without_push.yaml) | Consuming a Lua stack value without a preceding push. |
| [lua_capi_push_without_pop](rules/c/lua_capi_push_without_pop.yaml) | Pushing a Lua stack value that is never consumed. |
| [lua_capi_unsafe](rules/c/lua_capi_unsafe.yaml) | Using unsafe Lua C API function(s). |
| [tarantool_deprecated_c_api](rules/c/tarantool_deprecated_c_api.yaml) | Using deprecated C/C++ function(s). |

### Lua

| ID | Description |
| -- | ----------- |
| L1001 ([rule][L1001-rule], [desc][L1001-desc]) | Global `unpack()` was removed in Lua 5.2. |
| L1002 ([rule][L1002-rule], [desc][L1002-desc]) | Writing to a built-in global. |
| L1003 ([rule][L1003-rule], [desc][L1003-desc]) | Using index `0` in tables. |
| L1004 ([rule][L1004-rule], [desc][L1004-desc]) | Using `#` for a table length. |
| L1010 ([rule][L1010-rule], [desc][L1010-desc]) | Comparing tables, functions and coroutines by reference. |
| L1014 ([rule][L1014-rule], [desc][L1014-desc]) | `setfenv()`, `getfenv()` and `loadstring()` were removed in Lua 5.2. |
| L1015 ([rule][L1015-rule], [desc][L1015-desc]) | Comparing floating-point numbers for equality. |
| L1021 ([rule][L1021-rule], [desc][L1021-desc]) | Recursion that is not a proper tail call. |
| L1022 ([rule][L1022-rule], [desc][L1022-desc]) | `module()` was removed in Lua 5.2. |
| L1023 ([rule][L1023-rule], [desc][L1023-desc]) | `table.maxn()`, `table.foreach()` and `table.foreachi()` were removed in Lua 5.2. |
| L1024 ([rule][L1024-rule], [desc][L1024-desc]) | `math.log10()` and `math.mod()` were removed in Lua 5.2. |
| L1025 ([rule][L1025-rule], [desc][L1025-desc]) | `math.pow()`, `math.atan2()` and hyperbolic functions were removed in Lua 5.4. |
| L1026 ([rule][L1026-rule], [desc][L1026-desc]) | The `bit32` library was removed in Lua 5.4. |
| L1032 ([rule][L1032-rule], [desc][L1032-desc]) | Misleading `and` and `or`. |
| L1041 ([rule][L1041-rule], [desc][L1041-desc]) | Operator precedence of comparisons. |
| L1042 ([rule][L1042-rule], [desc][L1042-desc]) | Use `pcall(self.func, self)`. |
| L1043 ([rule][L1043-rule], [desc][L1043-desc]) | Ignoring `pcall` results handling. |
| L1044 ([rule][L1044-rule], [desc][L1044-desc]) | Assigning to a loop variable does not modify the collection. |
| L1045 ([rule][L1045-rule], [desc][L1045-desc]) | Incorrect `for` bounds. |
| L1046 ([rule][L1046-rule], [desc][L1046-desc]) | Writing to a file opened in read-only mode. |
| L1047 ([rule][L1047-rule], [desc][L1047-desc]) | Using a file handle after `close()`. |
| L1048 ([rule][L1048-rule], [desc][L1048-desc]) | An unclosed file leaks a descriptor. |
| L1049 ([rule][L1049-rule], [desc][L1049-desc]) | `print()` on a table or function prints an address. |
| L1050 ([rule][L1050-rule], [desc][L1050-desc]) | Using unsafe functions (`load`, `os.execute`, `io.popen`). |
| L1051 ([rule][L1051-rule], [desc][L1051-desc]) | `math.random()` is used without a random seed. |
| L1052 ([rule][L1052-rule], [desc][L1052-desc]) | Unbalanced assignment fills missing values with `nil`. |
| L1053 ([rule][L1053-rule], [desc][L1053-desc]) | A local declared without a value is `nil`. |
| L1054 ([rule][L1054-rule], [desc][L1054-desc]) | Code after `error()` is unreachable. |
| L1055 ([rule][L1055-rule], [desc][L1055-desc]) | Duplicate keys in a table constructor. |
| L1056 ([rule][L1056-rule], [desc][L1056-desc]) | `require()` is used inside a function. |
| L1059 ([rule][L1059-rule], [desc][L1059-desc]) | A null `cdata` compares equal to `nil` but is truthy. |
| L1061 ([rule][L1061-rule], [desc][L1061-desc]) | Integer literals that lose precision or wrap around. |
| L1062 ([rule][L1062-rule], [desc][L1062-desc]) | `math.*` does not accept `cdata`. |
| L1063 ([rule][L1063-rule], [desc][L1063-desc]) | `__pairs` and `__ipairs` are ignored in LuaJIT. |
| L1065 ([rule][L1065-rule], [desc][L1065-desc]) | The FFI bypasses Lua's memory safety. |
| L1074 ([rule][L1074-rule], [desc][L1074-desc]) | Redeclaring a local silently shadows the previous one. |
| L1087 ([rule][L1087-rule], [desc][L1087-desc]) | An out-of-range number passed where an integer is expected. |
| L1093 ([rule][L1093-rule], [desc][L1093-desc]) | Using `ffi.stash`. |
| L1057 ([rule][L1057-rule], [desc][L1057-desc]) | Using a `cdata` object as a key in a table. |
| L1058 ([rule][L1058-rule], [desc][L1058-desc]) | Function is not JIT-compiled under LuaJIT. |
| T1003 ([rule][T1003-rule], [desc][T1003-desc]) | A `__gc` callback must not yield. |
| T1004 ([rule][T1004-rule], [desc][T1004-desc]) | Timeout is not set. |
| T1005 ([rule][T1005-rule], [desc][T1005-desc]) | Socket bind to `0.0.0.0` or `::`. |
| T1006 ([rule][T1006-rule], [desc][T1006-desc]) | Method `:json()` can raise an error. |
| T1007 ([rule][T1007-rule], [desc][T1007-desc]) | Certificate validation is disabled. |
| T1008 ([rule][T1008-rule], [desc][T1008-desc]) | Using insecure hash algorithm. |
| T1009 ([rule][T1009-rule], [desc][T1009-desc]) | Shell is enabled in `popen`. |
| T1010 ([rule][T1010-rule], [desc][T1010-desc]) | Insert a `nil` to a space. |
| T1011 ([rule][T1011-rule], [desc][T1011-desc]) | `box.once()` and `set_trigger()` apply their effect only once. |
| T1012 ([rule][T1012-rule], [desc][T1012-desc]) | A space created without a format has no field names. |
| T1013 ([rule][T1013-rule], [desc][T1013-desc]) | Using `nil` in `:select()`. |
| T1014 ([rule][T1014-rule], [desc][T1014-desc]) | Option `if_not_exists` is missed. |
| T1015 ([rule][T1015-rule], [desc][T1015-desc]) | Raw access to a `box.cfg` table. |
| T1016 ([rule][T1016-rule], [desc][T1016-desc]) | Full access for the guest user to the universe. |
| T1017 ([rule][T1017-rule], [desc][T1017-desc]) | Bad file permissions. |
| T1018 ([rule][T1018-rule], [desc][T1018-desc]) | File descriptor leaks. |
| T1019 ([rule][T1019-rule], [desc][T1019-desc]) | Using a file descriptor after close. |
| T1020 ([rule][T1020-rule], [desc][T1020-desc]) | Writing to a file opened with read-only mode. |
| T1021 ([rule][T1021-rule], [desc][T1021-desc]) | The Unix socket path length is exceeded. |
| T1022 ([rule][T1022-rule], [desc][T1022-desc]) | A bad hash function is used to compute `bucket_id`. |
| T1023 ([rule][T1023-rule], [desc][T1023-desc]) | Fiber name or `fiber.testcancel()` is missed. |
| T1024 ([rule][T1024-rule], [desc][T1024-desc]) | A test title without the `test_` prefix does not run. |
| T1025 ([rule][T1025-rule], [desc][T1025-desc]) | Database object names have loose but inconvenient rules. |
| T1026 ([rule][T1026-rule], [desc][T1026-desc]) | Using deprecated Tarantool Lua function(s). |
| T1027 ([rule][T1027-rule], [desc][T1027-desc]) | `box.NULL` is truthy but compares equal to `nil`. |
| T1029 ([rule][T1029-rule], [desc][T1029-desc]) | Lua errors are strings, `box.error` values are `cdata` with `unpack()`. |
| T1031 ([rule][T1031-rule], [desc][T1031-desc]) | Lua coroutines are not Tarantool fibers. |
| T1032 ([rule][T1032-rule], [desc][T1032-desc]) | `io.*` blocks the event loop; use `fio.*`. |
| T1033 ([rule][T1033-rule], [desc][T1033-desc]) | Fiber yield is missed. |
| T1034 ([rule][T1034-rule], [desc][T1034-desc]) | Allocation churn stresses the GC and the transaction thread. |
| T1036 ([rule][T1036-rule], [desc][T1036-desc]) | `box.schema.func.create` calls have no declared type contract. |
| T1037 ([rule][T1037-rule], [desc][T1037-desc]) | Space operations return `nil, err` instead of raising. |
| T1042 ([rule][T1042-rule], [desc][T1042-desc]) | Using the builtin `assert()` in a luatest test. |
| T1043 ([rule][T1043-rule], [desc][T1043-desc]) | Parametrizing luatest tests with a loop. |
| T1044 ([rule][T1044-rule], [desc][T1044-desc]) | `fiber.yield()` and `fiber.sleep()` can fail. |
| T1045 ([rule][T1045-rule], [desc][T1045-desc]) | The `'A'` format specifier must be the last item in `pickle.unpack()`. |
| T1046 ([rule][T1046-rule], [desc][T1046-desc]) | `tonumber64()` may return `cdata` and has platform-specific behavior. |

### Flakiness

Non-determinism is a source of test flakiness.

<details>
  <summary>References</summary>

- **An empirical analysis of flaky tests** - Qingzhou  Luo, Farah  Hariri, Lamyaa  Eloussi, Darko  Marinov
- **Empirical Analysis of Factors and their Effect on Test Flakiness - Practitioners’ Perceptions** - Azeem Ahmad, Ola Leifler, Kristian Sandahl
- **Root Causing Flaky Tests in a Large-Scale Industrial Setting** - Wing Lam, Patrice Godefroid, Suman Nath, Anirudh Santhiar, Suresh Thummalapenta
- **What is the Vocabulary of Flaky Tests?** - Gustavo Pinto, Breno Miranda, Supun Dissanayake, Marcelo d'Amorim, Christoph Treude, Antonia Bertolino
- **Eradicating Non-Determinism in Tests** - Martin Fowler

</details>

### Error handling

Error handling is importance for application reliability. Nice description was
given by [Dan Luu](https://danluu.com/postmortem-lessons/):

> Proper error handling code is hard. Bugs in error handling code are a major cause of bad problems. This means that the probability of having sequential bugs, where an error causes buggy error handling code to run, isn't just the independent probabilities of the individual errors multiplied. It's common to have cascading failures cause a serious outage. There's a sense in which this is obvious -- error handling is generally regarded as being hard. If I mention this to people they'll tell me how obvious it is that a disproportionate number of serious postmortems come out of bad error handling and cascading failures where errors are repeatedly not handled correctly. But despite this being “obvious”, it's not so obvious that sufficient test and static analysis effort are devoted to making sure that error handling works.

See also [Aspirator](https://github.com/diy1/aspirator), a simple tool that
finds serious bugs in Java exception handler.

<details>
  <summary>References</summary>

- **The Do's and Don'ts of Error Handling** - Joe Armstrong (GOTO 2018)
- **Finding Error-Handling Bugs in Systems Code Using Static Analysis** - Cindy Rubio-González, Ben Liblit
- **Simple Testing Can Prevent Most Critical Failures: An Analysis of Production Failures in Distributed Data-Intensive Systems** - Ding Yuan, Yu Luo, Xin Zhuang, Guilherme Renna Rodrigues, Xu Zhao, Yongle Zhang, Pranay U. Jain, and Michael Stumm, University of Toronto (USENIX)
- **Improving the Quality of Error-Handling Code in Systems Software using Function-Local Information** - Suman Saha
- **Static test flakiness prediction: How Far Can We Go?**,
  https://link.springer.com/article/10.1007/s10664-022-10227-1

</details>

[L1001-rule]: rules/lua/basic/L1001.yaml
[L1001-desc]: https://ligurio.github.io/lua-pitfalls/p/L1001/
[L1002-rule]: rules/lua/basic/L1002.yaml
[L1002-desc]: https://ligurio.github.io/lua-pitfalls/p/L1002/
[L1003-rule]: rules/lua/basic/L1003.yaml
[L1003-desc]: https://ligurio.github.io/lua-pitfalls/p/L1003/
[L1004-rule]: rules/lua/basic/L1004.yaml
[L1004-desc]: https://ligurio.github.io/lua-pitfalls/p/L1004/
[L1010-rule]: rules/lua/basic/L1010.yaml
[L1010-desc]: https://ligurio.github.io/lua-pitfalls/p/L1010/
[L1014-rule]: rules/lua/basic/L1014.yaml
[L1014-desc]: https://ligurio.github.io/lua-pitfalls/p/L1014/
[L1015-rule]: rules/lua/basic/L1015.yaml
[L1015-desc]: https://ligurio.github.io/lua-pitfalls/p/L1015/
[L1021-rule]: rules/lua/basic/L1021.yaml
[L1021-desc]: https://ligurio.github.io/lua-pitfalls/p/L1021/
[L1022-rule]: rules/lua/basic/L1022.yaml
[L1022-desc]: https://ligurio.github.io/lua-pitfalls/p/L1022/
[L1023-rule]: rules/lua/basic/L1023.yaml
[L1023-desc]: https://ligurio.github.io/lua-pitfalls/p/L1023/
[L1024-rule]: rules/lua/basic/L1024.yaml
[L1024-desc]: https://ligurio.github.io/lua-pitfalls/p/L1024/
[L1025-rule]: rules/lua/basic/L1025.yaml
[L1025-desc]: https://ligurio.github.io/lua-pitfalls/p/L1025/
[L1026-rule]: rules/lua/basic/L1026.yaml
[L1026-desc]: https://ligurio.github.io/lua-pitfalls/p/L1026/
[L1032-rule]: rules/lua/basic/L1032.yaml
[L1032-desc]: https://ligurio.github.io/lua-pitfalls/p/L1032/
[L1041-rule]: rules/lua/basic/L1041.yaml
[L1041-desc]: https://ligurio.github.io/lua-pitfalls/p/L1041/
[L1042-rule]: rules/lua/basic/L1042.yaml
[L1042-desc]: https://ligurio.github.io/lua-pitfalls/p/L1042/
[L1043-rule]: rules/lua/basic/L1043.yaml
[L1043-desc]: https://ligurio.github.io/lua-pitfalls/p/L1043/
[L1044-rule]: rules/lua/basic/L1044.yaml
[L1044-desc]: https://ligurio.github.io/lua-pitfalls/p/L1044/
[L1045-rule]: rules/lua/basic/L1045.yaml
[L1045-desc]: https://ligurio.github.io/lua-pitfalls/p/L1045/
[L1046-rule]: rules/lua/basic/L1046.yaml
[L1046-desc]: https://ligurio.github.io/lua-pitfalls/p/L1046/
[L1047-rule]: rules/lua/basic/L1047.yaml
[L1047-desc]: https://ligurio.github.io/lua-pitfalls/p/L1047/
[L1048-rule]: rules/lua/basic/L1048.yaml
[L1048-desc]: https://ligurio.github.io/lua-pitfalls/p/L1048/
[L1049-rule]: rules/lua/basic/L1049.yaml
[L1049-desc]: https://ligurio.github.io/lua-pitfalls/p/L1049/
[L1050-rule]: rules/lua/basic/L1050.yaml
[L1050-desc]: https://ligurio.github.io/lua-pitfalls/p/L1050/
[L1051-rule]: rules/lua/basic/L1051.yaml
[L1051-desc]: https://ligurio.github.io/lua-pitfalls/p/L1051/
[L1052-rule]: rules/lua/basic/L1052.yaml
[L1052-desc]: https://ligurio.github.io/lua-pitfalls/p/L1052/
[L1053-rule]: rules/lua/basic/L1053.yaml
[L1053-desc]: https://ligurio.github.io/lua-pitfalls/p/L1053/
[L1054-rule]: rules/lua/basic/L1054.yaml
[L1054-desc]: https://ligurio.github.io/lua-pitfalls/p/L1054/
[L1055-rule]: rules/lua/basic/L1055.yaml
[L1055-desc]: https://ligurio.github.io/lua-pitfalls/p/L1055/
[L1056-rule]: rules/lua/basic/L1056.yaml
[L1056-desc]: https://ligurio.github.io/lua-pitfalls/p/L1056/
[L1059-rule]: rules/lua/basic/L1059.yaml
[L1059-desc]: https://ligurio.github.io/lua-pitfalls/p/L1059/
[L1061-rule]: rules/lua/basic/L1061.yaml
[L1061-desc]: https://ligurio.github.io/lua-pitfalls/p/L1061/
[L1062-rule]: rules/lua/basic/L1062.yaml
[L1062-desc]: https://ligurio.github.io/lua-pitfalls/p/L1062/
[L1063-rule]: rules/lua/basic/L1063.yaml
[L1063-desc]: https://ligurio.github.io/lua-pitfalls/p/L1063/
[L1065-rule]: rules/lua/basic/L1065.yaml
[L1065-desc]: https://ligurio.github.io/lua-pitfalls/p/L1065/
[L1074-rule]: rules/lua/basic/L1074.yaml
[L1074-desc]: https://ligurio.github.io/lua-pitfalls/p/L1074/
[L1087-rule]: rules/lua/basic/L1087.yaml
[L1087-desc]: https://ligurio.github.io/lua-pitfalls/p/L1087/
[L1093-rule]: rules/lua/basic/L1093.yaml
[L1093-desc]: https://ligurio.github.io/lua-pitfalls/p/L1093/
[L1057-rule]: rules/lua/luajit/L1057.yaml
[L1057-desc]: https://ligurio.github.io/lua-pitfalls/p/L1057/
[L1058-rule]: rules/lua/luajit/L1058.yaml
[L1058-desc]: https://ligurio.github.io/lua-pitfalls/p/L1058/
[T1003-rule]: rules/lua/tarantool/T1003.yaml
[T1003-desc]: https://ligurio.github.io/lua-pitfalls/t/T1003/
[T1004-rule]: rules/lua/tarantool/T1004.yaml
[T1004-desc]: https://ligurio.github.io/lua-pitfalls/t/T1004/
[T1005-rule]: rules/lua/tarantool/T1005.yaml
[T1005-desc]: https://ligurio.github.io/lua-pitfalls/t/T1005/
[T1006-rule]: rules/lua/tarantool/T1006.yaml
[T1006-desc]: https://ligurio.github.io/lua-pitfalls/t/T1006/
[T1007-rule]: rules/lua/tarantool/T1007.yaml
[T1007-desc]: https://ligurio.github.io/lua-pitfalls/t/T1007/
[T1008-rule]: rules/lua/tarantool/T1008.yaml
[T1008-desc]: https://ligurio.github.io/lua-pitfalls/t/T1008/
[T1009-rule]: rules/lua/tarantool/T1009.yaml
[T1009-desc]: https://ligurio.github.io/lua-pitfalls/t/T1009/
[T1010-rule]: rules/lua/tarantool/T1010.yaml
[T1010-desc]: https://ligurio.github.io/lua-pitfalls/t/T1010/
[T1011-rule]: rules/lua/tarantool/T1011.yaml
[T1011-desc]: https://ligurio.github.io/lua-pitfalls/t/T1011/
[T1012-rule]: rules/lua/tarantool/T1012.yaml
[T1012-desc]: https://ligurio.github.io/lua-pitfalls/t/T1012/
[T1013-rule]: rules/lua/tarantool/T1013.yaml
[T1013-desc]: https://ligurio.github.io/lua-pitfalls/t/T1013/
[T1014-rule]: rules/lua/tarantool/T1014.yaml
[T1014-desc]: https://ligurio.github.io/lua-pitfalls/t/T1014/
[T1015-rule]: rules/lua/tarantool/T1015.yaml
[T1015-desc]: https://ligurio.github.io/lua-pitfalls/t/T1015/
[T1016-rule]: rules/lua/tarantool/T1016.yaml
[T1016-desc]: https://ligurio.github.io/lua-pitfalls/t/T1016/
[T1017-rule]: rules/lua/tarantool/T1017.yaml
[T1017-desc]: https://ligurio.github.io/lua-pitfalls/t/T1017/
[T1018-rule]: rules/lua/tarantool/T1018.yaml
[T1018-desc]: https://ligurio.github.io/lua-pitfalls/t/T1018/
[T1019-rule]: rules/lua/tarantool/T1019.yaml
[T1019-desc]: https://ligurio.github.io/lua-pitfalls/t/T1019/
[T1020-rule]: rules/lua/tarantool/T1020.yaml
[T1020-desc]: https://ligurio.github.io/lua-pitfalls/t/T1020/
[T1021-rule]: rules/lua/tarantool/T1021.yaml
[T1021-desc]: https://ligurio.github.io/lua-pitfalls/t/T1021/
[T1022-rule]: rules/lua/tarantool/T1022.yaml
[T1022-desc]: https://ligurio.github.io/lua-pitfalls/t/T1022/
[T1023-rule]: rules/lua/tarantool/T1023.yaml
[T1023-desc]: https://ligurio.github.io/lua-pitfalls/t/T1023/
[T1024-rule]: rules/lua/tarantool/T1024.yaml
[T1024-desc]: https://ligurio.github.io/lua-pitfalls/t/T1024/
[T1025-rule]: rules/lua/tarantool/T1025.yaml
[T1025-desc]: https://ligurio.github.io/lua-pitfalls/t/T1025/
[T1026-rule]: rules/lua/tarantool/T1026.yaml
[T1026-desc]: https://ligurio.github.io/lua-pitfalls/t/T1026/
[T1027-rule]: rules/lua/tarantool/T1027.yaml
[T1027-desc]: https://ligurio.github.io/lua-pitfalls/t/T1027/
[T1029-rule]: rules/lua/tarantool/T1029.yaml
[T1029-desc]: https://ligurio.github.io/lua-pitfalls/t/T1029/
[T1031-rule]: rules/lua/tarantool/T1031.yaml
[T1031-desc]: https://ligurio.github.io/lua-pitfalls/t/T1031/
[T1032-rule]: rules/lua/tarantool/T1032.yaml
[T1032-desc]: https://ligurio.github.io/lua-pitfalls/t/T1032/
[T1033-rule]: rules/lua/tarantool/T1033.yaml
[T1033-desc]: https://ligurio.github.io/lua-pitfalls/t/T1033/
[T1034-rule]: rules/lua/tarantool/T1034.yaml
[T1034-desc]: https://ligurio.github.io/lua-pitfalls/t/T1034/
[T1036-rule]: rules/lua/tarantool/T1036.yaml
[T1036-desc]: https://ligurio.github.io/lua-pitfalls/t/T1036/
[T1037-rule]: rules/lua/tarantool/T1037.yaml
[T1037-desc]: https://ligurio.github.io/lua-pitfalls/t/T1037/
[T1042-rule]: rules/lua/tarantool/T1042.yaml
[T1042-desc]: https://ligurio.github.io/lua-pitfalls/t/T1042/
[T1043-rule]: rules/lua/tarantool/T1043.yaml
[T1043-desc]: https://ligurio.github.io/lua-pitfalls/t/T1043/
[T1044-rule]: rules/lua/tarantool/T1044.yaml
[T1044-desc]: https://ligurio.github.io/lua-pitfalls/t/T1044/
[T1045-rule]: rules/lua/tarantool/T1045.yaml
[T1045-desc]: https://ligurio.github.io/lua-pitfalls/t/T1045/
[T1046-rule]: rules/lua/tarantool/T1046.yaml
[T1046-desc]: https://ligurio.github.io/lua-pitfalls/t/T1046/
