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

To run a single coccinelle rule:

```
$ spatch --sp-file coccinelle/mmap_map_failed.cocci --very-quiet --dir ~/sources/tarantool/src/
```

### Lua

| ID | Description |
| -- | ----------- |
| [lua_builtin_global_write](rules/lua/basic/lua_builtin_global_write.yaml) | Global write. |
| [lua_cmp_by_reference](rules/lua/basic/lua_cmp_by_reference.yaml) | Compare uncomparable. |
| [lua_cmp_float_numbers](rules/lua/basic/lua_cmp_float_numbers.yaml) | Compare float numbers. |
| [lua_comparison_precedence](rules/lua/basic/lua_comparison_precedence.yaml) | Comparison precedence. |
| [lua_debug_enabled](rules/lua/basic/lua_debug_enabled.yaml) | Using `debug.sethook()`. |
| [lua_deprecated_api](rules/lua/basic/lua_deprecated_api.yaml) | Using deprecated Lua function(s). |
| [lua_deprecated_global](rules/lua/basic/lua_deprecated_global.yaml) | Using deprecated globals. |
| [lua_duplicate_condition](rules/lua/basic/lua_duplicate_condition.yaml) | Duplicate conditions. |
| [lua_duplicate_function](rules/lua/basic/lua_duplicate_function.yaml) | Duplicate functions. |
| [lua_unsafe_function](rules/lua/basic/lua_duplicate_local.yaml) | Duplicate locals. |
| [lua_fd_leak](rules/lua/basic/lua_fd_leak.yaml) | File descriptors leaks. |
| [lua_for_range](rules/lua/basic/lua_for_range.yaml) | Incorrect `for` bounds. |
| [lua_format_string](rules/lua/basic/lua_format_string.yaml) | Mistakes in a format string. |
| [lua_func_inside_func](rules/lua/basic/lua_func_inside_func.yaml) | A function is defined inside another function. |
| [lua_function_unused](rules/lua/basic/lua_function_unused.yaml) | Unused function. |
| [lua_global_used_as_local](rules/lua/basic/lua_global_used_as_local.yaml) | Global is used as a local. |
| [lua_implicit_return](rules/lua/basic/lua_implicit_return.yaml) | Implicit return. |
| [lua_import_unused](rules/lua/basic/lua_import_unused.yaml) | Unused import. |
| [lua_init_rng_without_seed](rules/lua/basic/lua_init_rng_without_seed.yaml) | math.random() is used without random seed. |
| [lua_integer_parsing](rules/lua/basic/lua_integer_parsing.yaml) | Incorrect using integers. |
| [lua_loadstring](rules/lua/basic/lua_loadstring.yaml) | Using `loadstring()`. |
| [lua_local_shadow](rules/lua/basic/lua_local_shadow.yaml) | Using local shadow. |
| [lua_local_unused](rules/lua/basic/lua_local_unused.yaml) | Unused local. |
| [lua_magic_number](rules/lua/basic/lua_magic_number.yaml) | Using magic numbers. |
| [lua_misleading_and_or](rules/lua/basic/lua_misleading_and_or.yaml) | Misleading `and` and `or`. |
| [lua_multi_line_statement](rules/lua/basic/lua_multi_line_statement.yaml) | Multiline statement. |
| [lua_pcall_err_handling](rules/lua/basic/lua_pcall_err_handling.yaml) | Ignoring `pcall` results handling. |
| [lua_pcall_with_method](rules/lua/basic/lua_pcall_with_method.yaml) | Use pcall(self.func, self). |
| [lua_placeholder_write](rules/lua/basic/lua_placeholder_read.yaml) | Placeholder read. |
| [lua_print_unprintable](rules/lua/basic/lua_print_unprintable.yaml) | Print unprintable. |
| [lua_require_inside_func](rules/lua/basic/lua_require_inside_func.yaml) | Import is used inside a function. |
| [lua_same_line_statement](rules/lua/basic/lua_same_line_statement.yaml) | Same line statement. |
| [lua_setting_looping_variables](rules/lua/basic/lua_setting_looping_variables.yaml) | Mutate immutable variables. |
| [lua_table_first_index](rules/lua/basic/lua_table_first_index.yaml) | Using index 0 in tables. |
| [lua_table_len](rules/lua/basic/lua_table_len.yaml) | Using `#` for a table length. |
| [lua_table_literal](rules/lua/basic/lua_table_literal.yaml) | Table literal. |
| [lua_table_operations](rules/lua/basic/lua_table_operations.yaml) | Table operations. |
| [lua_unbalanced_assignment](rules/lua/basic/lua_unbalanced_assignment.yaml) | Unbalanced assignment. |
| [lua_uninitialized_local](rules/lua/basic/lua_uninitialized_local.yaml) | Non-initialized local. |
| [lua_unknown_global](rules/lua/basic/lua_unknown_global.yaml) | Using unknown global variable. |
| [lua_unknown_type](rules/lua/basic/lua_unknown_type.yaml) | Unknown type. |
| [lua_unreachable_code](rules/lua/basic/lua_unreachable_code.yaml) | Unreachable code. |
| [lua_unsafe_function](rules/lua/basic/lua_unsafe_function.yaml) |  |
| [lua_use_fd_after_close](rules/lua/basic/lua_use_fd_after_close.yaml) | File descriptors leak. |
| [lua_writing_to_file_in_read_mode](rules/lua/basic/lua_writing_to_file_in_read_mode.yaml) | Writing to a file opened in read-only mode. |
| [2.1](rules/lua/luajit/2.1.yaml) |  |
| [luajit_jit_off](rules/lua/luajit/luajit_jit_off.yaml) |  |
| [luajit_nyi](rules/lua/luajit/luajit_nyi.yaml) |  |
| [luajit_partial_compilation](rules/lua/luajit/luajit_partial_compilation.yaml) |  |
| [tarantool_box_cfg_raw_access](rules/lua/tarantool/tarantool_box_cfg_raw_access.yaml) |  |
| [tarantool_box_grant_guest_full_access](rules/lua/tarantool/tarantool_box_grant_guest_full_access.yaml) |  |
| [tarantool_box_insert_nil](rules/lua/tarantool/tarantool_box_insert_nil.yaml) |  |
| [tarantool_box_missed_if_not_exist](rules/lua/tarantool/tarantool_box_missed_if_not_exist.yaml) |  |
| [tarantool_box_once](rules/lua/tarantool/tarantool_box_once.yaml) |  |
| [tarantool_box_select_nil](rules/lua/tarantool/tarantool_box_select_nil.yaml) |  |
| [tarantool_box_set_trigger_once](rules/lua/tarantool/tarantool_box_set_trigger_once.yaml) |  |
| [tarantool_box_space_format](rules/lua/tarantool/tarantool_box_space_format.yaml) |  |
| [tarantool_crypto_insecure_hash_algorithm](rules/lua/tarantool/tarantool_crypto_insecure_hash_algorithm.yaml) |  |
| [insecure-hash-algorithm-md5](rules/lua/tarantool/tarantool_digest_insecure_hash_algorithm.yaml) |  |
| [insecure-hash-algorithm-sha1](rules/lua/tarantool/tarantool_digest_insecure_hash_algorithm.yaml) |  |
| [tarantool_digest_insecure_hash_algorithm](rules/lua/tarantool/tarantool_digest_insecure_hash_algorithm.yaml) |  |
| [tarantool_fiber_missed_name](rules/lua/tarantool/tarantool_fiber_missed_name.yaml) |  |
| [tarantool_fiber_missed_testcancel](rules/lua/tarantool/tarantool_fiber_missed_testcancel.yaml) |  |
| [tarantool_fiber_missed_timeout](rules/lua/tarantool/tarantool_fiber_missed_timeout.yaml) |  |
| [tarantool_fiber_missed_yield](rules/lua/tarantool/tarantool_fiber_missed_yield.yaml) |  |
| [tarantool_fiber_sync_sleep](rules/lua/tarantool/tarantool_fiber_sync_sleep.yaml) |  |
| [tarantool_fio_bad_file_permission](rules/lua/tarantool/tarantool_fio_bad_file_permission.yaml) |  |
| [tarantool_fio_fd_leak](rules/lua/tarantool/tarantool_fio_fd_leak.yaml) |  |
| [tarantool_fio_use_fd_after_close](rules/lua/tarantool/tarantool_fio_use_fd_after_close.yaml) |  |
| [tarantool_fio_writing_to_file_in_read_mode](rules/lua/tarantool/tarantool_fio_writing_to_file_in_read_mode.yaml) |  |
| [tarantool_http_client_no_cert_validation](rules/lua/tarantool/tarantool_http_client_no_cert_validation.yaml) |  |
| [tarantool_http_client_response_json](rules/lua/tarantool/tarantool_http_client_response_json.yaml) |  |
| [tarantool_luatest_missed_test_prefix](rules/lua/tarantool/tarantool_luatest_missed_test_prefix.yaml) |  |
| [tarantool_net_box_fd_leak](rules/lua/tarantool/tarantool_net_box_fd_leak.yaml) |  |
| [tarantool_net_box_missed_timeout](rules/lua/tarantool/tarantool_net_box_missed_timeout.yaml) |  |
| [tarantool_popen_enabled_shell](rules/lua/tarantool/tarantool_popen_enabled_shell.yaml) |  |
| [tarantool_popen_fd_leak](rules/lua/tarantool/tarantool_popen_fd_leak.yaml) |  |
| [tarantool_popen_use_fd_after_close](rules/lua/tarantool/tarantool_popen_use_fd_after_close.yaml) |  |
| [tarantool_socket_bind_to_all_interfaces](rules/lua/tarantool/tarantool_socket_bind_to_all_interfaces.yaml) |  |
| [tarantool_socket_fd_leak](rules/lua/tarantool/tarantool_socket_fd_leak.yaml) |  |
| [tarantool_socket_fd_leak](rules/lua/tarantool/tarantool_socket_fd_leak.yaml) |  |
| [tarantool_socket_missed_timeout](rules/lua/tarantool/tarantool_socket_missed_timeout.yaml) |  |
| [tarantool_socket_use_fd_after_close](rules/lua/tarantool/tarantool_socket_use_fd_after_close.yaml) |  |
| [tarantool_bad_hash_func](rules/lua/tarantool/tarantool_vshard_bad_hash_func.yaml) |  |
| [tarantool_no_timeouts](rules/lua/tarantool/tarantool_vshard_missed_timeout.yaml) |  |

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

</details>
