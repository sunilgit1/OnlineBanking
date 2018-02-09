package com.app.onlineBanking.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.app.onlineBanking.DAO.BankingDAO;
import com.app.onlineBanking.DTO.CustomerDTO;
import com.app.onlineBanking.DTO.ManagementDTO;

@Component
@Repository("dao")
public class BankingDAOImpl implements BankingDAO{

	@Autowired
	private SessionFactory sf;
	
	@Override
	public void create(ManagementDTO dto) {
		
		if(dto.getFirstName()!=null)
		{
		Session sess=sf.openSession();
		sess.save(dto);
		sess.beginTransaction().commit();
		}
		else
		{
			System.out.println("no data");
		}
		
	}

	@Override
	public String login(ManagementDTO dto) {
		
		String val=null;
		if(dto.getUserName()!=null)
		{
		Session sess=sf.openSession();
		String query=" select role from ManagementDTO where userName=:uname and role=:rl and password=:psd ";
		Query hql=sess.createQuery(query);
		hql.setParameter("uname", dto.getUserName());
		hql.setParameter("rl", dto.getRole());
		hql.setParameter("psd", dto.getPassword());
		 val=(String)hql.uniqueResult();
		
		} else
		{
			System.out.println("inavlid data");
		}
		return val;
	}

	@Override
	public List<ManagementDTO> load() {
		
		Session sess=sf.openSession();
		Criteria crit=sess.createCriteria(ManagementDTO.class);
		List<ManagementDTO> l1=crit.list();
		return l1;
	}

	@Override
	public void createCus(CustomerDTO dto) {
		
		if(dto.getlName()!=null)
		{
		Session sess=sf.openSession();
		System.out.println("inside Cus");
		sess.save(dto);
		sess.beginTransaction().commit();
		}
		else
		{
			System.out.println("no data");
		}
		
	}

	@Override
	public List<CustomerDTO> loadCus() {
		Session sess=sf.openSession();
		Criteria crit=sess.createCriteria(CustomerDTO.class);
		List<CustomerDTO> l1=crit.list();
		return l1;
	}

	@Override
	public CustomerDTO editDep(long ACNum) {
		
		Session sess=sf.openSession();
		System.out.println("inside edit2");
		CustomerDTO dto=sess.get(CustomerDTO.class, ACNum);
		return dto;
	}

	@Override
	public long updateDep(CustomerDTO dto) {
		
		Session sess=sf.openSession();
		String query=" update CustomerDTO set amount=:amt where ACNum=:Acno";
		Query hql=sess.createQuery(query);
		hql.setParameter("amt", dto.getAmount());
		hql.setParameter("Acno", dto.getACNum());	
		int n=hql.executeUpdate();
		System.out.println(n);
		sess.beginTransaction().commit();
	
		return n;
	}

	@Override
	public void delete(int Mid) {
	
		ManagementDTO dto=new ManagementDTO();
		dto.setMid(Mid);
		Session sess=sf.openSession();
		sess.delete(dto);
		sess.beginTransaction().commit();
		
		
	}

	@Override
	public ManagementDTO editStaf(int Mid) {
		
		Session sess=sf.openSession();
		ManagementDTO dto=sess.get(ManagementDTO.class, Mid);
		return dto;
		
	}

	@Override
	public void updateStaf(ManagementDTO dto) {
		Session sess=sf.openSession();
		sess.update(dto);
		sess.beginTransaction().commit();
	}

}
