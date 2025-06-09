## Reboot Commands for Linux
```
    # When logged in as root:
    $ systemctl reboot
    # When using sudo as a regular user:
    $ sudo systemctl reboot
    [sudo] password for aaron:
```
## Shuting Down the System
* sudo systemctl power off  
* sudo systemctl power off  --force === by forcefully powering off

## Scheduling Reboots and Shutdowns 
### Schedule a shutdown at a specific time
* sudo shutdown 02:00 
* sudo shutdown +15 ==> shutdown after 15 min
### Schedule a reboot at 2 a.m.
* sudo shutdown -r 02:00
### Schedule a reboot after 15 minutes
* sudo shutdown -r +15

### to schedule a reboot in one minute while displaying a message about a scheduled Linux kernel upgrade
* sudo shutdown -r +1 'Scheduled restart to upgrade our Linux kernel' 

## Different Operating Modes
* The Linux system boots to a graphical login screen. At startup, the operating system loads various programs and services in a specific order using instructions defined in systemd target files. To see which boot target is active by default

```
    systemctl get-default
    sudo systemctl set-default multi-user.target
    systemctl get-default 
    sudo systemctl set-default graphical.target 
    sudo systemctl set-default graphical.target 
    sudo systemctl set-default multi-user.target
    systemctl get-default 
    sudo systemctl isolate multi-user.target 
```

## Role of Init System and Systemd Units
* The startup and management of services in Linux are controlled by the init system. This system uses configuration files called systemd units to determine how applications should be started, what actions to take when an application fails, and other necessary operations
* The term systemd refers both to the suite of tools that manage Linux systems and the primary program that acts as the init system.
* Systemd ensures smooth system operation by initializing and monitoring various system components. There are several types of systemd units such as service, socket, device, and timer units
```
    man systemd.service
    systemctl cat ssh.service

    # /lib/systemd/system/ssh.service
    [Unit]
    Description=OpenBSD Secure Shell server
    Documentation=man:sshd(8) man:sshd_config(5)
    After=network.target auditd.service
    ConditionPathExists=!/etc/ssh/sshd_not_to_be_run


    [Service]
    EnvironmentFile=/etc/default/ssh
    ExecStartPre=/usr/sbin/sshd -t
    ExecStart=/usr/sbin/sshd -D $SSHD_OPTS
    ExecReload=/usr/sbin/sshd -t
    ExecReload=/bin/kill -HUP $MAINPID
    KillMode=process
    Restart=on-failure
    RestartPreventExitStatus=255
    Type=notify
    RuntimeDirectory=sshd
    RuntimeDirectoryMode=0755
```

* ExecStart specifies the command used to launch the SSH daemon.
* ExecReload defines the commands to reload the SSH configuration.
* Restart=on-failure ensures that systemd automatically restarts the service if it crashes.

```
    
    systemctl list-units --type service --all
    sudo systemctl status ssh.service    # Check status of the SSH service
    sudo systemctl stop ssh.service
    sudo systemctl start ssh.service
    sudo systemctl restart ssh.service
    sudo systemctl reload ssh.service
    sudo systemctl restart ssh.service   # Fully stops and starts the service.
    sudo systemctl reload ssh.service    # Gracefully reloads the configuration.
    sudo systemctl enable ssh.service    # Enable ssh service
    sudo systemctl disable ssh.service.  # Disable ssh service
    systemctl is-enabled ssh.service.    # gives the info about ssh is enabled or not
```
## Masking
* In systemd, masking a service completely disables it by preventing it from being started manually or automatically, even by dependencies.
```
    sudo systemctl mask atd.service
    sudo systemctl unmask atd.service
```



