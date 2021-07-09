package com.maximusteam.tripfulaxel.guide.model.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.guide.model.dao.InsertTripMapper;
import com.maximusteam.tripfulaxel.guide.model.dto.UserTripAloneDTO;

@Service
public class UserTripAloneServiceImpl extends TripCommonServiceImpl implements UserTripAloneService{

	@Inject
	private final InsertTripMapper insertTripMapper;
	
	public UserTripAloneServiceImpl(InsertTripMapper insertTripMapper) {
		this.insertTripMapper = insertTripMapper;
	}
	
	@Override
	public boolean insertUserTrip(UserTripAloneDTO userTripAloneDTO) {

		int result = insertTripMapper.insertTripAlone(userTripAloneDTO);
		
		return result > 0 ? true : false;
	}

}
