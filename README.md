# Project
This repository contains a collection of Erlang type definitions. The Erlang
standard library is missing a lot of type definitions, and often does not
export those that exist. This situation leads to developers not being able to
right proper type specifications.

# Compatibility
Types exported by the ET application must match the Erlang standard
library. The ET major version is incremented for new major Erlang versions;
the minor version is incremented for new minor Erlang versions.

| ET version | Erlang version |
|------------|----------------|
| 1.1.x      | 23.1           |

# Contact
If you find a bug or have any question, feel free to open a GitHub issue or to
contact me [by email](mailto:khaelin@gmail.com).

Please note that I do not currently review or accept any contribution.
