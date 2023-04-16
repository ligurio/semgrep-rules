This is a sample semgrep rule server for serving individual rules and packs.

To run:

```sh
$ ./server -listen=:8080 -d=/path/to/semgrep-rules/rules -packs=packs.yml
```

The `packs.yml` file contains rule packs.

```yaml
packs:
  tarantool:
    - box_cfg_raw_access
    - grant_guest_full_access
    - missed_if_not_exist
    - set_trigger_once
    - insecure-hash-algorithm
    - insecure-hash-algorithm
    - bad_hash_func
```

The rule names must be the `id`s of the rules, *not* the filenames.

To serve and run a rule pack:

```sh
$ semgrep --config=http://localhost:8080/p/tarantool
```

To serve and run an individual rule:

```sh
$ semgrep --config=http://localhost:8080/r/box_cfg_raw_access
```
