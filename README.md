# Ansible Playbook: LAMP Stack with a Laravel site on Ubuntu 14.04

An Ansible playbook for creating a LAMP stack with laravel, checks out a site from github, an deploys it using multi-tiered orchestration.

Target OS: Ubuntu 14.04

Software Installed:

* Git
* MySQL
* Apache (apache2)
* PHP (php5)

# Group Variables

Certain variables like passwords, repository URL, installation directory, and so on have been externalised in the group_vars directory for each of the server groups.

These variables should be configured as follows:
* Create a copy of the variables files template in the group_vars directory without the ".tpl" extension, i.e. webservers.tpl becomes webserver
* Set the variables in the file

Ansible will pick these variables up automatically. Note that the files have been ignored in .gitignore to prevent committing sensitive information in public git repositories.

