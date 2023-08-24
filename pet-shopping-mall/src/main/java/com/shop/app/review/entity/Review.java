package com.shop.app.review.entity;

import java.time.LocalDateTime;
import java.util.List;

import com.shop.app.pet.entity.Pet;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;


@Data
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
public class Review {

	private int reviewId;
	private int petId;
	private int productId;
	private String reviewMemberId;
	private String reviewTitle;
	private String reviewContent;
	private int reviewStarRate;
	
	private int imageId;
	private LocalDateTime reviewCreatedAt;
	
	
}
