package com.maximusteam.tripfulaxel.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.model.dto.AdminDTO;

public interface AdminService {

	List<AdminDTO> selectAdmin(AdminDTO admin);
}
