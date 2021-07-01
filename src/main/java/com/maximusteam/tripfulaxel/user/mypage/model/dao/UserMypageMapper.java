package com.maximusteam.tripfulaxel.user.mypage.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.MypageTripDTO;

public interface UserMypageMapper {

	List<MypageTripDTO> selectJoinList();

}
