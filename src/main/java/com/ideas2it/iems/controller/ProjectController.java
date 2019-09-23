package com.ideas2it.iems.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.iems.model.Project;
import com.ideas2it.iems.service.ProjectService;

/**
 * Program to perform CRUD operation based on user choice in web Application for
 * Project module
 *
 * @version 1.0
 * @date 14/09/2019
 * @author Dilli Babu
 */
@Controller
public class ProjectController {
    @Autowired
    private ProjectService projectService;

    @RequestMapping(value = "/project")     
    public ModelAndView employeePage(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        ModelAndView model = new ModelAndView("project");
        return model;
    }
    
    /**
     * Method to display all poject data that exists
     *
     * @param request  HttpServletRequest object that contains user's request
     * @param response passing HttpServletResponse to send response for user's
     *                 request
     * @return- model jsp page to display all pojects detail
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException      when servlet fails to handle input/output for the
     *                          request
     */
    @RequestMapping(value = "/displayProjects")
    public ModelAndView displayProjects(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Project> projects = null;
        ModelAndView model = new ModelAndView("displayAllProject");
        projects = projectService.getProjects();
        model.addObject("projects", projects);
        return model;
    }

    /**
     * Method to call new project creation page with project object
     *
     * @param request  HttpServletRequest object that contains user's request
     * @param response HttpServletResponse object to send response for user's
     *                 request
     * @return- model jsp page to create new project
     * @throws ServletException when servlet fails to handle post method request
     * @throws IOException      when servlet fails to handle input/output for post
     *                          method request
     */
    @RequestMapping(value = "/newProject")
    public ModelAndView newProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Project project = new Project();
        ModelAndView model = new ModelAndView("createOwnProject");
        model.addObject("project", project);
        return model;
    }

    /**
     * Method to set the project details
     *
     * @param request  passing HttpServletRequest with user's servlet request
     * @param response passing HttpServletResponse to send response for user's
     *                 request
     * @return project- project object that has to be added/updated
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/setProjectDetails")
    private Project setProjectDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Project project = new Project();
        project.setName(request.getParameter("name"));
        project.setDescription(request.getParameter("description"));
        project.setStartDate(request.getParameter("startDate"));
        project.setEndDate(request.getParameter("endDate"));
        return project;
    }

    /**
     * Method to add new Project
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page that has been shown after creation of project
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/createProject")
    public ModelAndView createProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView model = new ModelAndView();
        Project project = setProjectDetails(request, response);
        int projectId = projectService.createProject(project);
        model.setViewName("projectRegistration");
        model.addObject("projectId", projectId);
        return model;
    }

    /**
     * Method to update an existing Project
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page that has been shown after updation of project
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/updateProject")
    public ModelAndView updateProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView model = new ModelAndView();
        Project project = setProjectDetails(request, response);
        projectService.updateProject(project);
        String name = project.getName();
        model.setViewName("projectUpdation");
        model.addObject("name", name);
        return model;
    }

    /**
     * Method to display particular project data by using project id to update
     *
     * @param request  HttpServletRequest object that contains user's request
     * @param response passing HttpServletResponse to send response for user's
     *                 request
     * @return- model jsp page to display particular project's detail to update
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException      when servlet fails to handle input/output for the
     *                          request
     */
    @RequestMapping(value = "/displayProjectToUpdate")
    public ModelAndView displayProjectToUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        Project project = projectService.getProjectById(id);
        model.setViewName("updateProjectDisplay");
        model.addObject("project", project);
        return model;
    }

    /**
     * Method to display particular project data by using project id
     *
     * @param request  HttpServletRequest object that contains user's request
     * @param response passing HttpServletResponse to send response for user's
     *                 request
     * @return- model jsp page to display project details
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException      when servlet fails to handle input/output for the
     *                          request
     */
    @RequestMapping(value = "/displayProject")
    public ModelAndView displayProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        Project project = projectService.getProjectById(id);
        model.setViewName("projectDisplay");
        model.addObject("project", project);
        return model;
    }

    /**
     * Method to remove particular project data by using project id
     *
     * @param request  HttpServletRequest object that contains user's request
     * @param response HttpServletResponse object to send response for user's
     *                 request
     * @return- model jsp page that has been shown after removing a project
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException      when servlet fails to handle input/output for the
     *                          request
     */
    @RequestMapping(value = "/removeProject")
    public ModelAndView removeProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        projectService.removeProject(id);
        model.setViewName("projectRemoval");
        model.addObject("id", id);
        return model;
    }

    /**
     * Method to display employees involved in a project
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page to show employees involved in a project
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/displayProjectEmployee")
    public ModelAndView displayProjectEmployee(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Project project = null;
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        project = projectService.getProjectById(id);
        model.setViewName("projectEmployeeDisplay");
        model.addObject("project", project);
        return model;
    }

    /**
     * Method to add employee for selected project
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- adding employee into project result page
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/addEmployeeToProject")
    public ModelAndView addEmployeeToProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int employeeId = Integer.parseInt(request.getParameter("employeeId"));
        ModelAndView model = new ModelAndView();
        projectService.addEmployeeToProject(id, employeeId);
        model.setViewName("addProEmployeeResult");
        model.addObject("id", id);
        return model;
    }

    /**
     * Method to remove an employee from a selected project
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- removing employee from project result page
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/removeEmployeeFromProject")
    public ModelAndView removeEmployeeFromProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int employeeId = Integer.parseInt(request.getParameter("employeeId"));
        ModelAndView model = new ModelAndView();
        projectService.removeEmployeeFromProject(id, employeeId);
        model.setViewName("ProRemoveEmpResult");
        model.addObject("id", id);
        return model;
    }

    /**
     * Method to redirect to add employee for a selected project
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return- model jsp page to add new employee for selected project
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/addEmployeeToProjectRedirect")
    public ModelAndView addEmployeeToProjectRedirect(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        model.setViewName("addEmployeeToProject");
        model.addObject("id", id);
        return model;
    }
}
