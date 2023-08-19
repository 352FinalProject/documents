--==============================
-- ������ ���� - pet ���� ����
--==============================
alter session set "_oracle_script" = true;

create user pet
identified by pet
default tablespace users;

grant connect, resource to pet;

alter user pet quota unlimited on users;

grant create session,
grant create table to pet;

--==============================
-- �ʱ�ȭ ��
--==============================
drop table member;
drop table question;
drop table answer;
drop table image_attachment;
drop table image_attachment_mapping;
drop table point;
drop table product_category;
drop table product;
drop table product_detail;
drop table cart;
drop table payment;
drop table cartitem;
drop table orderTbl;
drop table refund;
drop table cancel_order;
drop table authority;
drop table product_category;
drop table community;
drop table wishlist;
drop table pet;
drop table persistent_logins;


drop sequence seq_member_id;
drop sequence seq_question_id;
drop sequence seq_answer_id;
drop sequence seq_image_attachment_id;
drop sequence seq_image_attachment_mapping_id;
drop sequence seq_point_id;
drop sequence seq_product_category_id;
drop sequence seq_product_id;
drop sequence seq_product_detail_id;
drop sequence seq_cart_id;
drop sequence seq_payment_id;
drop sequence seq_cartitem_id;
drop sequence seq_ordertbl_id;
drop sequence seq_refund_id;
drop sequence seq_cancel_order_id;
drop sequence seq_authority_id;
drop sequence seq_community_id;
drop sequence seq_wishlist_id;
drop sequence seq_pet_id;
drop sequence seq_persistent_logins_id;


--==============================
-- ���̺� ����
--==============================

-- ��� ���̺�
create table member (
    member_id varchar2(20),
    password varchar2(300) not null,
    name varchar2(50) not null,
    phone varchar2(11) not null,
    email varchar2(200),
    enroll_date timestamp default sysdate,
    address varchar2(500),
    birthday timestamp,
    subscribe char(1) default 'N' not null,
    constraints pk_member_id primary key(member_id)
);


-- ���� ���̺�
create table authority(
    member_id varchar2(20),
    auth varchar2(50),
    constraints pk_authority primary key(member_id, auth),
    constraints fk_authority_member_id foreign key(member_id)
                references member(member_id)
                on delete cascade
);

-- �� ���̺�
CREATE TABLE pet (
    pet_id number,
    member_id varchar2(20),
    pet_name VARCHAR2(50) NOT NULL,
    pet_DofB timestamp,
    pet_kind VARCHAR2(50),
    pet_breed VARCHAR2(50),
    pet_adoption timestamp,
    pet_gender CHAR(1),
    pet_created_at timestamp default systimestamp,
    constraints pk_pet_id primary key(pet_id),
    constraints fk_member_id foreign key(member_id) references member(member_id) on delete cascade,
    CONSTRAINT chk_pet_gender CHECK (pet_gender IN ('M', 'F'))
);

CREATE TABLE breed (
    breed_id number,
    pet_kind VARCHAR2(50),
    pet_breed VARCHAR2(50),
    CONSTRAINT chk_pet_breed CHECK (pet_breed IN ('C', 'D', 'E'))
    );
    
SELECT * FROM member;
select * from pet;

delete from pet where pet_id = '23';
    
--DROP TABLE pet;
--DROP TABLE breed;

-- ���� ��� ���̺�
create table wishlist(
    wishlist_id number,
    wishlist_member_id varchar2(20),
    wishlist_product_id number,
    wishlist_created_at timestamp default sysdate,
    constraints pk_wishlist_id primary key(wishlist_id),
    constraints fk_wishlist_member_id foreign key(wishlist_member_id) references member(member_id) on delete cascade,
    constraints fk_wishlist_product_id foreign key(wishlist_product_id) references product(product_id) on delete cascade
);
CREATE SEQUENCE seq_pet_id START WITH 1 INCREMENT BY 1;

SELECT * FROM pet;
-- qna ���� ���̺�
create table question(
    question_id number,
    question_member_id varchar2(20) not null,
    question_category varchar2(50) not null,
    question_email varchar2(200),
    question_title varchar2(500) not null,
    question_content varchar2(4000) not null,
    question_created_at timestamp default sysdate,
    constraints pk_question_id primary key(question_id),
    constraints fk_question_member_id foreign key(question_member_id) references member(member_id) on delete cascade
);

-- qna �亯 ���̺�
create table answer(
   answer_id number,
   answer_admin_name varchar2(20) default '������',
   answer_question_id number not null,
   answer_content varchar2(4000) not null,
   answer_created_at timestamp default sysdate,
   constraints pk_answer_id primary key(answer_id),
   constraints fk_answer_question_id foreign key (answer_question_id) references question(question_id) on delete cascade
);

-- �̹��� ���� ���̺�
create table image_attachment (
    image_id number,
    image_type number not null,
    image_category char(1),
    image_original_filename varchar2(500),
    image_renamed_filename varchar2(500),
    image_file_size number,
    image_created_at timestamp default systimestamp,
    constraint pk_image_attachment_id primary key(image_id)
);

-- �̹��� ���� ���� ���̺�
create table image_attachment_mapping (
    mapping_id number,
    ref_table varchar2(50) not null,
    ref_id number not null,
    image_id number not null,
    constraint pk_question_image_mapping_id primary key(mapping_id),
    constraint fk_image_id foreign key(image_id) references image_attachment(image_id) on delete cascade
);

-- ����Ʈ ���̺�
create table point (
    point_id number,
    point_member_id varchar2(20) not null,
    point_current number not null,
    point_type varchar2(100) not null,
    point_amount number not null,
    point_date timestamp default sysdate,
    constraint pk_point_id primary key (point_id),
    constraint fk_point_member_id foreign key (point_member_id) references member(member_id) on delete cascade
);


-- ��ǰ ī�װ� ���̺�
create table product_category (
    category_id number,
    category_name varchar2(100) not null,
    constraints pk_category_id primary key(category_id)
);

-- ��ǰ ���̺�
create table product (
    product_id number, -- pk
    category_id number, -- fk
    product_name varchar2(200) not null,
    product_price number not null,
    thumbnail_img number, -- ����� �̹���(fk)
    product_img number, -- ��ǰ�� �̹���(fk)
    product_date timestamp default sysdate, -- �����
    expire_date timestamp default sysdate, -- �������
    like_cnt number, -- ���ƿ��
    view_cnt number, -- ��ȸ��
    constraints pk_product_id primary key(product_id),
    constraints fk_category_id foreign key(category_id) references product_category(category_id) on delete cascade
);

-- ��ǰ������̺�
--create table product (
--    product
--	`product_code`	varchar2(100)	NOT NULL,
--	`option_id`	number	NOT NULL,
--	`stock`	number	NOT NULL	DEFAULT 0,
--	`sale_state`	number	NOT NULL	COMMENT '0: �ǸŴ��
--);


-- �ֹ����̺�
-- order �� ����Ŭ ������ ���̺�� �̷��� �߽��ϴ�.
-- order_no : 230814(��¥)-001 �̷������� ����ſ��� varchar2
create table orderTbl (
    order_id number,
    order_no varchar2(20) not null,
    member_id varchar2(50),
    order_date timestamp default sysdate,
    order_status number default 0,
    payment_status number default 0,
    total_price number not null,
    delivery_fee number default 3000,
    discount number default 0,
    amount number not null,
    discount_code varchar2(20),
    constraint pk_order_id primary key(order_id),
    constraint fk_orderTbl_member_id foreign key(member_id) references member(member_id) on delete cascade
);

create table cancel_order (
    cancel_id number,
    request_date timestamp default sysdate,
    receipt_date timestamp,
    cancel_status number default 0,
    order_id number,
    constraint pk_cancel_id primary key(cancel_id),
    constraint fk_cancel_order_id foreign key(order_id) references orderTbl(order_id) on delete cascade

);

-- ���� ��ť��Ƽ ���̺� ������ ������
create table persistent_logins (
    username varchar(64) not null,
    series varchar(64) primary key, -- pk
    token varchar(64) not null, -- username, password, expiry time�� hasing�� ��
    last_used timestamp not null
);

-- �ֹ��� ���̺�
create table order_detail (
    order_id number,
    product_detail_id number,
    quantity number default 1 not null,
    constraint pk_order_detail primary key (order_id, product_detail_id),
    constraint fk_order_id foreign key (order_id) references orderTbl(order_id) on delete cascade,
    constraint fk_product_detail_id foreign key (product_detail_id) references product_detail(product_detail_id) on delete cascade
);

-- �������̺�
create table review (
    review_id number,
    pet_id number,
    order_id number,
    review_title varchar2(50),
    review_content varchar2(3000),
    review_star_rate number default 1 not null,
    review_created_at timestamp default sysdate,
    constraint pk_review_id primary key(review_id),
    constraint fk_pet_id foreign key(pet_id) references pet(pet_id) on delete cascade,
    constraint fk_order_id foreign key(order_id) references order_detail(order_id) on delete cascade,
    constraint ck_review_review_star_rate check(review_star_rate >= 1 and review_star_rate <= 5)
);

create table community (
    community_id number,
    community_member_id varchar2(50),
    community_title varchar2(500),
    community_content varchar2(4000),
    community_created_at timestamp default sysdate,
    constraint pk_community_id primary key(community_id),
    constraint fk_community_member_id foreign key(community_member_id) references member(member_id) on delete cascade
);

create table payment (
    payment_id number,
    payment_method number not null,
    payment_date timestamp default sysdate,
    amount number not null,
    order_id number,
    constraint pk_payment_id primary key(payment_id),
    constraint fk_payment_order_id foreign key(order_id) references orderTbl(order_id) on delete cascade
);

create table refund (
    refund_id number,
    receipt_date timestamp default sysdate,
    complete_date timestamp,
    refund_status number default 0,
    refund_price number not null,
    refund_method number not null,
    refund_account varchar2(20),
    account_name varchar2(20),
    bank varchar2(20),
    order_id number,
    constraint pk_refund_id primary key(refund_id),
    constraint fk_refund_order_id foreign key(order_id) references orderTbl(order_id) on delete cascade
);

create table cart (
    cart_id number,
    member_id varchar2(50),
    constraint pk_cart_id primary key(cart_id),
    constraint fk_cart_member_id foreign key(member_id) references member(member_id) on delete cascade
);

create table cartitem (
    cartitem_id number,
    cart_id number,
    product_code varchar2(100) not null,
    quantity number default 1,
    constraint pk_cartitem_id primary key(cartitem_id),
    constraint fk_cartitem_cart_id foreign key(cart_id) references cart(cart_id)
);

create sequence seq_orderTbl_id;
create sequence seq_member_id;
create sequence seq_answer_id;
create sequence seq_question_id;
create sequence seq_image_attachment_id;
create sequence seq_image_attachment_mapping_id;
create sequence seq_point_id;
create sequence seq_pet_id;
create sequence seq_wishlist_id;
create sequence seq_product_id;
create sequence seq_product_detail_id;
create sequence seq_review_id;
create sequence seq_payment_id;
create sequence seq_cancel_id;
create sequence seq_cart_id;
create sequence seq_cartitem_id;

select * from member;
select * from question;
select * from answer;
select * from point;
select * from product;
select * from image_attachment;
select * from authority;
select * from pet;

------------------ member insert ---------------------------
insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('admin', '1234', '������', '01011112222', 'admin@naver.com', '����� ������ ���ﵿ', to_date('1990-01-01', 'YYYY-MM-DD'), 'Y');

--==============================
--sample data ����
--==============================
-- member insert
insert into member (member_id, password, name, phone, email, address, birthday, member_role, point, subscribe)
values ('admin', '1234', '������', '01011112222', 'admin@naver.com', '����� ������ ���ﵿ', to_date('1990-01-01', 'YYYY-MM-DD'), 'ROLE_ADMIN', 10000, 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member1', '1234', '�����', '01012345678', 'kim@naver.com', '����� ���ı� �ֳĵ�', to_date('1977-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member2', '1234', '������', '01028283939', 'ghjwf@naver.com', '����� ���ı� ���ϵ�', to_date('1995-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member3', '1234', '�ǰ���', '01011223344', 'qwerrt@naver.com', '����� ���ı� ������', to_date('1998-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member4', '1234', '������', '010133663344', 'dfhdfg@naver.com', '����� ���ı� �޸޵�', to_date('1987-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member5', '1234', '������', '01012347755', 'kim@naver.com', '����� ���ı� ������', to_date('1993-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member6', '1234', '������', '01099007766', 'fghew@naver.com', '����� ���ı� ���絿', to_date('1992-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member7', '1234', '�Ҹ���', '01088776655', 'rtyhm@naver.com', '����� ���ı� ��', to_date('1991-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member8', '1234', '�Ҿƹ�����', '01012123232', 'kdfhim@naver.com', '����� ���ı� ���ϵ�', to_date('1994-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member9', '1234', '����', '01011556633', 'kinjmm@naver.com', '����� ���ı� �Ÿŵ�', to_date('1997-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member10', '1234', '�Ƶ���', '01012322678', 'kixvm@naver.com', '����� ���ı� ������', to_date('1999-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member11', '1234', '�ƺ���', '01012552278', 'kewim@naver.com', '����� ���ı� ��赿', to_date('1993-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member12', '1234', '������', '01012342238', 'ghjkim@naver.com', '����� ���ı� ���ڵ�', to_date('1994-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member13', '1234', '�̸���', '01012123418', 'svxkim@naver.com', '����� ���ı� �쵿', to_date('1996-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('member14', '1234', '�����', '01012244238', 'qwewkim@naver.com', '����� ���ı� �����̵�', to_date('1999-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('honggd', '1234', 'ȫ����', '01015314328', 'honggd@naver.com', '����� ���ı� �������̵�', to_date('1991-01-01', 'YYYY-MM-DD'), 'ROLE_USER', 10000, 'Y');

------------------ authority insert ---------------------------
insert into authority values ('abcde', 'ROLE_USER');
insert into authority values ('qwerty', 'ROLE_USER');
insert into authority values ('admin', 'ROLE_USER');
insert into authority values ('admin', 'ROLE_ADMIN');
insert into authority values ('member1', 'ROLE_USER');

------------------ qna insert ---------------------------
insert into question (question_id, question_title, question_category, question_member_id, question_email, question_content, question_created_at)
values (seq_question_question_id.nextval, '�쵿ģ�� �ӿ���?', '��ǰ' ,'member1', 'kh@naver.com', '�쵿ģ�� �հ���???? �쵿ģ�� �հ���???? �쵿ģ�� �հ���???? �쵿ģ�� �հ���????', to_date('18/02/14', 'rr/mm/dd'));
insert into question (question_id, question_title, question_category, question_member_id, question_email, question_content, question_created_at)
values (seq_question_question_id.nextval, '�谡 ���Ŀ�', '���', 'member1', 'kh@daum.net', '�谡 ������', to_date('18/02/14', 'rr/mm/dd'));

------------------ answer insert ---------------------------
insert into answer (answer_id, answer_admin_name, answer_question_id, answer_content, answer_created_at)
values (seq_answer_answer_id.nextval, '������', 47, '�쵿ģ�� �츮������ģ���� ���Ӹ��Դϴ�~', sysdate);

insert into answer (answer_id, answer_admin_name, answer_question_id, answer_content, answer_created_at)
values (seq_answer_answer_id.nextval, '������', 2, '������� ���� �弼��', sysdate);

------------------ product insert ---------------------------
insert into product (id, product_code, product_category, product_name, product_price, product_stock, expire_date)
values (seq_member_id.nextval, 101, '���', '������ ����', 32000, 100, to_date('2023-12-31', 'yyyy-mm-DD'));

insert into product (id, product_code, product_category, product_name, product_price, product_stock, expire_date)
values (seq_member_id.nextval, 102, '�ϳ׽�', '���� �ϳ׽�', 15000, 100, to_date('2023-12-31', 'yyyy-mm-DD'));

------------------ point insert ---------------------------
insert into point (point_id, point_member_id, point_current, point_type, point_amount, point_date)
values (seq_point_point_id.nextval, 'member1', 1000, '����', 500, to_date('2023-08-09', 'yyyy-mm-dd'));

insert into point (point_id, point_member_id, point_current, point_type, point_amount, point_date)
values (seq_point_point_id.nextval, 'member1', 800, '���', -200, to_date('2023-08-09', 'yyyy-mm-dd'));


select * from pet;

commit;

update set member_role from member where member_id = 77;

delete from pet where pet_id = '1';

SELECT * FROM product WHERE id = 3;

select * from question where id = '4';

select * from member;


select * from member M left join authority A on M.member_id = A.member_id where M.member_id = '4';
select q.*, (select count(*) from answer where answer_question_id = q.question_id) awnser_count from question q order by question_id desc;

@Insert("insert into member (member_id, password, name, phone, email, address, birthday, point) " +
        "values (#{member.memberId}, #{member.password}, #{member.name}, #{member.phone}, #{member.email}, " +
        "#{member.address}, #{member.birthday, jdbcType=DATE}, #{member.point})")
int insertMember(@Param("member") MemberCreateDto member);


SELECT
    q.question_id,
    q.question_title,
    q.question_content,
    ia.image_original_filename,
    ia.image_renamed_filename
FROM 
    question q
LEFT JOIN 
    image_attachment_mapping iam ON q.question_id = iam.ref_id AND iam.ref_table = 'question'
LEFT JOIN
    image_attachment ia ON iam.image_id = ia.image_id
WHERE 
    q.question_id = 25;

update member
set member_role = 'ROLE_ADMIN'
where id = 77;