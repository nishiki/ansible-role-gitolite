# Ansible role: Gitolite
[![Version](https://img.shields.io/badge/latest_version-1.0.0-green.svg)](https://github.com/nishiki/ansible-role-gitolite/releases)
[![Build Status](https://travis-ci.org/nishiki/ansible-role-gitolite.svg?branch=master)](https://travis-ci.org/nishiki/ansible-role-gitolite)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/nishiki/ansible-role-gitolite/blob/master/LICENSE)

Install gitolite from source.

## Requirements

None

## Role variables

 * `gitolite_version` - the gitolite version to install ([see releases](https://github.com/sitaramc/gitolite/releases))
 * `gitolite_user_name` - the name of the gitolite user
 * `gitolite_user_uid` - the uid of the gitolite user
 * `gitolite_user_home` - the home directory of the gitolite user

## How to use

 * Install:
```
- hosts: git-server
  roles:
    - gitolite 
```

 * Uninstall:
```
- hosts: git-server
  roles:
    - gitolite/uninstall
```

 * Uninstall and purge all data:
```
- hosts: git-server
  roles:
    - gitolite/purge
```

## Development
### Tests with docker

  * install [docker](https://docs.docker.com/engine/installation/)
  * install ruby
  * install bundler `gem install bundler`
  * install dependencies `bundle install`
  * run the tests `kitchen test`

## License

```
Copyright (c) 2017 Adrien Waksberg

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
