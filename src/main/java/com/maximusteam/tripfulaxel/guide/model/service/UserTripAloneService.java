package com.maximusteam.tripfulaxel.guide.model.service;

import com.maximusteam.tripfulaxel.guide.model.dto.UserTripAloneDTO;

public interface UserTripAloneService extends TripCommonService {

	boolean insertUserTrip(UserTripAloneDTO userTripAloneDTO);

}
