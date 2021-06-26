package com.maximusteam.tripfulaxel.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.model.dto.AdminDTO;

public interface AdminMapper {

	List<AdminDTO> selectAdmin(AdminDTO admin);
}
