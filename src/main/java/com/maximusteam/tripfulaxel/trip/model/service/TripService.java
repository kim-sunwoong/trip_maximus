package com.maximusteam.tripfulaxel.trip.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;

public interface TripService {
	
	List<TripDTO> selectJoinTripList(String tripType);

}
