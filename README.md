## semgrep rules

This repo holds patterns for finding non-determinism and missed error handling
in Python and Go source code.

The rules currently supports [semgrep](https://semgrep.dev/).

To run a single semgrep rule:

```
$ semgrep -f rules/<lang>/<rule>.yml .
```

To run all semgrep rules:

```
$ semgrep --config rules/<lang>/
```

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
