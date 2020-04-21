    create table sys_dbms_advi_mess_info (
       uuid varchar2(255 char) not null,
        create_time timestamp,
        create_user varchar2(255 char),
        delete_flag number(10,0),
        discription varchar2(255 char),
        update_time timestamp,
        update_user varchar2(255 char),
        execute_sql varchar2(255 char),
        jdbc_uuid varchar2(255 char),
        message varchar2(255 char),
        table_desc varchar2(255 char),
        table_name varchar2(255 char),
        type varchar2(255 char),
        primary key (uuid)
    );
	
	    create table sys_dbms_chart_dimension (
       uuid varchar2(255 char) not null,
        create_time timestamp,
        create_user varchar2(255 char),
        delete_flag number(10,0),
        discription varchar2(255 char),
        update_time timestamp,
        update_user varchar2(255 char),
        chart_type varchar2(255 char),
        count_type varchar2(255 char),
        db_uuid varchar2(255 char),
        dime_order number(10,0),
        end_num number(10,0),
        group_uuid varchar2(255 char),
        height varchar2(255 char),
        lable_uuid varchar2(255 char),
        lable_uuid2 varchar2(255 char),
        lable_uuid3 varchar2(255 char),
        lable_uuid4 varchar2(255 char),
        start_num number(10,0),
        table_type_uuid varchar2(255 char),
        table_uuid varchar2(255 char),
        theme varchar2(255 char),
        title varchar2(255 char),
        width varchar2(255 char),
        primary key (uuid)
    )
	
	;
	
	    
    create table sys_dbms_chart_dimension_data (
       uuid varchar2(255 char) not null,
        create_time timestamp,
        create_user varchar2(255 char),
        delete_flag number(10,0),
        discription varchar2(255 char),
        update_time timestamp,
        update_user varchar2(255 char),
        cols_desc varchar2(255 char),
        cols_uuid varchar2(255 char),
        conditions varchar2(255 char),
        dime_uuid varchar2(255 char),
        symbol varchar2(255 char),
        primary key (uuid)
    );
	
	    create table sys_dbms_chart_dimension_group (
       uuid varchar2(255 char) not null,
        create_time timestamp,
        create_user varchar2(255 char),
        delete_flag number(10,0),
        discription varchar2(255 char),
        update_time timestamp,
        update_user varchar2(255 char),
        group_order number(10,0),
        theme varchar2(255 char),
        title varchar2(255 char),
        primary key (uuid)
    );
	
	    
    create table sys_dbms_generate_code_info (
       uuid varchar2(255 char) not null,
        create_time timestamp,
        create_user varchar2(255 char),
        delete_flag number(10,0),
        discription varchar2(255 char),
        update_time timestamp,
        update_user varchar2(255 char),
        class_name varchar2(255 char),
        class_path varchar2(255 char),
        generate_controller number(10,0),
        generate_dao number(10,0),
        generate_detail number(10,0),
        generate_doc number(10,0),
        generate_entity number(10,0),
        generate_html number(10,0),
        generate_service number(10,0),
        generate_sql number(10,0),
        jdbc_uuid varchar2(255 char),
        type_uuid varchar2(255 char),
        primary key (uuid)
    );
	
	
    create table sys_user_roles_info (
       roles_id varchar(36) COMMENT '角色id' not null,
        user_id varchar(36) COMMENT '用户id' not null,
        checked boolean COMMENT '选中',
        create_time timestamp default CURRENT_TIMESTAMP COMMENT '录入时间',
        create_user varchar(50) default 'system' COMMENT '录入人员',
        delete_flag int default 0 COMMENT '停用标记',
        discription varchar(200) COMMENT '资源功能描述',
        update_time timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间',
        update_user varchar(50) default 'system'  COMMENT '更新人员',
        primary key (roles_id, user_id)
    );
		
		
		  create table sys_roles_info (
       uuid varchar(36) COMMENT '主键' not null,
        create_time timestamp default CURRENT_TIMESTAMP COMMENT '录入时间',
        create_user varchar(50) default 'system' COMMENT '录入人员',
        delete_flag int default 0 COMMENT '停用标记',
        discription varchar(200) COMMENT '资源功能描述',
        update_time timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间',
        update_user varchar(50) default 'system'  COMMENT '更新人员',
        checked boolean COMMENT '选中',
        department_id varchar(36) COMMENT '部门id',
        role_name varchar(36) COMMENT '角色名称',
        primary key (uuid)
    );
		
    create table sys_roles_tabs_info (
       uuid varchar(36) COMMENT '主键' not null,
        create_time timestamp default CURRENT_TIMESTAMP COMMENT '录入时间',
        create_user varchar(50) default 'system' COMMENT '录入人员',
        delete_flag int default 0 COMMENT '停用标记',
        discription varchar(200) COMMENT '资源功能描述',
        update_time timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间',
        update_user varchar(50) default 'system'  COMMENT '更新人员',
        role_id varchar(36) COMMENT '角色id',
        tabs_id varchar(36) COMMENT '表id',
        primary key (uuid)
    );
		
		    create table sys_roles_jurisdiction_info (
       menu_id varchar2(255 char) not null,
        role_id varchar2(255 char) not null,
        checked number(1,0),
        create_time timestamp default CURRENT_TIMESTAMP  COMMENT '录入时间',
        create_user varchar(50) default 'system' COMMENT '录入人员',
        delete_flag int default 0 COMMENT '停用标记',
        discription varchar(200) COMMENT '资源功能描述',
        update_time timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间',
        update_user varchar(50) default 'system'  COMMENT '更新人员',
        primary key (menu_id, role_id)
    );         
		
		    create table sys_system_info (
       uuid varchar(36) COMMENT '主键' not null,
        create_time timestamp  default CURRENT_TIMESTAMP COMMENT '录入时间',
        create_user varchar(50) default 'system' COMMENT '录入人员',
        delete_flag int default 0 COMMENT '停用标记',
        discription varchar(200) COMMENT '资源功能描述',
        system_name varchar(200) COMMENT '系统名称' not null,
        update_time timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间',
        update_user varchar(50) default 'system'  COMMENT '更新人员',
        primary key (uuid)
    );
		
		    create table sys_user_base_info (
       uuid varchar(36) COMMENT '主键' not null,
        create_time timestamp default CURRENT_TIMESTAMP COMMENT '录入时间',
        create_user varchar(50) default 'system' COMMENT '录入人员',
        delete_flag int default 0 COMMENT '停用标记',
        discription varchar(200) COMMENT '资源功能描述',
        update_time timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间',
        update_user varchar(50) default 'system'  COMMENT '更新人员',
        addr varchar2(255 char),
        age varchar(2) COMMENT '年龄',
        ancestral_address varchar2(255 char),
        education varchar2(255 char),
        email varchar(100) COMMENT '邮箱',
        expected_place varchar2(255 char),
        expected_salary varchar2(255 char),
        head_pic varchar(1024) COMMENT '头像',
        major varchar2(255 char),
        password varchar(128) COMMENT '密码' not null,
        persion_name varchar(50) COMMENT '姓名' not null,
        phone varchar(18) COMMENT '电话',
        position varchar2(255 char),
        qq varchar2(255 char),
        resume_path varchar2(255 char),
        sex varchar(2) COMMENT '性别',
        statue varchar2(255 char),
        university varchar2(255 char),
        user_name varchar(50) COMMENT '用户名' not null,
        work_nature varchar2(255 char),
        primary key (uuid)
    );
		