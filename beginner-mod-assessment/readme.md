# 3MTT Cloud Engineering – Beginner Module Assessment (Deploy LAMP Stack)

### Objective
* Automate the provisioning of two Ubuntu-based servers, named “Master” and “Slave”, using Vagrant.
* On the Master node, create a bash script to automate the deployment of a LAMP (Linux, Apache, MySQL, PHP) stack.
* This script should clone a PHP application from GitHub, install all necessary packages, and configure Apache web server and MySQL. 
* Ensure the bash script is reusable and readable.
Using an Ansible playbook:
* Execute the bash script on the Slave node and verify that the PHP application is accessible through the VM’s IP address (take screenshot of this as evidence)
* Create a cron job to check the server’s uptime every 12 am.

### Requirements
* Submit the bash script and Ansible playbook to (publicly accessible) GitHub repository.
* Document the steps with screenshots in md files, including proof of the application’s accessibility (screenshots taken where necessary)
* Use either the VM’s IP address or a domain name as the URL.

### PHP Laravel GitHub Repository:
``` https://github.com/laravel/laravel ```

### Submission:
* Submit your work via the 3MTT Cloud Engineering – Beginner Module Assessment
* Push your code to GitHub.
* Share your GitHub link using the submission form.

### Helpful Links:
* https://medium.com/@melihovv/zero-time-deploy-of-laravel-project-with-ansible-3235816676bb

* https://www.cherryservers.com/blog/how-to-install-and-setup-postgresql-server-on-ubuntu-20-04

* https://dev.to/sureshramani/how-to-deploy-laravel-project-with-apache-on-ubuntu-36p3

* https://docs.ansible.com/

## Solution:
* LAMP deployment script
[click to view the lamp scrpit](/beginner-mod-assessment/lamp.sh)

* Uptime check script
[click to view the uptime check scrpit](/beginner-mod-assessment/uptime_check.sh)

* Ansible playbook
[click to view the playbook](/beginner-mod-assessment/playbk.yaml)

* Assessment web page Sample
![web_page](images/browser_view.png)
