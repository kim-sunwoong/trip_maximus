package com.maximusteam.tripfulaxel.api.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.api.model.dto.TripApiDTO;

public interface TripApiService {

	List<TripApiDTO> getTrips();

	TripApiDTO getTrip(int id);

	boolean registTrip(TripApiDTO tripApiDTO);

	boolean modifyTrip(TripApiDTO tripApiDTO);

	boolean removeTrip(int id);

}
