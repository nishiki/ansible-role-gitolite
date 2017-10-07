# Ansible role: Gitolite
[![Version](https://img.shields.io/badge/latest_version-0.1.0-green.svg)](https://github.com/nishiki/ansible-role-gitolite/releases)
[![Build Status](https://travis-ci.org/nishiki/ansible-role-gitolite.svg?branch=master)](https://travis-ci.org/nishiki/ansible-role-gitolite)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/nishiki/ansible-role-gitolite/blob/master/LICENSE)

Install gitolite from source.

## Requirements

None

## Role variables

 * gitolite_version - the gitolite version to install ([see releases](https://github.com/sitaramc/gitolite/releases))
 * gitolite_user_name - the name of the gitolite user
 * gitolite_user_uid - the uid of the gitolite user
 * gitolite_user_home - the home directory of the gitolite user

## How to use

 * Install:
```
- role: gitolite 
```

 * Uninstall:
```
- role: gitolite/uninstall
```

 * Uninstall and purge all data:
```
- role: gitolite/purge
```

## Development
## Development
### Tests with docker

  * install [docker](https://docs.docker.com/engine/installation/)
  * install dependencies `bundle install`
  * run the tests `rake`
