package com.maximusteam.tripfulaxel.trip.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.trip.model.dao.TripMapper;
import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;

@Service
public class TripServiceImpl implements TripService{

	private final TripMapper tripMapper;
	
	@Autowired
	public TripServiceImpl(TripMapper tripMapper) {
		this.tripMapper = tripMapper;
	}

	@Override
	public List<TripDTO> selectTripList(Map<String, String> parameter) {
		
		return tripMapper.selectTripList(parameter);
	}

}
