1 关闭centos防火墙
```
systemctl disable firewalld
systemctl stop firewalld
```
2 安装etcd和kubernetes 会自动安装docker
```
yum install -y etcd kubernetes
```
安装过程可以会出现问题，先执行 yum clean all然后在执行一遍
yum install -y etcd kubernetes 如果已经安装了docker 请先卸载
```
[root@localhost ~]# systemctl disable firewalld
Removed symlink /etc/systemd/system/dbus-org.fedoraproject.FirewallD1.service.
Removed symlink /etc/systemd/system/basic.target.wants/firewalld.service.
[root@localhost ~]# systemctl stop firewalld
[root@localhost ~]# yum install -y etcd kubernetes
已加载插件：fastestmirror
base                                                                                 | 3.6 kB  00:00:00     
extras                                                                               | 3.4 kB  00:00:00     
updates                                                                              | 3.4 kB  00:00:00     
(1/4): extras/7/x86_64/primary_db                                                    | 145 kB  00:00:01     
(2/4): base/7/x86_64/group_gz                                                        | 156 kB  00:00:01     
(3/4): updates/7/x86_64/primary_db                                                   | 5.2 MB  00:00:07     
(4/4): base/7/x86_64/primary_db                                                      | 5.7 MB  00:00:59     
Determining fastest mirrors
 * base: mirrors.aliyun.com
 * extras: mirrors.aliyun.com
 * updates: mirrors.tuna.tsinghua.edu.cn
正在解决依赖关系
--> 正在检查事务
---> 软件包 etcd.x86_64.0.3.2.9-3.el7 将被 安装
---> 软件包 kubernetes.x86_64.0.1.5.2-0.7.git269f928.el7 将被 安装
--> 正在处理依赖关系 kubernetes-node = 1.5.2-0.7.git269f928.el7，它被软件包 kubernetes-1.5.2-0.7.git269f928.el7.x86_64 需要
--> 正在处理依赖关系 kubernetes-master = 1.5.2-0.7.git269f928.el7，它被软件包 kubernetes-1.5.2-0.7.git269f928.el7.x86_64 需要
--> 正在检查事务
---> 软件包 kubernetes-master.x86_64.0.1.5.2-0.7.git269f928.el7 将被 安装
--> 正在处理依赖关系 kubernetes-client = 1.5.2-0.7.git269f928.el7，它被软件包 kubernetes-master-1.5.2-0.7.git269f928.el7.x86_64 需要
---> 软件包 kubernetes-node.x86_64.0.1.5.2-0.7.git269f928.el7 将被 安装
--> 正在处理依赖关系 socat，它被软件包 kubernetes-node-1.5.2-0.7.git269f928.el7.x86_64 需要
--> 正在处理依赖关系 docker，它被软件包 kubernetes-node-1.5.2-0.7.git269f928.el7.x86_64 需要
--> 正在处理依赖关系 conntrack-tools，它被软件包 kubernetes-node-1.5.2-0.7.git269f928.el7.x86_64 需要
--> 正在检查事务
---> 软件包 conntrack-tools.x86_64.0.1.4.4-3.el7_3 将被 安装
--> 正在处理依赖关系 libnetfilter_conntrack >= 1.0.6，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
--> 正在处理依赖关系 libnetfilter_cttimeout.so.1(LIBNETFILTER_CTTIMEOUT_1.1)(64bit)，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
--> 正在处理依赖关系 libnetfilter_cttimeout.so.1(LIBNETFILTER_CTTIMEOUT_1.0)(64bit)，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
--> 正在处理依赖关系 libnetfilter_cthelper.so.0(LIBNETFILTER_CTHELPER_1.0)(64bit)，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
--> 正在处理依赖关系 libnetfilter_queue.so.1()(64bit)，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
--> 正在处理依赖关系 libnetfilter_cttimeout.so.1()(64bit)，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
--> 正在处理依赖关系 libnetfilter_cthelper.so.0()(64bit)，它被软件包 conntrack-tools-1.4.4-3.el7_3.x86_64 需要
---> 软件包 docker.x86_64.2.1.12.6-68.gitec8512b.el7.centos 将被 安装
--> 正在处理依赖关系 docker-common = 2:1.12.6-68.gitec8512b.el7.centos，它被软件包 2:docker-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 docker-client = 2:1.12.6-68.gitec8512b.el7.centos，它被软件包 2:docker-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 libseccomp.so.2()(64bit)，它被软件包 2:docker-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
---> 软件包 kubernetes-client.x86_64.0.1.5.2-0.7.git269f928.el7 将被 安装
---> 软件包 socat.x86_64.0.1.7.3.2-2.el7 将被 安装
--> 正在检查事务
---> 软件包 docker-client.x86_64.2.1.12.6-68.gitec8512b.el7.centos 将被 安装
---> 软件包 docker-common.x86_64.2.1.12.6-68.gitec8512b.el7.centos 将被 安装
--> 正在处理依赖关系 skopeo-containers >= 0.1.24-3，它被软件包 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 oci-umount >= 2:2.0.0-1，它被软件包 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 oci-systemd-hook >= 1:0.1.4-9，它被软件包 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 oci-register-machine >= 1:0-3.10，它被软件包 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 container-storage-setup >= 0.7.0-1，它被软件包 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
--> 正在处理依赖关系 container-selinux >= 2:2.21-2，它被软件包 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64 需要
---> 软件包 libnetfilter_conntrack.x86_64.0.1.0.4-2.el7 将被 升级
---> 软件包 libnetfilter_conntrack.x86_64.0.1.0.6-1.el7_3 将被 更新
---> 软件包 libnetfilter_cthelper.x86_64.0.1.0.0-9.el7 将被 安装
---> 软件包 libnetfilter_cttimeout.x86_64.0.1.0.0-6.el7 将被 安装
---> 软件包 libnetfilter_queue.x86_64.0.1.0.2-2.el7_2 将被 安装
---> 软件包 libseccomp.x86_64.0.2.3.1-3.el7 将被 安装
--> 正在检查事务
---> 软件包 container-selinux.noarch.2.2.33-1.git86f33cd.el7 将被 安装
--> 正在处理依赖关系 policycoreutils >= 2.5-11，它被软件包 2:container-selinux-2.33-1.git86f33cd.el7.noarch 需要
--> 正在处理依赖关系 policycoreutils-python，它被软件包 2:container-selinux-2.33-1.git86f33cd.el7.noarch 需要
---> 软件包 container-storage-setup.noarch.0.0.8.0-3.git1d27ecf.el7 将被 安装
---> 软件包 oci-register-machine.x86_64.1.0-3.13.gitcd1e331.el7 将被 安装
---> 软件包 oci-systemd-hook.x86_64.1.0.1.14-1.git1ba44c6.el7 将被 安装
--> 正在处理依赖关系 libyajl.so.2()(64bit)，它被软件包 1:oci-systemd-hook-0.1.14-1.git1ba44c6.el7.x86_64 需要
---> 软件包 oci-umount.x86_64.2.2.3.0-1.git51e7c50.el7 将被 安装
---> 软件包 skopeo-containers.x86_64.1.0.1.26-2.dev.git2e8377a.el7.centos 将被 安装
--> 正在检查事务
---> 软件包 policycoreutils.x86_64.0.2.5-8.el7 将被 升级
---> 软件包 policycoreutils.x86_64.0.2.5-17.1.el7 将被 更新
---> 软件包 policycoreutils-python.x86_64.0.2.5-17.1.el7 将被 安装
--> 正在处理依赖关系 setools-libs >= 3.3.8-1，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libsemanage-python >= 2.5-5，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 audit-libs-python >= 2.1.3-4，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 python-IPy，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libqpol.so.1(VERS_1.4)(64bit)，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libqpol.so.1(VERS_1.2)(64bit)，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libcgroup，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libapol.so.4(VERS_4.0)(64bit)，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 checkpolicy，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libqpol.so.1()(64bit)，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
--> 正在处理依赖关系 libapol.so.4()(64bit)，它被软件包 policycoreutils-python-2.5-17.1.el7.x86_64 需要
---> 软件包 yajl.x86_64.0.2.0.4-4.el7 将被 安装
--> 正在检查事务
---> 软件包 audit-libs-python.x86_64.0.2.7.6-3.el7 将被 安装
--> 正在处理依赖关系 audit-libs(x86-64) = 2.7.6-3.el7，它被软件包 audit-libs-python-2.7.6-3.el7.x86_64 需要
---> 软件包 checkpolicy.x86_64.0.2.5-4.el7 将被 安装
---> 软件包 libcgroup.x86_64.0.0.41-13.el7 将被 安装
---> 软件包 libsemanage-python.x86_64.0.2.5-8.el7 将被 安装
--> 正在处理依赖关系 libsemanage = 2.5-8.el7，它被软件包 libsemanage-python-2.5-8.el7.x86_64 需要
---> 软件包 python-IPy.noarch.0.0.75-6.el7 将被 安装
---> 软件包 setools-libs.x86_64.0.3.3.8-1.1.el7 将被 安装
--> 正在检查事务
---> 软件包 audit-libs.x86_64.0.2.6.5-3.el7 将被 升级
--> 正在处理依赖关系 audit-libs(x86-64) = 2.6.5-3.el7，它被软件包 audit-2.6.5-3.el7.x86_64 需要
---> 软件包 audit-libs.x86_64.0.2.7.6-3.el7 将被 更新
---> 软件包 libsemanage.x86_64.0.2.5-4.el7 将被 升级
---> 软件包 libsemanage.x86_64.0.2.5-8.el7 将被 更新
--> 正在检查事务
---> 软件包 audit.x86_64.0.2.6.5-3.el7 将被 升级
---> 软件包 audit.x86_64.0.2.7.6-3.el7 将被 更新
--> 解决依赖关系完成

依赖关系解决

============================================================================================================
 Package                       架构         版本                                         源            大小
============================================================================================================
正在安装:
 etcd                          x86_64       3.2.9-3.el7                                  extras       8.8 M
 kubernetes                    x86_64       1.5.2-0.7.git269f928.el7                     extras        36 k
为依赖而安装:
 audit-libs-python             x86_64       2.7.6-3.el7                                  base          73 k
 checkpolicy                   x86_64       2.5-4.el7                                    base         290 k
 conntrack-tools               x86_64       1.4.4-3.el7_3                                base         186 k
 container-selinux             noarch       2:2.33-1.git86f33cd.el7                      extras        31 k
 container-storage-setup       noarch       0.8.0-3.git1d27ecf.el7                       extras        33 k
 docker                        x86_64       2:1.12.6-68.gitec8512b.el7.centos            extras        15 M
 docker-client                 x86_64       2:1.12.6-68.gitec8512b.el7.centos            extras       3.4 M
 docker-common                 x86_64       2:1.12.6-68.gitec8512b.el7.centos            extras        82 k
 kubernetes-client             x86_64       1.5.2-0.7.git269f928.el7                     extras        14 M
 kubernetes-master             x86_64       1.5.2-0.7.git269f928.el7                     extras        25 M
 kubernetes-node               x86_64       1.5.2-0.7.git269f928.el7                     extras        14 M
 libcgroup                     x86_64       0.41-13.el7                                  base          65 k
 libnetfilter_cthelper         x86_64       1.0.0-9.el7                                  base          18 k
 libnetfilter_cttimeout        x86_64       1.0.0-6.el7                                  base          18 k
 libnetfilter_queue            x86_64       1.0.2-2.el7_2                                base          23 k
 libseccomp                    x86_64       2.3.1-3.el7                                  base          56 k
 libsemanage-python            x86_64       2.5-8.el7                                    base         104 k
 oci-register-machine          x86_64       1:0-3.13.gitcd1e331.el7                      extras       1.1 M
 oci-systemd-hook              x86_64       1:0.1.14-1.git1ba44c6.el7                    extras        32 k
 oci-umount                    x86_64       2:2.3.0-1.git51e7c50.el7                     extras        30 k
 policycoreutils-python        x86_64       2.5-17.1.el7                                 base         446 k
 python-IPy                    noarch       0.75-6.el7                                   base          32 k
 setools-libs                  x86_64       3.3.8-1.1.el7                                base         612 k
 skopeo-containers             x86_64       1:0.1.26-2.dev.git2e8377a.el7.centos         extras        12 k
 socat                         x86_64       1.7.3.2-2.el7                                base         290 k
 yajl                          x86_64       2.0.4-4.el7                                  base          39 k
为依赖而更新:
 audit                         x86_64       2.7.6-3.el7                                  base         242 k
 audit-libs                    x86_64       2.7.6-3.el7                                  base          96 k
 libnetfilter_conntrack        x86_64       1.0.6-1.el7_3                                base          55 k
 libsemanage                   x86_64       2.5-8.el7                                    base         145 k
 policycoreutils               x86_64       2.5-17.1.el7                                 base         858 k

事务概要
============================================================================================================
安装  2 软件包 (+26 依赖软件包)
升级           (  5 依赖软件包)

总下载量：85 M
Downloading packages:
Delta RPMs disabled because /usr/bin/applydeltarpm not installed.
警告：/var/cache/yum/x86_64/7/base/packages/checkpolicy-2.5-4.el7.x86_64.rpm: 头V3 RSA/SHA256 Signature, 密 钥 ID f4a80eb5: NOKEY
checkpolicy-2.5-4.el7.x86_64.rpm 的公钥尚未安装
(1/33): checkpolicy-2.5-4.el7.x86_64.rpm                                             | 290 kB  00:00:00     
(2/33): audit-libs-2.7.6-3.el7.x86_64.rpm                                            |  96 kB  00:00:00     
(3/33): audit-libs-python-2.7.6-3.el7.x86_64.rpm                                     |  73 kB  00:00:01     
container-selinux-2.33-1.git86f33cd.el7.noarch.rpm 的公钥尚未安装         ] 664 kB/s | 715 kB  00:02:10 ETA 
(4/33): container-selinux-2.33-1.git86f33cd.el7.noarch.rpm                           |  31 kB  00:00:00     
(5/33): audit-2.7.6-3.el7.x86_64.rpm                                                 | 242 kB  00:00:01     
(6/33): container-storage-setup-0.8.0-3.git1d27ecf.el7.noarch.rpm                    |  33 kB  00:00:01     
(7/33): conntrack-tools-1.4.4-3.el7_3.x86_64.rpm                                     | 186 kB  00:00:02     
(8/33): kubernetes-1.5.2-0.7.git269f928.el7.x86_64.rpm                               |  36 kB  00:00:00     
(9/33): docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64.rpm                     |  82 kB  00:00:02     
(10/33): etcd-3.2.9-3.el7.x86_64.rpm                                                 | 8.8 MB  00:00:14     
(11/33): docker-1.12.6-68.gitec8512b.el7.centos.x86_64.rpm                           |  15 MB  00:00:32     
(12/33): libcgroup-0.41-13.el7.x86_64.rpm                                            |  65 kB  00:00:00     
(13/33): libnetfilter_conntrack-1.0.6-1.el7_3.x86_64.rpm                             |  55 kB  00:00:00     
(14/33): libnetfilter_cthelper-1.0.0-9.el7.x86_64.rpm                                |  18 kB  00:00:00     
(15/33): libnetfilter_cttimeout-1.0.0-6.el7.x86_64.rpm                               |  18 kB  00:00:00     
(16/33): libnetfilter_queue-1.0.2-2.el7_2.x86_64.rpm                                 |  23 kB  00:00:00     
(17/33): libseccomp-2.3.1-3.el7.x86_64.rpm                                           |  56 kB  00:00:00     
(18/33): libsemanage-2.5-8.el7.x86_64.rpm                                            | 145 kB  00:00:01     
(19/33): libsemanage-python-2.5-8.el7.x86_64.rpm                                     | 104 kB  00:00:02     
(20/33): kubernetes-client-1.5.2-0.7.git269f928.el7.x86_64.rpm                       |  14 MB  00:00:53     
(21/33): oci-systemd-hook-0.1.14-1.git1ba44c6.el7.x86_64.rpm                         |  32 kB  00:00:00     
(22/33): oci-umount-2.3.0-1.git51e7c50.el7.x86_64.rpm                                |  30 kB  00:00:00     
(23/33): policycoreutils-2.5-17.1.el7.x86_64.rpm                                     | 858 kB  00:00:05     
(24/33): docker-client-1.12.6-68.gitec8512b.el7.centos.x86_64.rpm                    | 3.4 MB  00:01:02     
(25/33): python-IPy-0.75-6.el7.noarch.rpm                                            |  32 kB  00:00:00     
(26/33): policycoreutils-python-2.5-17.1.el7.x86_64.rpm                              | 446 kB  00:00:04     
(27/33): skopeo-containers-0.1.26-2.dev.git2e8377a.el7.centos.x86_64.rpm             |  12 kB  00:00:00     
(28/33): socat-1.7.3.2-2.el7.x86_64.rpm                                              | 290 kB  00:00:02     
(29/33): yajl-2.0.4-4.el7.x86_64.rpm                                                 |  39 kB  00:00:00     
(30/33): kubernetes-node-1.5.2-0.7.git269f928.el7.x86_64.rpm                         |  14 MB  00:00:52     
(31/33): setools-libs-3.3.8-1.1.el7.x86_64.rpm                                       | 612 kB  00:00:04     
(32/33): kubernetes-master-1.5.2-0.7.git269f928.el7.x86_64.rpm                       |  25 MB  00:02:11     
(33/33): oci-register-machine-0-3.13.gitcd1e331.el7.x86_64.rpm                       | 1.1 MB  00:02:19     
------------------------------------------------------------------------------------------------------------
总计                                                                        482 kB/s |  85 MB  00:03:01     
从 file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 检索密钥
导入 GPG key 0xF4A80EB5:
 用户ID     : "CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org>"
 指纹       : 6341 ab27 53d7 8a78 a7c2 7bb1 24c6 a8a7 f4a8 0eb5
 软件包     : centos-release-7-3.1611.el7.centos.x86_64 (@anaconda)
 来自       : /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  正在更新    : audit-libs-2.7.6-3.el7.x86_64                                                          1/38 
  正在更新    : libsemanage-2.5-8.el7.x86_64                                                           2/38 
  正在更新    : policycoreutils-2.5-17.1.el7.x86_64                                                    3/38 
  正在安装    : yajl-2.0.4-4.el7.x86_64                                                                4/38 
  正在安装    : kubernetes-client-1.5.2-0.7.git269f928.el7.x86_64                                      5/38 
  正在安装    : kubernetes-master-1.5.2-0.7.git269f928.el7.x86_64                                      6/38 
  正在安装    : 1:oci-systemd-hook-0.1.14-1.git1ba44c6.el7.x86_64                                      7/38 
  正在安装    : 2:oci-umount-2.3.0-1.git51e7c50.el7.x86_64                                             8/38 
  正在安装    : libsemanage-python-2.5-8.el7.x86_64                                                    9/38 
  正在安装    : audit-libs-python-2.7.6-3.el7.x86_64                                                  10/38 
  正在安装    : setools-libs-3.3.8-1.1.el7.x86_64                                                     11/38 
  正在安装    : container-storage-setup-0.8.0-3.git1d27ecf.el7.noarch                                 12/38 
  正在安装    : socat-1.7.3.2-2.el7.x86_64                                                            13/38 
  正在安装    : libcgroup-0.41-13.el7.x86_64                                                          14/38 
  正在安装    : python-IPy-0.75-6.el7.noarch                                                          15/38 
  正在安装    : libnetfilter_queue-1.0.2-2.el7_2.x86_64                                               16/38 
  正在安装    : 1:oci-register-machine-0-3.13.gitcd1e331.el7.x86_64                                   17/38 
  正在安装    : checkpolicy-2.5-4.el7.x86_64                                                          18/38 
  正在安装    : policycoreutils-python-2.5-17.1.el7.x86_64                                            19/38 
  正在安装    : 2:container-selinux-2.33-1.git86f33cd.el7.noarch                                      20/38 
  正在安装    : libnetfilter_cthelper-1.0.0-9.el7.x86_64                                              21/38 
  正在更新    : libnetfilter_conntrack-1.0.6-1.el7_3.x86_64                                           22/38 
  正在安装    : libseccomp-2.3.1-3.el7.x86_64                                                         23/38 
  正在安装    : 1:skopeo-containers-0.1.26-2.dev.git2e8377a.el7.centos.x86_64                         24/38 
  正在安装    : 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64                                25/38 
  正在安装    : 2:docker-client-1.12.6-68.gitec8512b.el7.centos.x86_64                                26/38 
  正在安装    : 2:docker-1.12.6-68.gitec8512b.el7.centos.x86_64                                       27/38 
  正在安装    : libnetfilter_cttimeout-1.0.0-6.el7.x86_64                                             28/38 
  正在安装    : conntrack-tools-1.4.4-3.el7_3.x86_64                                                  29/38 
  正在安装    : kubernetes-node-1.5.2-0.7.git269f928.el7.x86_64                                       30/38 
  正在安装    : kubernetes-1.5.2-0.7.git269f928.el7.x86_64                                            31/38 
  正在更新    : audit-2.7.6-3.el7.x86_64                                                              32/38 
  正在安装    : etcd-3.2.9-3.el7.x86_64                                                               33/38 
  清理        : policycoreutils-2.5-8.el7.x86_64                                                      34/38 
  清理        : libsemanage-2.5-4.el7.x86_64                                                          35/38 
  清理        : audit-2.6.5-3.el7.x86_64                                                              36/38 
  清理        : audit-libs-2.6.5-3.el7.x86_64                                                         37/38 
  清理        : libnetfilter_conntrack-1.0.4-2.el7.x86_64                                             38/38 
  验证中      : libnetfilter_cttimeout-1.0.0-6.el7.x86_64                                              1/38 
  验证中      : 2:container-selinux-2.33-1.git86f33cd.el7.noarch                                       2/38 
  验证中      : 1:skopeo-containers-0.1.26-2.dev.git2e8377a.el7.centos.x86_64                          3/38 
  验证中      : libseccomp-2.3.1-3.el7.x86_64                                                          4/38 
  验证中      : libnetfilter_conntrack-1.0.6-1.el7_3.x86_64                                            5/38 
  验证中      : etcd-3.2.9-3.el7.x86_64                                                                6/38 
  验证中      : libnetfilter_cthelper-1.0.0-9.el7.x86_64                                               7/38 
  验证中      : conntrack-tools-1.4.4-3.el7_3.x86_64                                                   8/38 
  验证中      : checkpolicy-2.5-4.el7.x86_64                                                           9/38 
  验证中      : 1:oci-register-machine-0-3.13.gitcd1e331.el7.x86_64                                   10/38 
  验证中      : kubernetes-client-1.5.2-0.7.git269f928.el7.x86_64                                     11/38 
  验证中      : libnetfilter_queue-1.0.2-2.el7_2.x86_64                                               12/38 
  验证中      : 2:docker-common-1.12.6-68.gitec8512b.el7.centos.x86_64                                13/38 
  验证中      : 2:docker-1.12.6-68.gitec8512b.el7.centos.x86_64                                       14/38 
  验证中      : 2:docker-client-1.12.6-68.gitec8512b.el7.centos.x86_64                                15/38 
  验证中      : python-IPy-0.75-6.el7.noarch                                                          16/38 
  验证中      : libcgroup-0.41-13.el7.x86_64                                                          17/38 
  验证中      : audit-2.7.6-3.el7.x86_64                                                              18/38 
  验证中      : policycoreutils-2.5-17.1.el7.x86_64                                                   19/38 
  验证中      : libsemanage-python-2.5-8.el7.x86_64                                                   20/38 
  验证中      : 1:oci-systemd-hook-0.1.14-1.git1ba44c6.el7.x86_64                                     21/38 
  验证中      : audit-libs-2.7.6-3.el7.x86_64                                                         22/38 
  验证中      : 2:oci-umount-2.3.0-1.git51e7c50.el7.x86_64                                            23/38 
  验证中      : kubernetes-master-1.5.2-0.7.git269f928.el7.x86_64                                     24/38 
  验证中      : libsemanage-2.5-8.el7.x86_64                                                          25/38 
  验证中      : yajl-2.0.4-4.el7.x86_64                                                               26/38 
  验证中      : kubernetes-1.5.2-0.7.git269f928.el7.x86_64                                            27/38 
  验证中      : socat-1.7.3.2-2.el7.x86_64                                                            28/38 
  验证中      : audit-libs-python-2.7.6-3.el7.x86_64                                                  29/38 
  验证中      : kubernetes-node-1.5.2-0.7.git269f928.el7.x86_64                                       30/38 
  验证中      : policycoreutils-python-2.5-17.1.el7.x86_64                                            31/38 
  验证中      : container-storage-setup-0.8.0-3.git1d27ecf.el7.noarch                                 32/38 
  验证中      : setools-libs-3.3.8-1.1.el7.x86_64                                                     33/38 
  验证中      : policycoreutils-2.5-8.el7.x86_64                                                      34/38 
  验证中      : libnetfilter_conntrack-1.0.4-2.el7.x86_64                                             35/38 
  验证中      : audit-libs-2.6.5-3.el7.x86_64                                                         36/38 
  验证中      : libsemanage-2.5-4.el7.x86_64                                                          37/38 
  验证中      : audit-2.6.5-3.el7.x86_64                                                              38/38 

已安装:
  etcd.x86_64 0:3.2.9-3.el7                   kubernetes.x86_64 0:1.5.2-0.7.git269f928.el7                  

作为依赖被安装:
  audit-libs-python.x86_64 0:2.7.6-3.el7                                                                    
  checkpolicy.x86_64 0:2.5-4.el7                                                                            
  conntrack-tools.x86_64 0:1.4.4-3.el7_3                                                                    
  container-selinux.noarch 2:2.33-1.git86f33cd.el7                                                          
  container-storage-setup.noarch 0:0.8.0-3.git1d27ecf.el7                                                   
  docker.x86_64 2:1.12.6-68.gitec8512b.el7.centos                                                           
  docker-client.x86_64 2:1.12.6-68.gitec8512b.el7.centos                                                    
  docker-common.x86_64 2:1.12.6-68.gitec8512b.el7.centos                                                    
  kubernetes-client.x86_64 0:1.5.2-0.7.git269f928.el7                                                       
  kubernetes-master.x86_64 0:1.5.2-0.7.git269f928.el7                                                       
  kubernetes-node.x86_64 0:1.5.2-0.7.git269f928.el7                                                         
  libcgroup.x86_64 0:0.41-13.el7                                                                            
  libnetfilter_cthelper.x86_64 0:1.0.0-9.el7                                                                
  libnetfilter_cttimeout.x86_64 0:1.0.0-6.el7                                                               
  libnetfilter_queue.x86_64 0:1.0.2-2.el7_2                                                                 
  libseccomp.x86_64 0:2.3.1-3.el7                                                                           
  libsemanage-python.x86_64 0:2.5-8.el7                                                                     
  oci-register-machine.x86_64 1:0-3.13.gitcd1e331.el7                                                       
  oci-systemd-hook.x86_64 1:0.1.14-1.git1ba44c6.el7                                                         
  oci-umount.x86_64 2:2.3.0-1.git51e7c50.el7                                                                
  policycoreutils-python.x86_64 0:2.5-17.1.el7                                                              
  python-IPy.noarch 0:0.75-6.el7                                                                            
  setools-libs.x86_64 0:3.3.8-1.1.el7                                                                       
  skopeo-containers.x86_64 1:0.1.26-2.dev.git2e8377a.el7.centos                                             
  socat.x86_64 0:1.7.3.2-2.el7                                                                              
  yajl.x86_64 0:2.0.4-4.el7                                                                                 

作为依赖被升级:
  audit.x86_64 0:2.7.6-3.el7                                  audit-libs.x86_64 0:2.7.6-3.el7              
  libnetfilter_conntrack.x86_64 0:1.0.6-1.el7_3               libsemanage.x86_64 0:2.5-8.el7               
  policycoreutils.x86_64 0:2.5-17.1.el7                      

完毕！
[root@localhost ~]# 

```
3 安装好后修改配置文件
docker :
```
vi /etc/sysconfig/docker
```
OPTIONS='--selinux-enabled=false --insecure-registry gcr.io'
![image.png](http://upload-images.jianshu.io/upload_images/2787821-10bd54669097928a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

 kubernetes apiserver配置文件为 /etc/kubernetes/apiserver,把--admission_sontrol参数中的ServiceAccount删除
```
vi /etc/kubernetes/apiserver 
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-026a223b08f91078.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


4 按顺序启动服务
```
systemctl start etcd
systemctl start docker
systemctl start kube-apiserver
systemctl start kube-controller-manager
systemctl start kube-scheduler
systemctl start kubelet
systemctl start kube-proxy
```
至此，kubernetes环境安装完成

