package com.anjib.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TableController {
	@RequestMapping(value = "showTablePage.htm", method = RequestMethod.GET)
    public ModelAndView helloWorld() {
        return new ModelAndView("exportPage");
    }
	
	@RequestMapping(value = "/telephone/openCases.htm", method = RequestMethod.GET)
	public @ResponseBody DataTablesResponse<OpenCaseDto> getOpenCases(Model model, HttpServletRequest request) {
		DataTablesResponse<OpenCaseDto> response = new DataTablesResponse<OpenCaseDto>();
		List<OpenCaseDto> openCases = new ArrayList<OpenCaseDto>();
		OpenCaseDto openCaseDto = new OpenCaseDto();
		openCaseDto.setFirstName("Test");
		openCaseDto.setLastName("User1");
		openCaseDto.setGroupName("TestGroup21");
		openCaseDto.setStatus("OPEN");
		openCases.add(openCaseDto);
		response.setRecordsTotal(20);
		response.setRecordsFiltered(20);
		response.setData(openCases);
		response.setError(null);
		response.setDraw(Integer.parseInt(request.getParameter("draw")));

		return response;
	}
	
	public class DataTablesResponse<T> {
		private Integer draw;
		private Integer recordsTotal;
		private Integer recordsFiltered;
		private List<T> data;
		private String error;
		
		public Integer getDraw() {
			return draw;
		}
		public void setDraw(Integer draw) {
			this.draw = draw;
		}
		public Integer getRecordsTotal() {
			return recordsTotal;
		}
		public void setRecordsTotal(Integer recordsTotal) {
			this.recordsTotal = recordsTotal;
		}
		public Integer getRecordsFiltered() {
			return recordsFiltered;
		}
		public void setRecordsFiltered(Integer recordsFiltered) {
			this.recordsFiltered = recordsFiltered;
		}
		public List<T> getData() {
			return data;
		}
		public void setData(List<T> data) {
			this.data = data;
		}
		public String getError() {
			return error;
		}
		public void setError(String error) {
			this.error = error;
		}
	}
	
	public class OpenCaseDto {
		private String firstName;
		private String lastName;
		private String groupName;
		private String status;
		
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getGroupName() {
			return groupName;
		}
		public void setGroupName(String groupName) {
			this.groupName = groupName;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
	}
}
