create database if not exists book_management;

use book_management;

create table if not exists book_store(
    id bigint not null comment '图书库Id',
    name varchar(50) not null comment '图书库名称',
    location varchar(50) not null comment '图书库位置',
    serial_code varchar(50) not null comment '图书库编号',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间',
    create_by bigint not null comment '创建人',
    update_by bigint not null comment '更新人',
    del_flag tinyint not null default 0 comment '删除标记(0:正常;1:删除)',
    primary key (id)
) comment '图书库信息';

create table if not exists book_case(
    id bigint not null comment '图书柜Id',
    book_store_id bigint not null comment '图书库Id',
    serial_code varchar(50) not null comment '图书柜编号',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间',
    create_by bigint not null comment '创建人',
    update_by bigint not null comment '更新人',
    del_flag tinyint not null default 0 comment '删除标记(0:正常;1:删除)',
    primary key (id)
) comment '图书柜信息';

create table if not exists book_shelf(
    id bigint not null comment '图书架Id',
    book_case_id bigint not null comment '图书柜Id',
    layer_num int not null comment '图书架层数',
    serial_code varchar(50) not null comment '图书架编号',
    create_time datetime not null comment '创建时间',
    update_time datetime not null comment '更新时间',
    create_by bigint not null comment '创建人',
    update_by bigint not null comment '更新人',
    del_flag tinyint not null default 0 comment '删除标记(0:正常;1:删除)',
    primary key (id)
) comment '图书架信息';
