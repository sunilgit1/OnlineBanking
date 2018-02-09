package com.app.onlineBanking.Serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.onlineBanking.DAO.BankingDAO;
import com.app.onlineBanking.DTO.CustomerDTO;
import com.app.onlineBanking.DTO.ManagementDTO;
import com.app.onlineBanking.Service.BankingService;

@Component
@Service
public class BankingServiceImpl implements BankingService{

	@Autowired
	private BankingDAO dao ;
	
	@Override
	@Transactional
	public void create(ManagementDTO dto)
	{
		dao.create(dto);
		
	}

	@Override
	public String login(ManagementDTO dto) {
		return dao.login(dto);
	}

	@Override
	public List<ManagementDTO> load() {
		return dao.load();
	}

	@Override
	public void createCus(CustomerDTO dto) {
		dao.createCus(dto);
		
	}

	@Override
	public List<CustomerDTO> loadCus() {
		return dao.loadCus();
	}

	@Override
	public CustomerDTO editDep(long ACNum) {
		return dao.editDep(ACNum);
	}

	@Override
	public long updateDep(CustomerDTO dto) {
		System.out.println("inside Service");
		return dao.updateDep(dto);
		
	}

	@Override
	public void delete(int Mid) {
		dao.delete(Mid);
		
	}

	@Override
	public ManagementDTO editStaf(int Mid) {
		return dao.editStaf(Mid);
	}

	@Override
	public void updateStaf(ManagementDTO dto) {
		 dao.updateStaf(dto);
	}

}
