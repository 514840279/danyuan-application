[Oracle]中的GOTO用法
**[sql]**

    DECLARE  
     x number;  
    BEGIN  
    x:=9;  
    <<repeat_loop>>  --循环点  
    x:=x-1;  
    DBMS_OUTPUT.PUT_LINE(X);  
    IF X>0  
    THEN  
    GOTO repeat_loop;  --当x的值小于9时,就goto到repeat_loop  
    END IF;  
    END;  
    /  

ORACLE中的FOR循环用法
**[sql]** 

    DECLARE  
    X number;  --声明变量  
    BEGIN  
    x:=1;    --给初值  
    FOR X IN REVERSE 1..10 LOOP   --reverse由大到小  
    DBMS_OUTPUT.PUT_LINE('内:x='||x);  
    END LOOP;  
    DBMS_OUTPUT.PUT_LINE('end loop:x='||X);   --x=1  
    END;  
    /  

ORACLE中的WHILE循环用法
**[sql]**

    DECLARE  
    x number;  
    BEGIN  
    x:=0;  
    WHILE x<9 LOOP  
    x:=x+1;  
    DBMS_OUTPUT.PUT_LINE('内:x='||x);  
    END LOOP;  
    DBMS_OUTPUT.PUT_LINE('外:x='||x);  
    END;  
    /  

ORACLE中的LOOP循环用法
**[sql]**

    DECLARE  
    x number;  
    BEGIN  
    x:=0;  
    LOOP  
    x:=x+1;  
    EXIT WHEN x>9;  
    DBMS_OUTPUT.PUT_LINE('内:x='||x);  
    END LOOP;  
    DBMS_OUTPUT.PUT_LINE('外:x='||x);  
    END;  
    /   
