package com.app.onlineBanking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.onlineBanking.DTO.CustomerDTO;
import com.app.onlineBanking.DTO.ManagementDTO;
import com.app.onlineBanking.Service.BankingService;

@Component
@RequestMapping("/")
public class BankingController
{

	@Autowired
	private BankingService service;
	
	@RequestMapping(value = { "/","/home" }, method = RequestMethod.GET)
	public ModelAndView getpage() {
		ModelAndView mv = new ModelAndView("home/home");
		mv.addObject("homeactive", "active");
		return mv;

	}
	
	@RequestMapping(value="/save",method=RequestMethod.GET)
	public ModelAndView create(@ModelAttribute ManagementDTO dto)
	{
		service.create(dto);
		ModelAndView mv=new ModelAndView();
		System.out.println("inside save");
		mv.setViewName("jsp/Register");
		mv.addObject("customerRegisterActive", "active");
		return mv.addObject("info",dto.getFirstName());
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView login(@ModelAttribute ManagementDTO dto)
	{
		String role=service.login(dto);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("jsp/login");
		System.out.println("inside login");
		if(role!=null)
		{
			if(role.equals("management"))
			{
				mv.setViewName("jsp/management");
			}
			else if(role.equals("casier"))
			{
				mv.setViewName("jsp/casier");
			}
			else if(role.equals("manager"))
			{
				mv.setViewName("jsp/manager");
			}
			
		}
		else
		{
			mv.setViewName("jsp/login");
			mv.addObject("errMsg","Something Wrong Input Plzz Check Properly");
		}
		
		mv.addObject("customerLoginActive", "active");
		return mv;	
		
	}
	
	@RequestMapping(value="/load",method=RequestMethod.GET)
	public ModelAndView load()
	{
		List<ManagementDTO> l1=service.load();
		ModelAndView mv=new ModelAndView();
		if(l1!=null)
		{
			mv.setViewName("jsp/list");
			mv.addObject("info",l1);
		}
		else
		{
			mv.setViewName("jsp/list");
			mv.addObject("errMsg",l1);
		}
		mv.addObject("customerLoadActive", "active");
		return mv;
	}
	
	@RequestMapping(value="/saveCus",method=RequestMethod.GET)
	public ModelAndView createCus(@ModelAttribute CustomerDTO dto)
	{
		service.createCus(dto);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("jsp/registerCus");
		System.out.println("Customer");
		mv.addObject("info",dto.getfName());
		mv.addObject("customerRActive", "active");
		return mv;
		
	}
	
	@RequestMapping(value="/loadCus",method=RequestMethod.GET)
	public ModelAndView loadCus()
	{
		List<CustomerDTO> l1=service.loadCus();
		ModelAndView mv=new ModelAndView();
		if(l1!=null)
		{
			mv.setViewName("jsp/listCus");
			mv.addObject("info",l1);
		}
		else
		{
			mv.setViewName("jsp/listCus");
			mv.addObject("errMsg",l1);
		}
		mv.addObject("customerLoadCusActive", "active");
		return mv;
	}
	
	@RequestMapping(value="/editDep/{ACNum}",method=RequestMethod.GET)
	public ModelAndView editDep(@PathVariable("ACNum") long ACNum)
	{
		
		CustomerDTO dto=service.editDep(ACNum);
		System.out.println("inside edit");
		ModelAndView mv=new ModelAndView();
		
			mv.setViewName("jsp/editDept");
			return mv.addObject("info",dto);
		
	}
	
	@RequestMapping(value="/updateDept",method=RequestMethod.POST)
	public String updateDep(@ModelAttribute CustomerDTO dto)
	{
		System.out.println("inside update");
		long n=service.updateDep(dto);
		System.out.println("inside updat4");
		return "redirect:/loadCus";
		
		
	}
	
	//for management
	@RequestMapping(value="/delete/{Mid}",method=RequestMethod.GET)
	public String delete(@PathVariable("Mid") int Mid)
	{
		
		service.delete(Mid);
		return "redirect:/load";
		
	}
	
	@RequestMapping(value="/editStaf/{Mid}",method=RequestMethod.GET)
	public ModelAndView editStaf(@PathVariable("Mid") int Mid)
	{
		ManagementDTO dto=service.editStaf(Mid);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("jsp/editStaff");
		return mv.addObject("info",dto);
	}
	
	@RequestMapping(value="/updateStaf",method=RequestMethod.POST)
	public String updateStaf(@ModelAttribute ManagementDTO dto)
	{
		service.updateStaf(dto);
		return "redirect:/load";
		
	}
	
	
	
	
	
	
	
}
