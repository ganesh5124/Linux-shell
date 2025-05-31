## What is the use of echo command?
* echo is a command that outputs the strings that are passed to it as arguments.
 
    ```
        echo "Hello World!"
    ```
### Explain the difference between relative and absolute path?
* Relative path: Start from current working directory
* Absolute path: The full path to a file or directory

### Difference Between grep and egrep
* grep is used search any string in a file
* egrep is used search more than one strings at same time

* shred command ==> used to delete file permanently

### Check System Archiecture Info
* dmidecode and lscpu
dmidecode ==> used to read system hardware information

### How to redirect an error of a command into a file?
* To redirect an error we need to use 2>
* To redirect both error and output, 2>&1

### Cronjob
* used to run any script at any particular time
* cronjob -l ==> used to view list of list jobs
*   * * * * *
    1. * is minute (0-60)
    2. * is hour (0-23)
    3. * is day of month ( 1-31)
    4. * is month (1-12)
    5. * is day of the week (0-6)

### what is daemon service
* Service is that is used to run at backgroup

### kill pid ==> used to kill any process with the help of process id
kill -9 used to terminate program forcefully

netstat ==> used to get information about ports
