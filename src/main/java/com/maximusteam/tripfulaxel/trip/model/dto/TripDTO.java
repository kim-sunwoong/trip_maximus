package com.maximusteam.tripfulaxel.trip.model.dto;

import java.sql.Date;

public class TripDTO {

	
	private int tripCode;
	private String tripTitle;
	private String tripIntro;
	private Date tripStartDate;
	private String meetLocation;
	private String include;
	private String nInclude;
	private Date tripEndDate;
	
//	같이가요
	private int joinTripCode;
	private int joinTripMaximum;
	
//	가이드
	private int guideTripCode;
	private int payment;
	private int guideTripMinimum;
	private int guideTripMaximum;
	
//	나만의여행
	private int userTripCode;
	private String userTripComentTitle;
	private String userTripComent;
	private int userTripComentPoint;
	
    
	
	
}
