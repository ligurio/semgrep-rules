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

### Semgrep checks:

### Non-Determinism

| Rule                                    | Python | Go   | Java  |
|:---------------------------------------:|:------:|:----:|:-----:|
| assumption-timezone                     |  Yes   |      |       |
| use-current-time                        |  Yes   |      | Yes   |
| use-float-numbers                       |  Yes   |      |       |
| use-unordered-data-structure            |  Yes   |      |       |
| missed-retries-on-access                |  Yes   |      |       |
| random-seed-depends-on-current-time     |  Yes   |      |       |
| synchronization-with-sleep              |  Yes   | Yes  | Yes   |

### Error handling

TODO

### See Also

- [Aspirator](https://github.com/diy1/aspirator) - A simple tool that finds serious bugs in Java exception handler

### References:

#### Non-Determinism

- **An empirical analysis of flaky tests** - Qingzhou  Luo, Farah  Hariri, Lamyaa  Eloussi, Darko  Marinov
- **Empirical Analysis of Factors and their Effect on Test Flakiness - Practitioners’ Perceptions** - Azeem Ahmad, Ola Leifler, Kristian Sandahl
- **Root Causing Flaky Tests in a Large-Scale Industrial Setting** - Wing Lam, Patrice Godefroid, Suman Nath, Anirudh Santhiar, Suresh Thummalapenta
- **What is the Vocabulary of Flaky Tests?** - Gustavo Pinto, Breno Miranda, Supun Dissanayake, Marcelo d'Amorim, Christoph Treude, Antonia Bertolino
- **Eradicating Non-Determinism in Tests** - Martin Fowler

#### Error handling

> Proper error handling code is hard. Bugs in error handling code are a major cause of bad problems. This means that the probability of having sequential bugs, where an error causes buggy error handling code to run, isn't just the independent probabilities of the individual errors multiplied. It's common to have cascading failures cause a serious outage. There's a sense in which this is obvious -- error handling is generally regarded as being hard. If I mention this to people they'll tell me how obvious it is that a disproportionate number of serious postmortems come out of bad error handling and cascading failures where errors are repeatedly not handled correctly. But despite this being “obvious”, it's not so obvious that sufficient test and static analysis effort are devoted to making sure that error handling works.
Source: [Dan Luu](https://danluu.com/postmortem-lessons/)

- **The Do's and Don'ts of Error Handling** - Joe Armstrong (GOTO 2018)
- **Finding Error-Handling Bugs in Systems Code Using Static Analysis** - Cindy Rubio-González, Ben Liblit
- **Simple Testing Can Prevent Most Critical Failures: An Analysis of Production Failures in Distributed Data-Intensive Systems** - Ding Yuan, Yu Luo, Xin Zhuang, Guilherme Renna Rodrigues, Xu Zhao, Yongle Zhang, Pranay U. Jain, and Michael Stumm, University of Toronto (USENIX)
- **Improving the Quality of Error-Handling Code in Systems Software using Function-Local Information** - Suman Saha
