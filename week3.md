# Exercise 1
### Task: Create a bash script to run at every hour, saving system memory (RAM) usage to a specified file and at midnight it sends the content of the file to a specified email address, then starts over for the new day.

*Instruction:*
* Submit the content of your script, cronjob and a sample of the email sent, all in the folder for this exercise.

*Solution:*
* bash script content
```
#!/usr/bin/bash

# create "log_file.log" if it does not exist
touch log_file.log

# append date to "log_file.log"
date >> log_file.log

# append memory available to "log_file.log"
free >> log_file.log

# append done to "log_file.log"
echo "********* DONE **********" >> log_file.log

# create a function to send mail
function send_mail() {
    local recipient="peter.oyelegbin@alertgroup.com.ng"
    local subject="File Content from Bash Automation"
    local body=$(cat log_file.log)
    echo "$body" | mail -s "$subject" "$recipient"
}

# get current time
time=$(date +'%I:%M %p')

# create a condition to send a mail at a specific time
if [ "$time" == "12:00 PM" ]; then
    send_mail
    rm log_file.log
else
    echo "++++++++++++++++++++++++++++++" >> log_file.log
fi
```

* cronjob sample
![cronjob sample](images/week3_task1_a.jpeg)

* sample of the email
![email sample](images/week3_task1_b.jpeg)



# Exercise 2
### Task: Create an Ansible Playbook to setup a server with Apache. The server should be set to the Africa/Lagos Timezone. Host an index.php file with the following content, as the main file on the server:
`<?php
date("F d, Y h:i:s A e", time());
?>`

*Instruction:*
* Submit the Ansible playbook, the output of systemctl status apache2 after deploying the playbook and a screenshot of the rendered page

*Solution:*
* 
