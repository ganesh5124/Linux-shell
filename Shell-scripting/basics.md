* A shell script is a file with a set of shell commands , for Automation of Repetitive tasks 
* The default shell for many Linux distros is the GNU Bourne-Again Shell (bash).
    ```
        #!/bin/bash
    ```

* Shebang is a combination of bash # and bang !  followed the bash shell path. This is the first line of the script. Shebang tells the shell to execute it via bash shell. Shebang is simply an absolute path to the bash interpreter

### Commands
* echo -n “textname” | base64 ⇒ used to encrypt the text
* echo -n “decrypted text” | base64 -d or echo -n “encrypted text” | base64 –decode ⇒ used to decode encrypted text 
* bash -x “shellscript.sh” ⇒ outputs the every line of command in bash or Alternatively,  if  you want to know the output of every line use set -x add this in top of the script file
read ⇒ used to take input from the user or from a file
Ex:     
```
    #!/bin/bash
    echo "Please enter your name:"
    read name	
    echo "Hello, $name!"
```
* which bash ⇒ to find the path to your bash shell
* set -o pipefail ⇒ pipefail: The return value of a pipeline is the status of the last command to exit with a non-zero status.

## Positional Arguments:- 
* In shell scripting allows you to pass data to your script when you execute it from the command line.
* $0: The name of the script itself.
* $1, $2, $3, ...: The first, second, third, etc., positional arguments.
* $# ⇒ prints number of arguments
* $@ ⇒ All the arguments passed to the script, treated as individual words.
* $*  ⇒ single word - All the arguments passed to the script, treated as SINGLE word
* $? ⇒ exit stats of previous command 
* ls non-existent-file
    echo "$?"
    echo $?  --> 0    (ZERO REPRESENTS SUCCESS) 
          --->1 2 (NON ZERO -- REPRESENTS FAILURE)
* Tee Command: Redirects the output to a file and displays it on the screen simultaneously.

### Variables
* Variables enhance flexibility and reduce errors by enabling dynamic value assignment throughout your scripts
### Read Inputs
* It is used to ask user anything whenever script is running 
```
    read -p "message" $message
```
-p is prompt message for to display to user

## Arthematic Operations
### expr command
* The expr command is a traditional way to perform arithmetic operations in shell scripts
ex: expr 6 + 3
* Ensure that operators and operands are strictly separated by spaces. 
* When multiplying using expr, the star symbol (*) must be escaped with a backslash because * is interpreted as a reserved regex character.

## Arrays in Shell scripting

NAME=HELLOWORLD
echo ${#NAME}