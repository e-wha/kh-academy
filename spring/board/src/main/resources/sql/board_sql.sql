drop table t_board;

create table t_board(
	board_idx number(11) not null,
	title varchar2(300) not null,
	content varchar2(4000) not null,
	hit_cnt number(10) default 0 not null,
	created_datetime date default sysdate,
	creator_id varchar2(50) not null,
	updated_datetime date default null,
	updator_id varchar2(50) default null,
	deleted_yn char(1) default 'N' not null
);

drop sequence tboard_seq;
create sequence tboard_seq
	increment by 1
	start with 1
	minvalue 1
	maxvalue 9999
	nocycle
	nocache
	noorder;
	
insert into t_board(board_idx, title, content, created_datetime, creator_id) values (tboard_seq.nextval, '체크', '체크입니다.', sysdate, 'kim');
commit;