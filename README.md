# bashrcd

Manage Bash's user configuration modules.

# Installation

Just type:
```shell
# make install
```

Add a line to load the script automatically at Bash startup:
```shell
$ echo '. bashrcd' >> ~/.bashrc
```

You can now open a new terminal and start populating _~/.bashrc.d/_ with your startup scripts.

# Execution order

The scripts execution order depends on the implementation of `run-parts` installed on the system.
You can check the startups scripts order by typing:
```shell
$ bashrcd -n
```
