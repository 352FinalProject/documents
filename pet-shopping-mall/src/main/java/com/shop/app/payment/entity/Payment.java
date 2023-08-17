package com.shop.app.payment.entity;

import java.sql.Date;

public class Payment {
	private int paymentId;
	private int paymentMethod; // 0: 무통장입금(현금) 1:카드결제
	private Date paymentDate;
	private int amount; // 주문자가 결제한 금액(배송비 포함)
	private int orderId; // 주문번호(주문테이블 참조)
}
