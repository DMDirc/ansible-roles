# Ansible roles

This is a collection of Ansible roles I've used to provision my various servers.

It contains the following roles:

* **Common** - Installs vim and mosh, creates locales and sets timezone.
* **DFBnc** - Clones, builds and configures DFBnc, with a self-signed cert.
* **Java8** - Adds the webupd8 team PPA and installs Java 8.
* **MySQL** - Installs MySQL and generates a random root password.
* **Nginx** - Installs NGinx
* **NodeJS** - Uses the setup script from nodesource.com, and installs nodejs.
* **Python-dev** - Installs packages required for Python development.
* **SSHd** - Configures SSHd, and deploys/revokes root SSH keys.
* **TapChat** - Installs TapChat and its dependencies.
* **TeamCity Agent** - Downloads, unpacks and configures a TeamCity agent.
* **Uswgi** - Installs and configures uwsgi, and adds an init script for it.

