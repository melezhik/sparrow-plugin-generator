# SYNOPSIS

Simple wrapper for `%item%` from [%url%](%url%).


# INSTALL

    $ sparrow plg install %item%

# USAGE

Basic usage:

    $ sparrow plg run %item% -- <args>

See parameters description at [%url%](%url).

If you need some automation:

    $ sparrow project create utils

    $ sparrow task add utils $task-name %item%

    $ sparrow task ini utils/$task-name

      ---

      args:
        - foo
        - bar
        # - so on ...

    $ sparrow task run utils/$task-name

# Authors

* The author of %item% tool is [@%author%](https://github.com/%author%)

* The sparrow plugin maintainer is [Alexey Melezhik](https://github.com/melezhik)



