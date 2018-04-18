SQL>shutdown immediate;
cmd > rman nocatalog

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-6c682336c665fe1b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

RMAN > connect target /

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-d16821c1c53c20dc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

RMAN>STARTUP MOUNT;

RMAN>DELETE ARCHIVELOG ALL;  // 删除所有归档日志

RMAN>CROSSCHECK ARCHIVE LOG ALL;  // 对归档做一致性检查

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-760e8757d72d211a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


RMAN>CROSSCHECK ARCHIVE LOG ALL;  // 对归档做一致性检查

RMAN> exit;

退出RMAN

cmd> SQLPLUS /nolog

SQL>conn /as  sysdba;
SQL>shutdown immediate;

SQL>STARTUP

一切恢复正常
