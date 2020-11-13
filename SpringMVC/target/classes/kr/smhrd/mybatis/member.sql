drop table e_mem cascade constraints;
drop table elect cascade constraints;
drop table a_iot cascade constraints;


create table elect(
id varchar2(30),
temp number(10),
humidity number(10),
year_month varchar2(5),
hobby varchar2(10),
people number(2),
income varchar2(5),
humidifier number(2),
air_purifier number(2),
electric_pad number(2),
TV number(2),
air_conditioner number(2),
refrigerator number(2),
k_refrigerator number(2),
washing_machine number(2),
set_top number(2),
ricecooker number(2),
microwave number(2),
vacuum number(2),
hair_dryer number(2),
drying_machine number(2),
dishwasher number(2),
electric_fan number(2),
humidifier_t number(5),
air_purifier_t number(5),
electric_pad_t number(5),
TV_t number(5),
air_conditioner_t number(5),
refrigerator_t number(5),
k_refrigerator_t number(5),
washing_machine_t number(5),
set_top_t number(5),
ricecooker_t number(5),
microwave_t number(5),
vacuum_t number(5),
hair_dryer_t number(5),
drying_machine_t number(5),
dishwasher_t number(5),
electric_fan_t number(5),
total number(10)
);


CREATE TABLE e_mem(
id varchar2(30) not null,
firstname varchar2(20),
lastname varchar2(20),
address varchar2(100),
phone varchar2(15) not null,
pw varchar2(30),
constraint emem_id_pk primary key (id)
);


create table a_iot(
id varchar2(30) not null,
ampere_id varchar2(30) not null,
device_name varchar2(30) not null,
space varchar2(30) not null,
ip_add varchar2(30) not null,
connection varchar2(30) not null,
wifi_pw varchar2(30) not null,
constraint iot_id_fk foreign key (id) references e_mem(id)
);
