## semgrep rules

This repo holds patterns for finding non-determinism and missed error handling
in Python, Go and Java source code.

The rules engines currently supported [semgrep](https://semgrep.dev/).

To run a single semgrep rule:

```
$ semgrep -f rules/<type>/<lang>/<rule>.yml .
```

To run all semgrep rules:

```
$ semgrep -f rules/<type>/<lang>/ .
```

Semgrep checks:

| Rule                                    | Python | Go   | Java  |
|:---------------------------------------:|:------:|:----:|:-----:|
| assumption-timezone                     |  Yes   |      |       |
| comparing-with-current-time             |  Yes   |      | Yes   |
| comparing-with-float-numbers            |  Yes   |      |       |
| comparing-with-unordered-data-structure |  Yes   |      |       |
| missed-retries-on-access                |  Yes   |      |       |
| random-seed-depends-on-current-time     |  Yes   |      |       |
| synchronization-with-sleep              |  Yes   | Yes  | Yes   |


References:

- **Root Causing Flaky Tests in a Large-Scale Industrial Setting** - Wing Lam, Patrice Godefroid, Suman Nath, Anirudh Santhiar, Suresh Thummalapenta
- **What is the Vocabulary of Flaky Tests?** - Gustavo Pinto, Breno Miranda, Supun Dissanayake, Marcelo d'Amorim, Christoph Treude, Antonia Bertolino
- **Eradicating Non-Determinism in Tests** - Martin Fowler
