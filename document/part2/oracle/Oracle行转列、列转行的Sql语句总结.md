[Oracle行转列、列转行的Sql语句总结](http://www.cnblogs.com/mellowsmile/p/4642306.html)

多行转字符串
这个比较简单，用||或concat函数可以实现
SQL Code
>selectconcat(id,username)strfromapp_user
selectid||usernamestrfromapp_user

字符串转多列
实际上就是拆分字符串的问题，可以使用 substr、instr、regexp_substr函数方式
字符串转多行
使用union all函数等方式
wm_concat函数
首先让我们来看看这个神奇的函数**wm_concat**(列名),该函数可以把列值以","号分隔起来,并显示成一行,接下来上例子,看看这个神奇的函数如何应用准备测试数据
SQL Code
>createtabletest(idnumber,namevarchar2(20));
insertintotestvalues(1,'a');
insertintotestvalues(1,'b');
insertintotestvalues(1,'c');
insertintotestvalues(2,'d');
insertintotestvalues(2,'e');

效果1 : 行转列 ，默认逗号隔开
SQL Code
>selectwm_concat(name)namefromtest;

![](http://upload-images.jianshu.io/upload_images/2787821-87a4757ec18a5b42.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
效果2: 把结果里的逗号替换成"|"
SQL Code

>selectreplace(wm_concat(name),',','|')fromtest;

 
![](http://upload-images.jianshu.io/upload_images/2787821-3b54e333f0beeb2a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
效果3: 按ID分组合并name
SQL Code

>selectid,wm_concat(name)namefromtestgroupbyid;

 
![](http://upload-images.jianshu.io/upload_images/2787821-13a1a41866856b0f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
sql语句等同于下面的sql语句:
SQL Code

--------适用范围：8i,9i,10g及以后版本（MAX+DECODE）
>selectid,max(decode(rn,1,name,null))||max(decode(rn,2,','||name,null))||max(decode(rn,3,','||name,null))strfrom(selectid,name,row_number()over(partitionbyidorderbyname)asrnfromtest)tgroupbyidorderby1;

--------适用范围：8i,9i,10g及以后版本（ROW_NUMBER+LEAD）
>selectid,strfrom(selectid,row_number()over(partitionbyidorderbyname)asrn,name||lead(','||name,1)over(partitionbyidorderbyname)||lead(','||name,2)over(partitionbyidorderbyname)||lead(','||name,3)over(partitionbyidorderbyname)asstrfromtest)wherern=1orderby1;

--------适用范围：10g及以后版本（MODEL）
>selectid,substr(str,2)strfromtestmodelreturnupdatedrowspartitionby(id)dimensionby(row_number()over(partitionbyidorderbyname)asrn)measures(cast(nameasvarchar2(20))asstr)rulesupsertiterate(3)until(presentv(str[iteration_number+2],1,0)=0)(str[0]=str[0]||','||str[iteration_number+1])orderby1;

--------适用范围：8i,9i,10g及以后版本（MAX+DECODE）
>selectt.idid,max(substr(sys_connect_by_path(t.name,','),2))strfrom(selectid,name,row_number()over(partitionbyidorderbyname)rnfromtest)tstartwithrn=1connectbyrn=priorrn+1andid=prioridgroupbyt.id;

 
懒人扩展用法:
**案例:**
我要写一个视图,类似"create or replace view as select 字段1,...字段50 from tablename" ,基表有50多个字段,要是靠手工写太麻烦了,有没有什么简便的方法? 当然有了,看我如果应用wm_concat来让这个需求变简单，假设我的APP_USER表中有（id,username,password,age）4个字段。查询结果如下
SQL Code
/**这里的表名默认区分大小写*/
>select'createorreplaceviewasselect'||wm_concat(column_name)||'fromAPP_USER'sqlStr
fromuser_tab_columns
wheretable_name='APP_USER';

 
![](http://upload-images.jianshu.io/upload_images/2787821-642e756af448c5c9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
利用系统表方式查询
SQL Code

>select*fromuser_tab_columns

Oracle 11g 行列互换 pivot 和 unpivot 说明
在Oracle 11g中，Oracle 又增加了2个查询：**pivot**（行转列） 和**unpivot**（列转行）
参考：http://blog.csdn.net/tianlesoftware/article/details/7060306、http://www.oracle.com/technetwork/cn/articles/11g-pivot-101924-zhs.[html](http://www.2cto.com/kf/qianduan/css/)
google 一下，网上有一篇比较详细的文档：http://www.oracle-developer.net/display.php?id=506
pivot 列转行
测试数据 (id，类型名称，销售数量)，案例：根据水果的类型查询出一条数据显示出每种类型的销售数量。
SQL Code

>createtabledemo(idint,namevarchar(20),numsint);----创建表insertintodemovalues(1,'苹果',1000);
insertintodemovalues(2,'苹果',2000);
insertintodemovalues(3,'苹果',4000);
insertintodemovalues(4,'橘子',5000);
insertintodemovalues(5,'橘子',3000);
insertintodemovalues(6,'葡萄',3500);
insertintodemovalues(7,'芒果',4200);
insertintodemovalues(8,'芒果',5500);

 
![](http://upload-images.jianshu.io/upload_images/2787821-fe99f14ad79229f8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**分组查询 （**当然这是不符合查询一条数据的要求的）
SQL Code
>selectname,sum(nums)numsfromdemogroupbyname

![](http://upload-images.jianshu.io/upload_images/2787821-7fe81c4f1ae4caac.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**行转列查询**
SQL Code
>select*from(selectname,numsfromdemo)pivot(sum(nums)fornamein('苹果'苹果,'橘子','葡萄','芒果'));

![](http://upload-images.jianshu.io/upload_images/2787821-437203273d820ca7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**注意**： pivot（聚合函数 for 列名 in（类型）） ，其中 in('') 中可以指定别名，in中还可以指定子查询，比如 ``select distinct code from customers``
当然也可以不使用pivot函数，等同于下列语句，只是代码比较长，容易理解
SQL Code
>select*from(selectsum(nums)苹果
fromdemowherename='苹果'),
(selectsum(nums)橘子fromdemowherename='橘子'),
(selectsum(nums)葡萄fromdemowherename='葡萄'),
(selectsum(nums)芒果fromdemowherename='芒果');

unpivot 行转列
顾名思义就是将多列转换成1列中去**案例：**现在有一个水果表，记录了4个季度的销售数量，现在要将每种水果的每个季度的销售情况用多行数据展示。
创建表和数据
SQL Code
>createtableFruit(idint,namevarchar(20),Q1int,Q2int,Q3int,Q4int);
insertintoFruitvalues(1,'苹果',1000,2000,3300,5000);
insertintoFruitvalues(2,'橘子',3000,3000,3200,1500);
insertintoFruitvalues(3,'香蕉',2500,3500,2200,2500);
insertintoFruitvalues(4,'葡萄',1500,2500,1200,3500);
select*fromFruit

![](http://upload-images.jianshu.io/upload_images/2787821-c6be1b379cd46e74.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
列转行查询
SQL Code
>selectid,name,jidu,xiaoshoufromFruitunpivot(xiaoshouforjiduin(q1,q2,q3,q4))

注意： unpivot没有聚合函数，xiaoshou、jidu字段也是临时的变量
![](http://upload-images.jianshu.io/upload_images/2787821-e7b182877719e153.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
同样不使用unpivot也可以实现同样的效果，只是sql语句会很长，而且执行速度效率也没有前者高
SQL Code
>selectid,name,'Q1'jidu,(selectq1fromfruitwhereid=f.id)xiaoshou
fromFruitfunionselectid,name,'Q2'jidu,
(selectq2fromfruitwhereid=f.id)xiaoshou
fromFruitfunionselectid,name,'Q3'jidu,
(selectq3fromfruitwhereid=f.id)xiaoshou
fromFruitfunionselectid,name,'Q4'jidu,
(selectq4fromfruitwhereid=f.id)xiaoshou
fromFruitf

XML类型
上述pivot列转行示例中，你已经知道了需要查询的类型有哪些，用in()的方式包含，假设如果您不知道都有哪些值，您怎么构建查询呢？
pivot操作中的另一个子句 XML 可用于解决此问题。该子句允许您以 XML 格式创建执行了 pivot 操作的输出，在此输出中，您可以指定一个特殊的子句 ANY 而非文字值
示例如下：
SQL Code
>select*from(selectname,numsas"PurchaseFrequency"fromdemot)pivotxml(sum(nums)fornamein(any))

![](http://upload-images.jianshu.io/upload_images/2787821-dc3c56139817bc2d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
如您所见，列 NAME_XML 是 XMLTYPE，其中根元素是 <PivotSet>。每个值以名称-值元素对的形式表示。您可以使用任何 XML 分析器中的输出生成更有用的输出。
![](http://upload-images.jianshu.io/upload_images/2787821-40910651e3710aba.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
对于该xml文件的解析，贴代码如下：
SQL Code
>createorreplaceprocedureljz_pivot_xml_sp(pi_table_namevarchar2,pi_column_namevarchar2,pi_create_tablevarchar2)
asv_columnnvarchar2(50);
v_countnumber:=0;
v_inumber;
v_parent_nodenvarchar2(4000);
v_child_nodenvarchar2(4000);
v_overboolean:=false;
v_tmpnvarchar2(50);
v_existsnodenumber;
v_sqlclob;
v_namevarchar2(30);
v_name_xmlxmltype;beginv_sql:='selectx.*from'||pi_table_name||'a,xmltable(''/PivotSet''passinga.'||pi_column_name||'columns';
v_parent_node:='/PivotSet';
v_child_node:='item[1]/column[2]';
v_i:=1;executeimmediate'select'||pi_column_name||'from'||pi_table_name||'whererownum=1'intov_name_xml;selectexistsnode(v_name_xml,'/PivotSet/item['||to_char(v_i)||']/column[1]')intov_existsnodefromdual;
whilev_existsnode=1loopexecuteimmediate'selectsubstr(extractvalue('||pi_column_name||',''/PivotSet/item['||to_char(v_i)||']/column[1]''),1,30)from'||pi_table_name||'x'intov_name;
v_sql:=v_sql||'"'||v_name||'"varchar2(30)path''item['||to_char(v_i)||']/column[2]'',';
v_i:=v_i+1;selectexistsnode(v_name_xml,'/PivotSet/item['||to_char(v_i)||']/column[1]')intov_existsnodefromdual;
endloop;
v_sql:=trim(','fromv_sql)||')x';
commit;
selectcount(1)intov_countfromuser_tab_columnswheretable_name=upper(pi_create_table);
ifv_count=0then
executeimmediate'createtable'||pi_create_table||'as'||v_sql;
endif;
end;


第一个参数为要解析xml文件所属数据表，第二个参数为要解析xml所存字段，第三个参数存放解析后的数据集。
测试：
>begin
ljz_pivot_xml_sp('(select * from (select deptno,sal from emp) pivot xml(sum(sal) for deptno in(any)))',
'deptno_xml',
'ljz_pivot_tmp');
end;

![](http://upload-images.jianshu.io/upload_images/2787821-5c2440459d8aaa58.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

初学oracle xml解析，这种方法较为笨拙，一个一个循环列，原型如下：
>selectextractvalue(name_xml,'/PivotSet/item[1]/column[1]')
from(select*from(selectname,numsfromdemo)pivotxml(sum(nums)fornamein(any)))x
whereexistsnode(name_xml,'/PivotSet/item[1]/column[1]')=1;

![](http://upload-images.jianshu.io/upload_images/2787821-5605e1c05640cf9d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
>selectx.*
from(select*
from(selectname,numsfromdemo)
pivotxml(sum(nums)
fornamein(any)))a,
xmltable('/PivotSet'passinga.name_xmlcolumns
芒果varchar2(30)path'item[1]/column[2]',
苹果varchar2(30)path'item[2]/column[2]')x

![](http://upload-images.jianshu.io/upload_images/2787821-3e779e516e6e96c2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
不知是否存在直接进行解析的方法，这种方法还不如直接行列转变，不通过xml转来转去。
>select''''||listagg(substr(name,1,30),q'{','}')withingroup(orderbyname)||''''
from(selectdistinctnamefromdemo);

![](http://images0.cnblogs.com/blog/180599/201507/151511388602629.png)
>select*
from(selectname,numsfromdemo)
pivot(sum(nums)
fornamein('苹果','橘子','葡萄','芒果'));

![](http://upload-images.jianshu.io/upload_images/2787821-bc750db0e5d9e5ac.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这样拼接字符串反而更加方便。

#结论
Pivot为 SQL 语言增添了一个非常重要且实用的功能。您可以使用 pivot 函数针对任何关系表创建一个交叉表报表，而不必编写包含大量 decode 函数的令人费解的、不直观的代码。同样，您可以使用unpivot操作转换任何交叉表报表，以常规关系表的形式对其进行存储。Pivot可以生成常规文本或 XML 格式的输出。如果是 XML 格式的输出，您不必指定 pivot 操作需要搜索的值域。
