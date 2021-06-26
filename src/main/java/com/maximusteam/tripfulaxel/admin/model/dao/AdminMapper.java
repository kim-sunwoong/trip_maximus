package com.maximusteam.tripfulaxel.admin.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;

public interface AdminMapper {

	List<AdminDTO> selectAdmin(AdminDTO admin);
}
