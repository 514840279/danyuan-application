[root@single ~]# cd /root/
[root@single ~]# ls
anaconda-ks.cfg  Downloads           Music     rpmbuild  shadowsocks-libev
Desktop          install.log         Pictures  rp.sh     Templates
Documents        install.log.syslog  Public    scripts   Videos
[root@single ~]# cd .vnc
[root@single .vnc]# ls
localhost.localdomain:1.log  passwd        single:2.log
localhost.localdomain:1.pid  single:1.log  xstartup
localhost.localdomain:2.log  single:1.pid  xstartup.bak
[root@single .vnc]# rm passwd 
rm: remove regular file `passwd'? y
[root@single .vnc]# vncserver -kill :1
Killing Xvnc process ID 14244
[root@single .vnc]# vncserver

You will require a password to access your desktops.
Password:
Verify:

New 'single:1 (root)' desktop is single:1

Starting applications specified in /root/.vnc/xstartup
Log file is /root/.vnc/single:1.log

[root@single .vnc]#
