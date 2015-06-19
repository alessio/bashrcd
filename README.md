# bashrcd

Manage Bash's user configuration modules.

# Installation

Just type:
```shell
# make install
```

Create a subdirectory _.bashrc.d_ in your _$HOME_ and add a line to load the script automatically at Bash startup:
```shell
mkdir ~/.bashrc.d
$ echo '. bashrcd'
```

You can now start populating your _~/.bashrc.d/_ with startup scripts.

# Execution order

The scripts execution order depends on the implementation of `run-parts` installed on the system.
You can check the startups scripts order by typing:
```shell
$ bashrcd -n
```
