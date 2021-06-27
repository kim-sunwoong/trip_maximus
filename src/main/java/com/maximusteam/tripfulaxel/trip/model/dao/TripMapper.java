package com.maximusteam.tripfulaxel.trip.model.dao;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;

public interface TripMapper {

	List<TripDTO> selectTripList(Map<String, String> parameter);
}
