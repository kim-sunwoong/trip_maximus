package com.maximusteam.tripfulaxel.guide.model.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.guide.model.dao.InsertTripMapper;
import com.maximusteam.tripfulaxel.guide.model.dto.UserTripTogetherDTO;

@Service
public class UserTripTogetherServiceImpl extends TripCommonServiceImpl implements UserTripTogetherService {

	@Inject
	private final InsertTripMapper insertTripMapper;
	
	public UserTripTogetherServiceImpl(InsertTripMapper insertTripMapper) {
		this.insertTripMapper = insertTripMapper;
	}
	
	@Override
	public boolean insertJoinTrip(UserTripTogetherDTO userTripTogetherDTO) {

		int result = insertTripMapper.insertTripTogether(userTripTogetherDTO);
		
		return result > 0 ? true : false;
	}
}
