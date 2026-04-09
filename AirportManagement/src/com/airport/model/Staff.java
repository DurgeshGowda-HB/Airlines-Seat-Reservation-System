package com.airport.model;
import dbconnect.*;
public class Staff {
int staffId;
int airportId;
String designation;
DAO dao;
public int getStaffId() {
	return staffId;
}
public void setStaffId(int staffId) {
	this.staffId = staffId;
}
public int getAirportId() {
	return airportId;
}
public void setAirportId(int airportId) {
	this.airportId = airportId;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
}