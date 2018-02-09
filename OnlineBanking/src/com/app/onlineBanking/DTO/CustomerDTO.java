package com.app.onlineBanking.DTO;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "c_table")
public class CustomerDTO implements Serializable {

	@Id
	@Column(name = "ACNum")
	private long ACNum;

	@Column(name = "fname")
	private String fname;

	@Column(name = "lName")
	private String lName;

	@Column(name = "fatherName")
	private String fatherName;

	@Column(name = "dob")
	private String dob;

	@Column(name = "gender")
	private String gender;

	@Column(name = "address")
	private String address;

	@Column(name = "contactNo")
	private String contactNo;

	@Column(name = "idType")
	private String idType;

	@Column(name = "idNum")
	private long idNum;

	@Column(name = "maritalStatus")
	private String maritalStatus;

	@Column(name = "EmpDescription")
	private String EmpDescription;

	
	@Column(name = "amount")
	private long amount;

	public long getAmount() {
		return amount;
	}

	public void setAmount(long amount) {
		this.amount = amount;
	}

	
	public String getfName() {
		return fname;
	}

	public void setfName(String fname) {
		this.fname = fname;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getIdType() {
		return idType;
	}

	public void setIdType(String idType) {
		this.idType = idType;
	}

	public long getIdNum() {
		return idNum;
	}

	public void setIdNum(long idNum) {
		this.idNum = idNum;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getEmpDescription() {
		return EmpDescription;
	}

	public void setEmpDescription(String empDescription) {
		EmpDescription = empDescription;
	}

	public long getACNum() {
		return ACNum;
	}

	public void setACNum(long aCNum) {
		ACNum = aCNum;
	}

}
