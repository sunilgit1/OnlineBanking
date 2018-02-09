package com.app.onlineBanking.Service;

import java.util.List;

import com.app.onlineBanking.DTO.CustomerDTO;
import com.app.onlineBanking.DTO.ManagementDTO;

public interface BankingService 
{

	public void create(ManagementDTO dto);
	public String login(ManagementDTO dto);
	public List<ManagementDTO> load();
	public void createCus(CustomerDTO dto);
	public List<CustomerDTO> loadCus();
	public CustomerDTO editDep(long aCNum);
	public long updateDep(CustomerDTO dto);
	public void delete(int Mid);
	public ManagementDTO editStaf(int Mid);
	public void updateStaf(ManagementDTO dto);
}
