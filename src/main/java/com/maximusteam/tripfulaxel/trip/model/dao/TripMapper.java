package com.maximusteam.tripfulaxel.trip.model.dao;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.trip.model.dto.ReviewDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.SortCondition;
import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;

public interface TripMapper {

	List<TripDTO> selectTripList(Map<String, Object> parameter);
	
	List<ReviewDTO> selectReviewList(int tripCode);
}
