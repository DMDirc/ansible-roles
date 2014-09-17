# Ansible roles

This is a collection of Ansible roles I've used to provision my various servers.

It contains the following roles:

## Common

Provides common tasks useful for most servers.

* Installs a full copy of Vim
* Installs a modified sshd_config
* Sets the system timezone

### Config

```yaml
sshd_port: 22
sshd_allow_root: 'without-password'
sshd_allow_passwords: 'no'

timezone: 'Europe/London'
```

## DFBnc

(Depends on Java8)

Clones, builds and configures DFBnc

### Config

```yaml
dfbnc_user: bouncer
dfbnc_dir: /home/{{dfbnc_user}}/dfbnc
dfbnc_listenhosts: 0.0.0.0:33262
```

## Java8

Adds the webupd8 team PPA and installs java 8.

## Nginx

Installs nginx.

## NodeJS

Executes the nodesource.com setup script to add a repository, then installs
nodejs.

## TapChat

(Depends on NodeJS)

Installs TapChat and its dependencies.

## TeamCity Agent

Creates a new user account, then downloads, unpacks and configures a
TeamCity build agent.

### Config

```yaml
teamcity_agent_user: 'teamcity-agent'
teamcity_server_url: 'http://teamcity.changeme.com/'
teamcity_agent_home_dir: '/home/{{ teamcity_agent_user }}'
teamcity_agent_sh: '{{ teamcity_agent_home_dir }}/bin/agent.sh'
teamcity_agent_conf: '{{ teamcity_agent_home_dir }}/conf/buildAgent.properties'
```