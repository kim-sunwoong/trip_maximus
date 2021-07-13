package com.maximusteam.tripfulaxel.api.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.api.model.dto.TripApiDTO;

public interface TripApiMapper {

	List<TripApiDTO> getTrips();

	TripApiDTO getTrip(int id);

	int registTrip(TripApiDTO tripApiDTO);

	int modifyTrip(TripApiDTO tripApiDTO);

	int removeTrip(int id);

}
