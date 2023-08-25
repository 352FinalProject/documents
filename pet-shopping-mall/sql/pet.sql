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

-- ��� ���̺� ��ȸ
SELECT *  FROM all_tables;

--==============================
-- �ʱ�ȭ ��
--==============================
--
drop table review;
drop table image_attachment;
drop table image_attachment_mapping;
drop table answer;
drop table question;
drop table point;
drop table discount_rule;
drop table product_category;
drop table product;
drop table product_detail;
drop table cart;
drop table payment;
drop table cartitem;
drop table orderTbl;
drop table order_detail;
drop table refund;
drop table cancel_order;
drop table authority;
drop table product_category;
drop table community;
drop table wishlist;
drop table pet;
drop table persistent_logins;
drop table image_attachment_mapping;
drop table member;
drop table ordertbl;
drop table return;
drop table terms;
drop table terms_history;
drop table chat;
drop table chat_room;
drop table breed;
drop table coupon;
drop table member_coupon;

--
------ �ܷ�Ű �پ��ִ� ���̺����
--drop table member cascade constraints;
--drop table review cascade constraints;
--drop table product cascade constraints;
--drop table product_detail cascade constraints;
--drop table pet cascade constraints;
--drop table breed cascade constraints;
--drop table order_detail cascade constraints;
--
--
--drop sequence seq_question_id;
--drop sequence seq_answer_id;
--drop sequence seq_image_attachment_id;
--drop sequence seq_image_attachment_mapping_id;
--drop sequence seq_point_id;
--drop sequence seq_product_category_id;
--drop sequence seq_product_id;
--drop sequence seq_product_detail_id;
--drop sequence seq_cart_id;
--drop sequence seq_payment_id;
--drop sequence seq_cartitem_id;
--drop sequence seq_ordertbl_id;
--drop sequence seq_refund_id;
--drop sequence seq_cancel_order_id;
--drop sequence seq_authority_id;
--drop sequence seq_community_id;
--drop sequence seq_wishlist_id;
--drop sequence seq_pet_id;
--drop sequence seq_persistent_logins_id;
--drop sequence seq_member_id;
--drop sequence seq_review_id;
--drop sequence seq_chat_id;
--drop sequence seq_chat_room_id;
--drop sequence seq_cancel_id;
--drop sequence seq_history_id;
--drop sequence seq_terms_id;
--drop sequence seq_product_option_id;
--drop sequence seq_member_coupon_id;
--drop sequence seq_coupon_id;
--drop sequence seq_category_id;
--drop sequence seq_terms_history_id;


--==============================
-- ���̺� ����
--==============================

-- ��� ���̺�
create table member (
    member_id varchar2(20),
    password varchar2(300) not null,
    name varchar2(50) not null,
    phone varchar2(11),
    email varchar2(200),
    enroll_date timestamp default systimestamp,
    address varchar2(500),
    birthday timestamp,
    subscribe char(1) default 'N' not null,
    constraints pk_member_id primary key(member_id)
);

-- ���� ���̺�
create table authority(
    member_id varchar2(20),
    auth varchar2(50) default 'ROLE_USER',
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
    pet_age number,
    pet_kind VARCHAR2(50),
    pet_breed VARCHAR2(50),
    pet_weight NUMBER,
    pet_adoption timestamp,
    pet_gender CHAR(1),
    pet_created_at timestamp default systimestamp,
    pet_text VARCHAR2(2000),
    constraints pk_pet_id primary key(pet_id),
    constraints fk_member_id foreign key(member_id) references member(member_id) on delete cascade,
    CONSTRAINT chk_pet_gender CHECK (pet_gender IN ('M', 'F'))
);


-- ǰ�� ���̺�
CREATE TABLE breed (
    breed_id number,
    pet_kind VARCHAR2(50),
    pet_breed VARCHAR2(50),
    CONSTRAINT chk_pet_breed CHECK (pet_breed IN ('C', 'D', 'E'))
);

-- qna ���� ���̺�
create table question(
    question_id number,
    question_member_id varchar2(20) not null,
    question_category varchar2(50) not null,
    question_email varchar2(200),
    question_title varchar2(500) not null,
    question_content varchar2(4000) not null,
    question_created_at timestamp default systimestamp,
    constraints pk_question_id primary key(question_id),
    constraints fk_question_member_id foreign key(question_member_id) references member(member_id) on delete cascade
);

drop table question;
drop table answer;

-- qna �亯 ���̺�
create table answer(
   answer_id number,
   answer_admin_name varchar2(20) default '������',
   answer_question_id number not null,
   answer_content varchar2(4000) not null,
   answer_created_at timestamp default systimestamp,
   constraints pk_answer_id primary key(answer_id),
   constraints fk_answer_question_id foreign key (answer_question_id) references question(question_id) on delete cascade
);

-- �̹��� ���� ���̺�
create table image_attachment (
    image_id number,
    image_type number not null,
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
    image_id number, -- ��ǰ�� �̹���(fk)
    create_date timestamp default systimestamp, -- �����
    expire_date timestamp default null, -- �������
    like_cnt number default 0, -- ���ƿ��
    view_cnt number default 0, -- ��ȸ��
    constraints pk_product_id primary key(product_id),
    constraints fk_category_id foreign key(category_id) references product_category(category_id) on delete cascade
);

create table product_detail (
    product_detail_id number, -- pk
    product_id number, -- fk
    option_name varchar2(100), -- �ɼǸ�(option�� ������ ���Ұ�)
    option_value varchar2(200), -- �ɼǼӼ�
    additional_price number default 0, -- �ɼǿ� ���� �߰���
    sale_state number default 0, -- 0: �ǸŴ��, 1: �Ǹ���, 2: ǰ��, 3: ��Ÿ 
    constraints pk_product_detail_id primary key(product_detail_id),
    constraints fk_product_id foreign key(product_id) references product(product_id) on delete cascade
);

-- �ֹ����̺�
-- order �� ����Ŭ ������ ���̺�� �̷��� �߽��ϴ�.
-- order_no : 230814(��¥)-001 �̷������� ����ſ��� varchar2
create table orderTbl (
    order_id number,
    order_no varchar2(20) not null,
    member_id varchar2(50),
    order_date timestamp default systimestamp not null,
    order_status number default 0 not null,
    payment_status number default 0,
    total_price number not null,
    delivery_fee number default 3000 not null,
    discount number default 0,
    discount_detail varchar2(50),
    amount number not null,
    member_coupon_id number, -- null ����ϸ� ���� ��ȣ ����  
    constraint pk_order_id primary key(order_id),
    constraint fk_orderTbl_member_id foreign key(member_id) references member(member_id) on delete cascade,
    constraint fk_orderTbl_member_coupon_id foreign key(member_coupon_id) references member_coupon(member_coupon_id) on delete cascade
);


-- ����Ʈ ���̺�
create table point (
    point_id number,
    point_member_id varchar2(20) not null,
    point_current number not null,
    point_type varchar2(100) not null,
    point_amount number not null,
    point_date timestamp default systimestamp,
    review_id number,
    constraint pk_point_id primary key (point_id),
    constraint fk_point_member_id foreign key (point_member_id) references member(member_id) on delete cascade
);


create table cancel_order (
    cancel_id number,
    request_date timestamp default systimestamp not null,
    receipt_date timestamp,
    cancel_status number default 0 not null,
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

-- ���� ��� ���̺�
create table wishlist(
    wishlist_id number,
    wishlist_member_id varchar2(20),
    wishlist_product_id number,
    wishlist_created_at timestamp default systimestamp,
    constraints pk_wishlist_id primary key(wishlist_id),
    constraints fk_wishlist_member_id foreign key(wishlist_member_id) references member(member_id) on delete cascade,
    constraints fk_wishlist_product_id foreign key(wishlist_product_id) references product(product_id) on delete cascade
);

-- �������̺�
create table review (
    review_id number,
    pet_id number,
    product_id number,
    review_member_id varchar(20) not null,
    product_detail_id number,
    review_title varchar2(50),
    review_content varchar2(3000),
    review_star_rate number default 1 not null,
    review_created_at timestamp default systimestamp,
    constraint pk_review_id primary key(review_id),
    constraint fk_pet_id foreign key(pet_id) references pet(pet_id) on delete cascade,
    constraint fk_product_product_id foreign key (product_id) references product(product_id) on delete cascade,
    constraint ck_review_review_star_rate check(review_star_rate >= 1 and review_star_rate <= 5)
);

create table community (
    community_id number,
    community_member_id varchar2(50),
    community_title varchar2(500),
    community_content varchar2(4000),
    community_created_at timestamp default systimestamp,
    constraint pk_community_id primary key(community_id),
    constraint fk_community_member_id foreign key(community_member_id) references member(member_id) on delete cascade
);

create table payment (
    payment_id number,
    payment_method number not null,
    payment_date timestamp default systimestamp not null,
    amount number not null,
    order_id number,
    constraint pk_payment_id primary key(payment_id),
    constraint fk_payment_order_id foreign key(order_id) references orderTbl(order_id) on delete cascade
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
    product_detail_id number not null,
    quantity number default 1 not null,
    constraint pk_cartitem_id primary key(cartitem_id),
    constraint fk_cartitem_cart_id foreign key(cart_id) references cart (cart_id)
);

 -- ��� ���̺�
create table terms (
 history_id number,
 terms_id number,
 member_id varchar2(50),
 accept_yn char(1) not null,
 accept_date timestamp default systimestamp not null,
 constraint pk_history_id primary key(history_id, terms_id),
 constraint fk_terms_member_id foreign key(member_id) references member(member_id) on delete cascade
);

-- ������� �̷� ���̺�
create table terms_history (
 terms_id number,
 title varchar2(100),
 content varchar2(4000),
 required char(1) not null,
 constraint pk_terms_id primary key(terms_id)
);

-- ä�ù� ���̺�
create table chat_room (
 chat_room_id varchar2(20) not null,
 chat_room_member_id varchar2(50) not null,
 chat_room_admin_roll varchar2(20) not null,
 chat_room_created_at timestamp default systimestamp not null,
 constraint pk_chat_room_id primary key(chat_room_id),
 constraint fk_chat_room_chat_room_member_id foreign key(chat_room_member_id) references member(member_id) on delete cascade
);

-- ä�� �α� ���̺�
create table chat (
 chat_id number,
 chat_room_id varchar2(20) not null,
 chat_member_id varchar2(50) not null,
 chat_message varchar2(4000) not null,
 chat_created_at timestamp default systimestamp not null,
 chat_unread_count number,
 constraint pk_chat_id primary key(chat_id),
 constraint fk_chat_room_id foreign key (chat_room_id) references chat_room(chat_room_id) on delete cascade
);

-- ���� ���̺�
create table coupon (
 coupon_id number,
 coupon_name varchar(100) not null, -- ���� �̸� (ex. ��ۺ� ���� ���� / �������� ����)
 discount_amount number, -- ���� �ݾ� (ex. 3,000�� - ��ۺ� ���� ����)
 discount_percentage number(5, 2), -- ���� ���� (ex. 10% - ���� ����)
 constraint pk_coupon_id primary key(coupon_id)
);

-- ��� ���� ���̺�
create table member_coupon (
 member_coupon_id number,
 coupon_id number,
 member_id varchar2(50),
 create_date timestamp default systimestamp not null, -- �߱� ��¥
 end_date timestamp not null, -- ��ȿ�Ⱓ (��������)
 use_status number(1) default 0, -- ��� ���� (��� �� �ϸ� 0, ����ϸ� 1)
 use_date timestamp, -- ��� ��¥
 constraint pk_member_coupon_id primary key(member_coupon_id),
 constraint fk_member_coupon_member_id foreign key(member_id) references member(member_id) on delete cascade,
 constraint fk_member_coupon_coupon_id foreign key(coupon_id) references coupon(coupon_id) on delete cascade
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
create sequence seq_product_category_id;
create sequence seq_product_id;
create sequence seq_product_detail_id;
create sequence seq_review_id;
create sequence seq_payment_id;
create sequence seq_cancel_id;
create sequence seq_cart_id;
create sequence seq_cartitem_id;
create sequence seq_chat_id;
create sequence seq_chat_room_id;
create sequence seq_terms_id;
create sequence seq_terms_history_id;
create sequence seq_terms_id;
create sequence seq_member_coupon_id;
create sequence seq_coupon_id;
create sequence seq_history_id;
create sequence seq_category_id;

-- ȸ�����Խ� �ڵ����� ��ٱ��ϰ� �����Ǵ� Ʈ����
create or replace trigger cart_create_trriger
after insert on member
for each row
begin
    insert into cart(cart_id, member_id) values(seq_cart_id.nextval, :NEW.member_id);
end;
/

-- ȸ�����Խ� �ڵ����� ��� ���� ���� Ʈ����
create or replace trigger user_role_create_trriger
after insert on member
for each row
begin
    insert into authority(member_id, auth ) values(:NEW.member_id, default);
end;
/


-----------------------------------------
-- �̿��� ����
-----------------------------------------
insert into terms_history (terms_id, title, content, required) values (seq_terms_id.nextval, '�̿��� ���� (�ʼ�)', '�������� ȯ���մϴ�.�츮������ģ�� �� ��ǰ(���� �����񽺡�)�� �̿��� �ּż� �����մϴ�. �� ����� �پ��� �츮������ģ�� ������ �̿�� �����Ͽ� �ݷ����� ���θ� ���񽺸� �����ϴ� �츮������ģ��(���� ���쵿ģ��)�� �̸� �̿��ϴ� �츮������ģ�� ���� ȸ��(���� ��ȸ����) �Ǵ� ��ȸ������ ���踦 �����ϸ�, �ƿ﷯ �������� �츮������ģ�� ���� �̿뿡 ������ �� �� �ִ� ������ ������ �����ϰ� �ֽ��ϴ�.', 'Y');
insert into terms_history (terms_id, title, content, required) values (seq_terms_id.nextval, '�������� ���� �� �̿뿡 ���� �ȳ� (�ʼ�)', '����������ȣ���� ���� �쵿ģ�� ȸ������ ��û�Ͻô� �в� �����ϴ� ���������� �׸�, ���������� ���� �� �̿����, ���������� ���� �� �̿�Ⱓ, ���� �źα� �� ���� �ź� �� �����Ϳ� ���� ������ �ȳ� �帮���� �ڼ��� ���� �� �����Ͽ� �ֽñ� �ٶ��ϴ�. 1. �����ϴ� �������� �̿��ڴ� ȸ�������� ���� �ʾƵ� ���� �˻�, ���� ���� �� ��κ��� �쵿ģ ���񽺸� ȸ���� �����ϰ� �̿��� �� �ֽ��ϴ�. �̿��ڰ� ����, Ķ����, ī��, ��α� ��� ���� ����ȭ Ȥ�� ȸ���� ���񽺸� �̿��ϱ� ���� ȸ�������� �� ���, �쵿ģ�� ���� �̿��� ���� �ʿ��� �ּ����� ���������� �����մϴ�.', 'Y');
insert into terms_history (terms_id, title, content, required) values (seq_terms_id.nextval, '�̺�Ʈ �� ���θ�� �˸� ���� ���� (����)', '�쵿ģ ���� �� ���� �̺�Ʈ?���� ���� ������ �޴���ȭ(�쵿ģ�� �˸� �Ǵ� ����), �̸��Ϸ� ���� �� �ֽ��ϴ�. �Ϻ� ����(������ ȸ�� ü�� �, �쵿ģ ���� �� �߰� �����ϴ� ���� ��)�� ���, ���ſ� ���� ������ �ȳ��帮�� ���Ǹ� ���մϴ�.', 'N');

-----------------------------------------
-- ���� ������
-----------------------------------------
-- ȸ�����Խ� ��ۺ� ���� (3000��)
insert into coupon (coupon_id, coupon_name, discount_amount, discount_percentage)
values (1, 'ȸ������ ��ۺ� ���� ����', 3000, null);

-- ���� ���� 10% ����
insert into coupon (coupon_id, coupon_name, discount_amount, discount_percentage)
values (2, '�������� 10% ���� ����', null, 10);


----------------------------------------------
-- ī�װ�
----------------------------------------------
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '���');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '����');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '�мǿ�ǰ');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '��å��ǰ');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '������ǰ');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '�����');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '��Ÿ��ǰ');