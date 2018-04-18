查看锁表进程SQL语句1： 
     
    select sess.sid, 
      sess.serial#, 
      lo.oracle_username, 
      lo.os_user_name, 
      ao.object_name, 
      lo.locked_mode 
    from v$locked_object lo, 
        dba_objects ao, 
        v$session sess 
    where ao.object_id = lo.object_id and lo.session_id = sess.sid; 

查看锁表进程SQL语句2： 
    
    select * from v$session t1, v$locked_object t2 where t1.sid = t2.SESSION_ID; 

杀掉锁表进程： 
如有記錄則表示有lock，記錄下SID和serial# ，將記錄的ID替換下面的738,1429，即可解除LOCK 

    alter system kill session '738,1429';

【注】以上两步，可以通过Oracle的管理控制台来执行。 
 
3.如果利用上面的命令杀死一个进程后，进程状态被置为"killed"，但是锁定的资源很长时间没有被释放，那么可以在os一级再杀死相应的进程（线程），首先执行下面的语句获得进程（线程）号： 

    select spid, osuser, s.program 
     from v$session s,v$process p 
    where s.paddr=p.addr and s.sid=24 （24是上面的sid） 

4.在OS上杀死这个进程（线程）： 
1)在unix上，用root身份执行命令: 
 
    kill -9 12345（即第3步查询出的spid） 

2)在windows（unix也适用）用orakill杀死线程，orakill是oracle提供的一个可执行命令，语法为： 

    orakill sid thread 
 
其中： 
sid：表示要杀死的进程属于的实例名 
thread：是要杀掉的线程号，即第3步查询出的spid。 
例：

    c:>orakill orcl 12345
