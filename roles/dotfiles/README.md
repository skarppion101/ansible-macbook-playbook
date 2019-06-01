# Ansible Role: Dotfiles

[![Build Status](https://travis-ci.org/geerlingguy/ansible-role-dotfiles.svg?branch=master)](https://travis-ci.org/geerlingguy/ansible-role-dotfiles)

Installs a set of dotfiles from a given Git repository. By default, it will install my (geerlingguy's) [dotfiles](https://github.com/geerlingguy/dotfiles), but you can use any set of dotfiles you'd like, as long as they follow a conventional format.

## Requirements

Requires `git` on the managed machine (you can easily install it with `geerlingguy.git` if required).


## Dependencies

None

## Example Playbook

    - hosts: localhost
      roles:
        - { role: geerlingguy.dotfiles }

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
