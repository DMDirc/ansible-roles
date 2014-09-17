This is a collection of Ansible roles I've used to provision my various servers.

It contains the following roles:

# Common

Provides common tasks useful for most servers.

* Installs a full copy of Vim
* Installs a modified sshd_config
* Sets the system timezone

## Config

```yaml
---

sshd_port: 22
sshd_allow_root: 'without-password'
sshd_allow_passwords: 'no'

timezone: 'Europe/London'
```

# Java8

Adds the webupd8 team PPA and installs java 8.

# Nginx

Installs nginx.

# NodeJS

Executes the nodesource.com setup script to add a repository, then installs
nodejs.

# TapChat

(Depends on NodeJS)

Installs TapChat and its dependencies.
