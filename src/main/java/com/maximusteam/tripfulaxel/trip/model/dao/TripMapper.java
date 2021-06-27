package com.maximusteam.tripfulaxel.trip.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;

public interface TripMapper {

	List<TripDTO> selectJoinTripList();
}
