# Build a website with hugo

## Prerequisites

```bash
Ubunto-20.04
Install hugo in a higher version
```

These distributions are for the site/web page to work properly.

## Lifecycle

The life cycle of the web site is represented in the different rules and their
functions within the Makefile.

### help

With this rule in the Makefile we can create a list of all the rules and a brief
description of how they work.

```bash
make help
```

It should look something like this:

```bash
Available functions
build: build: Create all content in the website
clean: Revome all content in the website
post: Create a blog
help: Helpful list of commands
```

### Build

With this rule in the Makefile we can create all the necessary files to be
able to run our website, with the following command we execute the command.

```bash
make build
```

### Post

With this rule in the Makefile we can create new posts/blogs that can be
displayed on our website, they can be created with the following command.

```bash
make POST_NAME=who-are-we POST_TITLE="Who are we" post
```

The POST_NAME is the name of the file and the POST_TITLE is the title of
the file.

### Clean

With this rule in the Makefile we can delete the files that were generated
to create the web site, with the rule build

```bash
make clean
```
