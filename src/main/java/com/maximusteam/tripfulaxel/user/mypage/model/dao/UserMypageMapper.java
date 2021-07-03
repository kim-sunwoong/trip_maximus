package com.maximusteam.tripfulaxel.user.mypage.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;

public interface UserMypageMapper {

	List<JoinTripListDTO> selectJoinList();

}
