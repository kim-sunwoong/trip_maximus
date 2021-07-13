package com.maximusteam.tripfulaxel.api.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.api.model.dao.TripApiMapper;
import com.maximusteam.tripfulaxel.api.model.dto.TripApiDTO;

@Service
public class TripApiServiceImpl implements TripApiService {

	@Inject
	private final TripApiMapper tripApiMapper;
	
	public TripApiServiceImpl(TripApiMapper tripApiMapper) {
		this.tripApiMapper = tripApiMapper;
	}
	
	@Override
	public List<TripApiDTO> getTrips() {
		
		return tripApiMapper.getTrips();
	}

	@Override
	public TripApiDTO getTrip(int id) {
		return tripApiMapper.getTrip(id);
	}

	@Override
	public boolean registTrip(TripApiDTO tripApiDTO) {
		
		int result = tripApiMapper.registTrip(tripApiDTO);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean modifyTrip(TripApiDTO tripApiDTO) {

		int result = tripApiMapper.modifyTrip(tripApiDTO);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean removeTrip(int id) {

		int result = tripApiMapper.removeTrip(id);
		
		return result > 0 ? true : false;
	}

}
