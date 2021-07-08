package com.maximusteam.tripfulaxel.guide.model.service;

import com.maximusteam.tripfulaxel.guide.model.dto.UserTripTogetherDTO;

public interface UserTripTogetherService extends TripCommonService {

	boolean insertJoinTrip(UserTripTogetherDTO userTripTogetherDTO);

}
