------------------ member insert ---------------------------
insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('admin', '1234', '������', '01011112222', 'admin@naver.com', '����� ������ ���ﵿ', to_date('1990-01-01', 'YYYY-MM-DD'), 'Y');
select * from member;
select * from point;
select * from pet;
select * from review;
select * from coupon;
select * from member_coupon;
select * from terms;
select * from terms_history;
select * from product;
select * from terms_history;
select * from image_attachment;
select * from image_attachment_mapping;
select * from product;
select * from orderTbl;
select * from order_detail;
select * from product_detail;
select * from product;
select * from member_coupon;

select count(*) from member_coupon where member_id = 'member4';

--==============================
--sample data ����
--==============================
-- member insert
insert into member (member_id, password, name, phone, email, enroll_date, address, birthday, subscribe)
values ('member1', '$2a$10$V6DMY985chA4/fMc/vY20e15i/OaPr.GpQ0v2W0zNqshEWutOxm9q', '�����', '01012345678', 'kim@naver.com', '����� ���ı� �ֳĵ�', to_date('1977-01-01', 'YYYY-MM-DD'), 'Y');

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
values ('honggd', '1234', 'ȫ����', '01014567828', 'honggd@naver.com', '����� ���ı� ���ϵ�', to_date('1991-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('hogd', '1234', 'ȫ�ڻ�', '01015314318', 'honggd@naver.com', '����� ���ı� Ÿ�ĵ�', to_date('1978-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('ho12d', '1234', 'ȫ��', '01015315558', 'ho12d@naver.com', '����� ���ı� ��ī��', to_date('1989-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('haad', '1234', 'ȫ��', '01015315538', 'haad@naver.com', '����� ���ı� ��Ƶ�', to_date('1998-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('hoeerd', '1234', 'ȫ����', '01012314328', 'hoeerd@naver.com', '����� ���ı� ���ٵ�', to_date('1988-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('htruyd', '1234', 'ȫ����', '01011231238', 'htruyd@naver.com', '����� ���ı� �ٶ�', to_date('1999-01-01', 'YYYY-MM-DD'), 'N');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('hfnd', '1234', 'ȫ����', '01015123458', 'hfnd@naver.com', '����� ���ı� ������', to_date('1995-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('hsssd', '1234', 'ȫ���', '01015314128', 'hsssd@naver.com', '����� ���ı� �̵�', to_date('1994-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('hoqfghhd', '1234', 'ȫ����', '01015124328', 'hoqfghhd@naver.com', '����� ���ı� ���̵�', to_date('1992-01-01', 'YYYY-MM-DD'), 'Y');

insert into member (member_id, password, name, phone, email, address, birthday, subscribe)
values ('h123qd', '1234', 'ȫ�繫', '01015312328', 'h123qd@naver.com', '����� ���ı� ����', to_date('1991-07-01', 'YYYY-MM-DD'), 'Y');

------------------ authority insert ---------------------------
insert into authority values ('abcde', 'ROLE_USER');
insert into authority values ('qwerty', 'ROLE_USER');
insert into authority values ('admin', 'ROLE_USER');
insert into authority values ('admin', 'ROLE_ADMIN');
insert into authority values ('member1', 'ROLE_USER');
insert into authority values ('member1', 'ROLE_ADMIN');

------------------ qna insert ---------------------------
insert into question (question_id, question_title, question_category, question_member_id, question_email, question_content, question_created_at)
values (seq_question_question_id.nextval, '�쵿ģ�� �ӿ���?', '��ǰ' ,'member1', 'kh@naver.com', '�쵿ģ�� �հ���???? �쵿ģ�� �հ���???? �쵿ģ�� �հ���???? �쵿ģ�� �հ���????', to_date('18/02/14', 'rr/mm/dd'));
insert into question (question_id, question_title, question_category, question_member_id, question_email, question_content, question_created_at)
values (seq_question_question_id.nextval, '�谡 ���Ŀ�', '���', 'member1', 'kh@daum.net', '�谡 ������', to_date('18/02/14', 'rr/mm/dd'));

------------------ answer insert ---------------------------
insert into answer (answer_id, answer_admin_name, answer_question_id, answer_content, answer_created_at)
values (seq_answer_answer_id.nextval, '������', 1, '�쵿ģ�� �츮������ģ���� ���Ӹ��Դϴ�~', sysdate);

insert into answer (answer_id, answer_admin_name, answer_question_id, answer_content, answer_created_at)
values (seq_answer_answer_id.nextval, '������', 2, '������� ���� �弼��', sysdate);

------------------ point insert ---------------------------
INSERT INTO point (point_id, point_member_id, point_current, point_type, point_amount)
VALUES (2, '�����2', 50, '���', -500);

------------------ product insert ---------------------------
-- ī�װ� ����
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '���');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '����');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '�мǿ�ǰ');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '��å��ǰ');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '������ǰ');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '�����');
insert into product_category (category_id, category_name) values (seq_product_category_id.nextval, '��Ÿ��ǰ');
select * from product_category;

-- ��ǰ��� (�̹����� ���� null ó��)
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 1, '������ ����', 32000, null, default, to_date('2023-12-31', 'yyyy-mm-DD'), default, default);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 3, '�������� ���ǽ� ������', 20000, null, default, null, 31, 156);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 4, '���� �ϳ׽�', 15000, null, default, null, default, default);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 6, '���� �� 10����', 20000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
    
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 6, '����� ����', 50000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
    
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 6, '����̰��', 21000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);

insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 2, 'īī��74��', 26000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 3, '������', 31000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 4, '������', 43000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 5, '������', 32000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
insert into product (product_id, category_id, product_name, product_price, image_id, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 6, '�����', 16000, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
    
    
select * from product;

-- ��ǰ�� ���
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price,sale_state)
    values (seq_product_detail_id.nextval, 1, null, null, default, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price,sale_state)
    values (seq_product_detail_id.nextval, 9, '��', '����', default, 1);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price,sale_state)
    values (seq_product_detail_id.nextval, 4, '��', '��Ʈ', default, 1);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price,sale_state)
    values (seq_product_detail_id.nextval, 5, null, null, default, 1);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price,sale_state)
    values (seq_product_detail_id.nextval, 4, '��', '�߰���', default, 1);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price,sale_state)
    values (seq_product_detail_id.nextval, 4, '��', '�����', 2000, 1);
select * from product_detail;
commit;

-- �ֹ����̺� ���
insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '230811-001', 'honggd', sysdate, 0,  0, 35000, 3000, 0, 38000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '230811-002', 'honggd', sysdate, 1,  1, 35000, 3000, 0, 38000, null);
    
 insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '230811-003', 'member5', sysdate, 1,  1, 35000, 3000, 0, 38000, null);


insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-004', 'member2', sysdate, 1,  1, 35000, 3000, 0, 38000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '230811-005', 'member3', sysdate, 1,  1, 25000, 3000, 0, 28000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '230811-006', 'member5', sysdate, 1,  1, 22000, 3000, 0, 25000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_code)
    values (seq_orderTbl_id.nextval, '230811-007', 'member6', sysdate, 1,  1, 17000, 3000, 0, 20000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_code)
    values (seq_orderTbl_id.nextval, '230811-008', 'member7', sysdate, 1,  1, 24000,3000, 0, 27000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_code)
    values (seq_orderTbl_id.nextval, '230811-009', 'member8', sysdate, 2,  1, 22000,3000, 0, 25000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_code)
    values (seq_orderTbl_id.nextval, '230811-010', 'member9', sysdate, 3,  1, 19000,3000, 0, 22000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_code)
    values (seq_orderTbl_id.nextval, '230811-011', 'member10', sysdate, 2, 1, 20000,3000, 0, 23000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_code)
    values (seq_orderTbl_id.nextval, '230811-012', 'honggd', sysdate, 2, 1, 27000,3000, 0, 30000, null);
    
    

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '1692683868583', 'honggd', '2023-06-22 14:57:48.69', 2, 1, 27000,3000, 0, 30000, 0);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '1692683868583', 'honggd', '2023-01-22 14:57:48.69', 2, 1, 27000,3000, 0, 30000, 0);
        
insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '231231', 'honggd', default, 2, 1, 27000,3000, 0, 30000, 0);

------------------ point insert ---------------------------
insert into point (point_id, point_member_id, point_current, point_type, point_amount, point_date)
values (seq_point_id.nextval, 'member1', 3000, 'ȸ������', 3000, to_date('2023-08-09', 'yyyy-mm-dd'));

insert into point (point_id, point_member_id, point_current, point_type, point_amount, point_date)
values (seq_point_id.nextval, 'member1', 3000, '��������', 3000, to_date('2023-08-09', 'yyyy-mm-dd'));

insert into point (point_id, point_member_id, point_current, point_type, point_amount, point_date)
values (seq_point_point_id.nextval, 'member1', 800, '���', -200, to_date('2023-08-09', 'yyyy-mm-dd'));


commit;

update set member_role from member where member_id = 77;

delete from answer where answer_id = '2';

SELECT * FROM product WHERE id = 3;

select * from question where id = '4';

select * from orderTbl;


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

select * from orderTbl;
select * from member;
select * from point where point_member_id = 'member1';
delete from point where point_id = 2;

-- ��ٱ��� �׽�Ʈ ������
select * from product_category;
insert into product_category values(1, '���');
insert into product_category values(2, '��');
insert into product values(seq_product_id.nextval, 1, '�����޽� ���', 15000, 1, 1, systimestamp, systimestamp, 111, 111);
insert into product values(seq_product_id.nextval, 2, '����', 17000, 2, 2, systimestamp, systimestamp, 222, 222);
select * from cartitem;
select * from cart;
update cartitem set product_detail_id = 1 where cart_id = (select cart_id from cart where member_id='honggd');
select* from product;
select * from product_detail;
select * from orderTbl;


update cartitem set product_detail_id=2 where product_detail_id=1;

delete from cartitem where cartitem_id = 2;
delete from product where product_id = 4;

update cartitem set product_detail_id=1 where product_detail_id=0;
select * from cartitem;

select * from payment;

select * from product_detail;

insert into product_detail values(seq_product_detail_id.nextval, 1, '�߰�1', '��ĥ �߰�', 190000, 2);
insert into product_detail values(seq_product_detail_id.nextval, 2, '�߰�1', '�Ķ�����', 1900, 9);
insert into product_detail values(seq_product_detail_id.nextval, 2, '�߰�2', '��������', 1900, 9);

insert into cart values(1, 'honggd');

select * from cart;
insert into cartitem values(seq_cartitem_id.nextval, 1, 2, 1);
insert into cartitem values(seq_cartitem_id.nextval, 1, 1, 1);
select * from cartitem;
select * from member;
delete from cartitem where cart_id = 5;
select * from cancel_order;
select 
    *
from
    cartitem i left join cart c on i.cart_id = c.cart_id
where
    c.member_id='honggd';
    
select * from product_detail;


SELECT 
    pd.*, 
    p.product_price
FROM 
    product_detail pd
JOIN 
    product p ON pd.product_id = p.product_id;
    
select * from cart;
-- �̷��� �ҷ�����..    
select 
    ci.cartitem_id,
    p.product_id,
    ci.product_detail_id,
    p.product_name,
    pd.option_name,
    pd.option_value,
    (select sum(product_price) from product where product_id = p.product_id) product_price,
    (select sum(additional_price) from product_detail where product_detail_id = ci.product_detail_id) additional_price,
    ci.quantity
from 
    product p left join product_detail pd on p.product_id = pd.product_id
    left join cartitem ci on pd.product_detail_id = ci.product_detail_id
where 
    ci.product_detail_id = 2;
    
    

-- �ֹ� ��� ���� �ҷ�����
select
    m.name,
    m.phone,
    ot.order_no,
    ot.order_date,
    ot.order_status,
    ot.total_price,
    p.payment_method,
    p.payment_date,
    ot.payment_status,
    ot.amount,
    ot.discount
from
    orderTbl ot left join member m on ot.member_id = m.member_id 
    left join payment p on p.order_id = ot.order_id
where
    order_date >= ADD_MONTHS(TRUNC(SYSDATE), -#{period})
 
	select
		m.name,
		m.phone,
		ot.order_no,
		ot.order_date,
		ot.order_status,
		ot.total_price,
		p.payment_method,
		p.payment_date,
		ot.payment_status,
		ot.amount,
		ot.discount
	from
		orderTbl ot left join member m on ot.member_id = m.member_id
		left join payment p on p.order_id = ot.order_id
		left join cancel_order c on ot.order_id = c.order_id
	where
		c.request_date >= ADD_MONTHS(TRUNC(SYSDATE), -3);
-------------------------------------------------------------------

    
select 
    p.product_id,
    ci.product_detail_id,
    p.product_name,
    pd.option_name,
    pd.option_value,
    (select sum(product_price) from product where product_id = p.product_id) product_price,
    (select sum(additional_price) from product_detail where product_detail_id = ci.product_detail_id) additional_price,
    ci.quantity
from 
    product p 
left join product_detail pd on p.product_id = pd.product_id
left join cartitem ci on pd.product_detail_id = ci.product_detail_id;


    
update cartitem set product_detail_id = 2, quantity = 2 where cartitem_id =13;

delete from orderTbl where member_id = 'honggd'; 

update orderTbl set payment_status = 1 where order_no = '1692609071018';

select 
	ci.cartitem_id,
    p.product_id,
    ci.product_detail_id,
    p.product_name,
    pd.option_name,
    pd.option_value,
    (select sum(product_price) from product where product_id = p.product_id) product_price,
    (select sum(additional_price) from product_detail where product_detail_id = ci.product_detail_id) additional_price,
    ci.quantity
from 
    product p left join product_detail pd on p.product_id = pd.product_id
    left join cartitem ci on pd.product_detail_id = ci.product_detail_id
where
    p.product_id = 2;
    
select 
	ci.cartitem_id,
    p.product_id,
    pd.product_detail_id,
    p.product_name,
    pd.option_name,
    pd.option_value,
    (select sum(product_price) from product where product_id = p.product_id) product_price,
    (select sum(additional_price) from product_detail where product_detail_id = ci.product_detail_id) additional_price,
    ci.quantity
from 
    product p left join product_detail pd on p.product_id = pd.product_id
    left join cartitem ci on pd.product_detail_id = ci.product_detail_id
where 
    p.product_id = 2;
    
    
    
delete from cartitem where product_detail_id = 3;

delete from cartitem ci where ci.cart_id = (select cart_id from cart where member_id ='honggd');   
    
insert into point (point_id, point_member_id, point_current, point_type, point_amount)
values (
    seq_point_id.nextval,
    'member1',
    0,
    '���Ż��',
    -3000
);

select * from point order by point_id desc;

delete from point where point_id = '9';

alter table point add review_id number;
alter table point add constraint fk_point_review_id foreign key (review_id) references review(review_id) on delete cascade;

-------------------------------------------------
-- �ֹ���ȸ�� ����
-------------------------------------------------
SELECT
    ot.order_id,
    ot.order_date,
    ot.order_no,
    p.product_name,
    ot.order_status,
    ot.payment_status,
    ot.member_id,
    ot.amount,
    ot.delivery_fee,
    pay.payment_method
FROM
    orderTbl ot
LEFT JOIN
    order_detail od ON ot.order_id = od.order_id
LEFT JOIN
    product_detail pd ON od.product_detail_id = pd.product_detail_id
LEFT JOIN
    product p ON pd.product_id = p.product_id
LEFT JOIN
    payment pay ON ot.order_id = pay.order_id;
    
-------------------------------------------------------------------
-- �ֹ���ȸ �׽�Ʈ ���� 
-------------------------------------------------
SELECT
    ot.order_id,
    ot.order_date,
    ot.order_no,
    p.product_name,
    ot.order_status,
    ot.payment_status,
    ot.member_id,
    ot.amount,
    ot.delivery_fee,
    pay.payment_method
FROM
    orderTbl ot
LEFT JOIN
    order_detail od ON ot.order_id = od.order_id
LEFT JOIN
    product_detail pd ON od.product_detail_id = pd.product_detail_id
LEFT JOIN
    product p ON pd.product_id = p.product_id
LEFT JOIN
    payment pay ON ot.order_id = pay.order_id
    ORDER BY
    ot.order_id deSC;

------------------------
select * from product;
select * from product_detail;
select * from orderTbl;
select * from order_detail;
select * from payment;

UPDATE orderTbl
SET order_date = TO_TIMESTAMP('2023-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
WHERE order_id = ;

------------------------

insert into order_detail (order_id, product_detail_id, quantity) values (4,29,default);
insert into order_detail (order_id, product_detail_id, quantity) values (15,29,default);
insert into order_detail (order_id, product_detail_id, quantity) values (19,6,default);
insert into order_detail (order_id, product_detail_id, quantity) values (20,6,default);
insert into order_detail (order_id, product_detail_id, quantity) values (21,6,default);
insert into order_detail (order_id, product_detail_id, quantity) values (22,6,default);
insert into order_detail (order_id, product_detail_id, quantity) values (23,2,default);
insert into order_detail (order_id, product_detail_id, quantity) values (26,1,default);
------------------------
insert into product_detail values(seq_product_detail_id.nextval, 1, '�߰�1', '��ĥ �߰�', 190000, 2);
insert into product_detail values(seq_product_detail_id.nextval, 2, '�߰�2', '��������', 1900, 9);


insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 2, '���� ����', 35000, null, null, default, to_date('2023-11-21', 'yyyy-mm-DD'), default, default);
    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(19, 1, systimestamp, 100000, 19);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(20, 1, systimestamp, 11000, 20);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(21, 1, systimestamp, 12000, 21);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(22, 1, systimestamp, 120000, 22);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(23, 1, systimestamp, 80000, 23);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(24, 1, systimestamp, 90000, 24);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(25, 1, systimestamp, 160000, 25);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(26, 1, systimestamp, 140000, 26);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(27, 1, systimestamp, 160000, 27);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(28, 1, systimestamp, 70000, 28);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(29, 1, systimestamp, 750000, 29);  
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(30, 1, systimestamp, 61000, 30);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(31, 1, systimestamp, 61000, 31);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(32, 1, systimestamp, 61000, 32);    
insert into payment (payment_id, payment_method, payment_date, amount, order_id) values(33, 1, systimestamp, 61000, 33);    

------------------------
insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 1, '������ ����', 32000, null, null, default, to_date('2023-12-31', 'yyyy-mm-DD'), default, default);
insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 2, '���� ����', 10000, null, null, default, to_date('2023-11-21', 'yyyy-mm-DD'), default, default);
insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 3, '�������� ���ǽ� ������', 20000, null, null, default, null, 31, 156);
insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 4, '���� �ϳ׽�', 15000, null, null, default, null, default, default);
insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 4, '¯ �ε巯�� ����', 25000, null, null, default, null, 10, 112);
insert into product (product_id, category_id, product_name, product_price, thumbnail_img, product_img, create_date, expire_date, like_cnt, view_cnt)
    values (seq_product_id.nextval, 6, '���� �� 10����', 20000, null, null, default, to_date('2023-10-11', 'yyyy-mm-DD'), 33, 120);
    
-- ��ǰ�� ���
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 1, '�뷮', '1kg', default, 10, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 1, '�뷮', '2kg', 20000, 20, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 1, '�뷮', '5kg', 40000, 10, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 1, '��', '�Ұ��', default, 10, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 1, '��', '�߰��', 20000, 20, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 1, '��', '����', 40000, 10, default);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 2, '��', '�Ұ��', default, 20, 1);
insert into product_detail (product_detail_id, product_id, option_name, option_value, additional_price, stock, sale_state)
    values (seq_product_detail_id.nextval, 2, '��', '�߰��', default, 20, 1);
select * from product_detail;

----�ֹ����̺� ����
insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-001', 'member1', sysdate, 4,  1, 35000, 3000, 0, 38000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-002', 'member2', sysdate, 4,  1, 35000, 3000, 0, 38000, null);
    
 insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-003', 'member2', sysdate, 4,  1, 35000, 3000, 0, 38000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-004', 'member1', sysdate, 4,  1, 35000, 3000, 0, 38000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-005', 'member2', sysdate, 1,  1, 25000, 3000, 0, 28000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-006', 'member2', sysdate, 1,  1, 22000, 3000, 0, 25000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-007', 'member1', sysdate, 1,  1, 17000, 3000, 0, 20000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-008', 'member1', sysdate, 1,  1, 24000,3000, 0, 27000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-009', 'member1', sysdate, 2,  1, 22000,3000, 0, 25000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-010', 'member1', sysdate, 3,  1, 19000,3000, 0, 22000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-011', 'member1', sysdate, 2, 1, 20000,3000, 0, 23000, null);

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230811-012', 'honggd', sysdate, 2, 1, 27000,3000, 0, 30000, null);
    
insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230823-001', 'honggd', sysdate, 5, 1, 27000,3000, 0, 30000, null);    

insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, discount_detail)
    values (seq_orderTbl_id.nextval, '230823-002', 'honggd', sysdate, 1, 0, 27000,3000, 0, 30000, null);
    
insert into orderTbl (order_id, order_no, member_id, order_date, order_status, payment_status, total_price, delivery_fee, discount, amount, member_coupon_id)
    values (seq_orderTbl_id.nextval, '230823-002', 'honggd', sysdate, 5, 0, 27000,3000, 0, 30000, null);

select * from orderTbl;    

-----------------------------------------
-- �����ȸ ����
-----------------------------------------
SELECT
    ot.order_id,
    ot.order_date,
    ot.order_no,
    p.product_name,
    ot.amount
FROM
    orderTbl ot
JOIN
    order_detail od ON ot.order_id = od.order_id
JOIN
    product_detail pd ON od.product_detail_id = pd.product_detail_id
JOIN
    product p ON pd.product_id = p.product_id;

select * from orderTbl;
select * from order_detail;

select
    ot.member_id,
    ot.order_date,
    ot.order_no,
    ot.order_status,
    (select product_name from product where product_id = pd.product_id) product_name,
    od.product_detail_id,
    od.quantity,
    ot.total_price
from
    orderTbl ot left join order_detail od on ot.order_id = od.order_id
    left join product_detail pd on od.product_detail_id = pd.product_detail_id
    left join product p on p.product_id = pd.product_id
where
    ot.member_id = 'honggd';
    


SELECT
	    ot.order_id,
	    ot.order_date,
	    ot.order_no,
	    p.product_name,
	    ot.order_status,
	    ot.payment_status,
	    ot.member_id,
	    ot.amount,
	    ot.delivery_fee,
	    pay.payment_method
	FROM
	    orderTbl ot
	LEFT JOIN
	    order_detail od ON ot.order_id = od.order_id
	LEFT JOIN
	    product_detail pd ON od.product_detail_id = pd.product_detail_id
	LEFT JOIN
	    product p ON pd.product_id = p.product_id
	LEFT JOIN
	    payment pay ON ot.order_id = pay.order_id
    WHERE
            pay.payment_method IN (0,1)
            AND ot.order_status IN (0,1,2,3,4,5,6)
            AND (ot.order_no LIKE '%' || '��' || '%' OR p.product_name LIKE '%' || '��' || '%')
	ORDER BY
	    ot.order_id DESC;


SELECT
    p.product_id,
    p.product_name,
    p.category_id,
    pc.category_name,
    p.product_price,
    SUM(od.quantity) AS total_sold,
    SUM(od.quantity * p.product_price) AS total_price
FROM
    product p
    JOIN product_category pc ON p.category_id = pc.category_id
    JOIN product_detail pd ON p.product_id = pd.product_id
    LEFT JOIN order_detail od ON pd.product_detail_id = od.product_detail_id
    LEFT JOIN orderTbl ot ON od.order_id = ot.order_id
WHERE
    ot.payment_status = 1
GROUP BY
    p.product_id, p.product_name, p.category_id, pc.category_name, p.product_price
ORDER BY
    total_sold DESC;

SELECT
    p.product_id,
    p.product_name,
    p.category_id,
    pc.category_name,
    p.product_price,
    SUM(od.quantity) AS total_sold,
    SUM(od.quantity * p.product_price) AS total_price
FROM
    product p
    JOIN product_category pc ON p.category_id = pc.category_id
    JOIN product_detail pd ON p.product_id = pd.product_id
    LEFT JOIN order_detail od ON pd.product_detail_id = od.product_detail_id
    LEFT JOIN orderTbl ot ON od.order_id = ot.order_id
WHERE
    ot.payment_status = 1
GROUP BY
    p.product_id, p.product_name, p.category_id, pc.category_name, p.product_price
ORDER BY
    total_price DESC;

SELECT
    TO_CHAR(order_date, 'YYYY-MM-DD') AS order_daily,
    SUM(total_price) AS daily_total_sales
FROM
    orderTbl
WHERE
    payment_status = 1
GROUP BY
    TO_CHAR(order_date, 'YYYY-MM-DD')
ORDER BY
    TO_CHAR(order_date, 'YYYY-MM-DD');
    
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS order_month,
    SUM(total_price) AS monthly_total_sales
FROM
    orderTbl
WHERE
    payment_status = 1
GROUP BY
    TO_CHAR(order_date, 'YYYY-MM')
ORDER BY
    TO_CHAR(order_date, 'YYYY-MM');
--------------------------------------------------------------------- �����ȸ���� ��






select * from image_attachment;

select 
	ci.cartitem_id,
    p.product_id,
    ci.product_detail_id,
    p.product_name,
    pd.option_name,
    pd.option_value,
    (select sum(product_price) from product where product_id = p.product_id) product_price,
    (select sum(additional_price) from product_detail where product_detail_id = ci.product_detail_id) additional_price,
    ci.quantity,
    ia.image_original_filename,
    ia.image_renamed_filename
from 
    product p left join product_detail pd on p.product_id = pd.product_id
    left join cartitem ci on pd.product_detail_id = ci.product_detail_id
    left join 
	    image_attachment_mapping iam on p.product_id = iam.ref_id and iam.ref_table = 'product';

select
  ot.order_id,
  ot.order_date,
  ot.order_no,
  ot.order_status,
  pd.product_id,
  (select product_name from product where product_id = pd.product_id)
  product_name,
  od.product_detail_id,
  od.quantity,
  ot.amount
from
  orderTbl ot left join order_detail od on ot.order_id = od.order_id
  left join product_detail pd on od.product_detail_id = pd.product_detail_id
  left join product p on p.product_id = pd.product_id
where
  ot.member_id = 'member2'
  order by
  ot.order_date desc;

select * from point;
select * from member;

delete from member where email='hulk1512@naver.com';
commit;


select 
    p.product_id,
    pd.product_detail_id,
    p.product_name,
    pd.option_name,
    pd.option_value,
    (select sum(product_price) from product where product_id = p.product_id) product_price,
    (select sum(additional_price) from product_detail where product_detail_id = pd.product_detail_id) additional_price,
	ia.image_renamed_filename
from 
    product p 
    left join 
        product_detail pd on p.product_id = pd.product_id
    left join 
	    image_attachment_mapping iam on p.product_id = iam.ref_id and iam.ref_table = 'product'
    left join
	    image_attachment ia ON iam.image_id = ia.image_id
where 
    p.product_id = 1;

