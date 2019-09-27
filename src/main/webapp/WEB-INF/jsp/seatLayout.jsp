<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iems</title>
<meta class="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" type="text/css" href="/css/seatStyle.css">
</head>
<body style="background-color: white;">
    <div class="maindiv">
        <table align="center">
            <tr>
                <td>
                    <ol class="borderimgr">
                        <li class="row row--3">
                            <ol class="seats">
                                <li class="seatl"><input type="checkbox" id="3AL"
                                    onclick="assignPopUp(this.id, this.value);" /> <label
                                    for="3AL"></label></li>
                                <li class="seatl"><input type="checkbox" id="3BL"
                                    onclick="assignPopUp(this.id, this.value);" /> <label
                                    for="3BL"></label></li>
                                <li class="seatl"><input type="checkbox" id="3CL"
                                    onclick="assignPopUp(this.id, this.value);" /> <label
                                    for="3CL"></label></li>
                                    
                                    
                                <li class="seatl"><input type="hidden" class="3DL" /><input type="checkbox" id="3DL" class="3DL" onclick="assignPopUp(this.id, this.value);" />
                                <label for="3DL"><i class="fas fa-chair chair rotate-270 3DL" name="employeeId"></i></label></li>
                                        
                                        
                                <li class="seatl"><input type="hidden" class="3EL" /><input type="checkbox" id="3EL"class="3EL" onclick="assignPopUp(this.id, this.value);"  /> 
                                <label for="3EL"><i class="fas fa-chair chair rotate-90 3EL" name="employeeId"></i></label></li>
                                        
                                        
                                <li class="seatl"><input type="hidden" class="3FL" /><input type="checkbox" id="3FL" class="3FL" onclick="assignPopUp(this.id, this.value);" /> 
                                <label for="3FL"><i class="fas fa-chair chair rotate-270 3FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        
                        <li class="row row--4">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="4AL" /><input
                                    type="checkbox" id="4AL" class="4AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4AL" /> <label
                                    for="4AL"></label></li>
                                <li class="seatl"><input type="hidden" class="3BL" /><input
                                    type="checkbox" id="4BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4BL" /> <label
                                    for="4BL"></label></li>
                                <li class="seatl"><input type="hidden" class="3CL" /><input
                                    type="checkbox" id="4CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4CL" /> <label
                                    for="4CL"></label></li>
                                <li class="seatl"><input type="hidden" class="4DL" /><input
                                    type="checkbox" id="4DL" class="4DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4DL" />
                                    <label for="4DL"><i
                                        class="fas fa-chair chair rotate-270 4DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="4EL" /><input
                                    type="checkbox" id="4EL" class="4EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4EL" />
                                    <label for="4EL"><i
                                        class="fas fa-chair chair rotate-90 4EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="4FL" /><input
                                    type="checkbox" id="4FL" class="4FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4FL" />
                                    <label for="4FL"><i
                                        class="fas fa-chair chair rotate-270 4FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--5">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="5AL" /><input
                                    type="checkbox" id="" class="5AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5AL" /> <label
                                    for="5AL"></label></li>
                                <li class="seatl"><input type="hidden" class="3BL" /><input
                                    type="checkbox" id="" class="5BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5BL" /> <label
                                    for="5BL"></label></li>
                                <li class="seatl"><input type="hidden" class="3CL" /><input
                                    type="checkbox" id="5CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5CL" /> <label
                                    for="5CL"></label></li>
                                <li class="seatl"><input type="hidden" class="5DL" /><input
                                    type="checkbox" id="5DL" class="5DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5DL" />
                                    <label for="5DL"><i
                                        class="fas fa-chair chair rotate-270 5DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="5EL" /><input
                                    type="checkbox" id="5EL" class="5EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5EL" />
                                    <label for="5EL"><i
                                        class="fas fa-chair chair rotate-90 5EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="5FL" /><input
                                    type="checkbox" id="5FL" class="5FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5FL" />
                                    <label for="5FL"><i
                                        class="fas fa-chair chair rotate-270 5FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--6">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="6AL" /><input
                                    type="checkbox" id="6AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6AL" />
                                    <label for="6AL"></label></li>
                                <li class="seatl"><input type="hidden" class="3BL" /><input
                                    type="checkbox" id="6BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6BL" />
                                    <label for="6BL"></label></li>
                                <li class="seatl"><input type="hidden" class="3CL" /><input
                                    type="checkbox" id="6CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6CL" />
                                    <label for="6CL"></label></li>
                                <li class="seatl"><input type="hidden" class="6DL" /><input
                                    type="checkbox" id="6DL" class="6DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6DL" />
                                    <label for="6DL"><i
                                        class="fas fa-chair chair rotate-270 6DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="6EL" /><input
                                    type="checkbox" id="6EL" class="6EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6EL" />
                                    <label for="6EL"><i
                                        class="fas fa-chair chair rotate-90 6EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="6FL" /><input
                                    type="checkbox" id="6FL" class="6FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6FL" />
                                    <label for="6FL"><i
                                        class="fas fa-chair chair rotate-270 6FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <br>
                        <br>
                        <li class="row row--7">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="7AL" /><input
                                    type="checkbox" id="7AL" class="7AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="7AL" />
                                    <label for="7AL"><i
                                        class="fas fa-chair chair rotate-90 7AL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="7BL" /><input
                                    type="checkbox" id="7BL" class="7BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="7BL" />
                                    <label for="7BL"><i
                                        class="fas fa-chair chair rotate-270 7BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="7CL" /><input
                                    type="checkbox" id="7CL" class="7CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="7CL" />
                                    <label for="7CL"><i
                                        class="fas fa-chair chair rotate-90 7CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="7DL" /><input
                                    type="checkbox" id="7DL" class="7DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="7DL" />
                                    <label for="7DL"><i
                                        class="fas fa-chair chair rotate-270 7DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="7EL" /><input
                                    type="checkbox" id="7EL" class="7EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="7EL" />
                                    <label for="7EL"><i
                                        class="fas fa-chair chair rotate-90 7EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="7FL" /><input
                                    type="checkbox" id="7FL" class="7FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="7FL" />
                                    <label for="7FL"><i
                                        class="fas fa-chair chair rotate-270 7FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--8">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="8AL" /><input
                                    type="checkbox" id="8AL" class="8AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="8AL" />
                                    <label for="8AL"><i
                                        class="fas fa-chair chair rotate-90 8AL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="8BL" /><input
                                    type="checkbox" id="8BL" class="8BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="8BL" />
                                    <label for="8BL"><i
                                        class="fas fa-chair chair rotate-270 8BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="8CL" /><input
                                    type="checkbox" id="8CL" class="8CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="8CL" />
                                    <label for="8CL"><i
                                        class="fas fa-chair chair rotate-90 8CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="8DL" /><input
                                    type="checkbox" id="8DL" class="8DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="8DL" />
                                    <label for="8DL"><i
                                        class="fas fa-chair chair rotate-270 8DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="8EL" /><input
                                    type="checkbox" id="8EL" class="8EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="8EL" />
                                    <label for="8EL"><i
                                        class="fas fa-chair chair rotate-90 8EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="8FL" /><input
                                    type="checkbox" id="8FL" class="8FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="8FL" />
                                    <label for="8FL"><i
                                        class="fas fa-chair chair rotate-270 8FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--9">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="9AL" /><input
                                    type="checkbox" id="9AL" class="9AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="9AL" />
                                    <label for="9AL"><i
                                        class="fas fa-chair chair rotate-90 9AL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="9BL" /><input
                                    type="checkbox" id="9BL" class="9BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="9BL" />
                                    <label for="9BL"><i
                                        class="fas fa-chair chair rotate-270 9BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="9CL" /><input
                                    type="checkbox" id="9CL" class="9CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="9CL" />
                                    <label for="9CL"><i
                                        class="fas fa-chair chair rotate-90 9CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="9DL" /><input
                                    type="checkbox" id="9DL" class="9DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="9DL" />
                                    <label for="9DL"><i
                                        class="fas fa-chair chair rotate-270 9DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="9EL" /><input
                                    type="checkbox" id="9EL" class="9EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="9EL" />
                                    <label for="9EL"><i
                                        class="fas fa-chair chair rotate-90 9EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="9FL" /><input
                                    type="checkbox" id="9FL" class="9FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="9FL" />
                                    <label for="9FL"><i
                                        class="fas fa-chair chair rotate-270 9FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--10">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="10AL" /><input
                                    type="checkbox" id="10AL" class="10AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="10AL" />
                                    <label for="10AL"><i
                                        class="fas fa-chair chair rotate-90 10AL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="10BL" /><input
                                    type="checkbox" id="10BL" class="10BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="10BL" />
                                    <label for="10BL"><i
                                        class="fas fa-chair chair rotate-270 10BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="10CL" /><input
                                    type="checkbox" id="10CL" class="10CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="10CL" />
                                    <label for="10CL"><i
                                        class="fas fa-chair chair rotate-90 10CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="10DL" /><input
                                    type="checkbox" id="10DL" class="10DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="10DL" />
                                    <label for="10DL"><i
                                        class="fas fa-chair chair rotate-270 10DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="10EL" /><input
                                    type="checkbox" id="10EL" class="10EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="10EL" />
                                    <label for="10EL"><i
                                        class="fas fa-chair chair rotate-90 10EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="10FL" /><input
                                    type="checkbox" id="10FL" class="10FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="10FL" />
                                    <label for="10FL"><i
                                        class="fas fa-chair chair rotate-270 10FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--11">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="11AL" /><input
                                    type="checkbox" id="11AL" class="11AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="11AL" />
                                    <label for="11AL"><i
                                        class="fas fa-chair chair rotate-90 11AL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="11BL" /><input
                                    type="checkbox" id="11BL" class="11BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="11BL" />
                                    <label for="11BL"><i
                                        class="fas fa-chair chair rotate-270 11BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="11CL" /><input
                                    type="checkbox" id="11CL" class="11CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="11CL" />
                                    <label for="11CL"><i
                                        class="fas fa-chair chair rotate-90 11CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="11DL" /><input
                                    type="checkbox" id="11DL" class="11DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="11DL" />
                                    <label for="11DL"><i
                                        class="fas fa-chair chair rotate-270 11DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="11EL" /><input
                                    type="checkbox" id="11EL" class="11EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="11EL" />
                                    <label for="11EL"><i
                                        class="fas fa-chair chair rotate-90 11EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="11FL" /><input
                                    type="checkbox" id="11FL" class="11FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="11FL" />
                                    <label for="11FL"><i
                                        class="fas fa-chair chair rotate-270 11FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <br>
                        <br>
                        <br>
                        <br>
                        <li class="row row--12">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="12AL" /><input
                                    type="checkbox" id="12AL" class="12AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="12AL" />
                                    <label for="12AL"></label></li>
                                <li class="seatl"><input type="hidden" class="12BL" /><input
                                    type="checkbox" id="12BL" class="12BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="12BL" />
                                    <label for="12BL"><i
                                        class="fas fa-chair chair rotate-270 12BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="12CL" /><input
                                    type="checkbox" id="12CL" class="12CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="12CL" />
                                    <label for="12CL"><i
                                        class="fas fa-chair chair rotate-90 12CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="12DL" /><input
                                    type="checkbox" id="12DL" class="12DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="12DL" />
                                    <label for="12DL"><i
                                        class="fas fa-chair chair rotate-270 12DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="12EL" /><input
                                    type="checkbox" id="12EL" class="12EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="12EL" />
                                    <label for="12EL"><i
                                        class="fas fa-chair chair rotate-90 12EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="12FL" /><input
                                    type="checkbox" id="12FL" class="12FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="12FL" />
                                    <label for="12FL"><i
                                        class="fas fa-chair chair rotate-270 12FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--13">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="13AL" /><input
                                    type="checkbox" id="13AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="13AL" />
                                    <label for="13AL"></label></li>
                                <li class="seatl"><input type="hidden" class="13BL" /><input
                                    type="checkbox" id="13BL" class="13BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="13BL" />
                                    <label for="13BL"><i
                                        class="fas fa-chair chair rotate-270 13BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="13CL" /><input
                                    type="checkbox" id="13CL" class="13CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="13CL" />
                                    <label for="13CL"><i
                                        class="fas fa-chair chair rotate-90 13CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="13DL" /><input
                                    type="checkbox" id="13DL" class="13DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="13DL" />
                                    <label for="13DL"><i
                                        class="fas fa-chair chair rotate-270 13DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="13EL" /><input
                                    type="checkbox" id="13EL" class="13EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="13EL" />
                                    <label for="13EL"><i
                                        class="fas fa-chair chair rotate-90 13EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="3DL"
                                    class="13FL" /><input type="checkbox" id="13FL" class="13FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="13FL" />
                                    <label for="13FL"><i
                                        class="fas fa-chair chair rotate-270 13FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--14">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="14AL" /><input
                                    type="checkbox" id="14AL" class="14AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="14AL" />
                                    <label for="14AL"></label></li>
                                <li class="seatl"><input type="hidden" class="14BL" /><input
                                    type="checkbox" id="14BL" class="14BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="14BL" />
                                    <label for="14BL"><i
                                        class="fas fa-chair chair rotate-270 14BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="14CL" /><input
                                    type="checkbox" id="14CL" class="14CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="14CL" />
                                    <label for="14CL"><i
                                        class="fas fa-chair chair rotate-90 14CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="14DL" /><input
                                    type="checkbox" id="14DL" class="14DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="14DL" />
                                    <label for="14DL"><i
                                        class="fas fa-chair chair rotate-270 14DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="14EL" /><input
                                    type="checkbox" id="14EL" class="14EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="14EL" />
                                    <label for="14EL"><i
                                        class="fas fa-chair chair rotate-90 14EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="14FL" /><input
                                    type="checkbox" id="14FL" class="14FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="14FL" />
                                    <label for="14FL"><i
                                        class="fas fa-chair chair rotate-270 14FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--15">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="15AL" /><input
                                    type="checkbox" id="15AL" class="15AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="15AL" />
                                    <label for="15AL"></label></li>
                                <li class="seatl"><input type="hidden" class="15BL" /><input
                                    type="checkbox" id="15BL" class="15BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="15BL" />
                                    <label for="15BL"><i
                                        class="fas fa-chair chair rotate-270 15BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="15CL" /><input
                                    type="checkbox" id="15CL" class="15CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="15CL" />
                                    <label for="15CL"><i
                                        class="fas fa-chair chair rotate-90 15CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="15DL" /><input
                                    type="checkbox" id="15DL" class="15DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="15DL" />
                                    <label for="15DL"><i
                                        class="fas fa-chair chair rotate-270 15DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="15EL" /><input
                                    type="checkbox" id="15EL" class="15EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="15EL" />
                                    <label for="15EL"><i
                                        class="fas fa-chair chair rotate-90 15EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="15FL" /><input
                                    type="checkbox" id="15FL" class="15FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="15FL" />
                                    <label for="15FL"><i
                                        class="fas fa-chair chair rotate-270 15FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--16">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="16AL" /><input
                                    type="checkbox" id="16AL" class="16AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="16AL" />
                                    <label for="16AL"></label></li>
                                <li class="seatl"><input type="hidden" class="16BL" /><input
                                    type="checkbox" id="16BL" class="16BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="16BL" />
                                    <label for="16BL"><i
                                        class="fas fa-chair chair rotate-270 16BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="16CL" /><input
                                    type="checkbox" id="16CL" class="16CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="16CL" />
                                    <label for="16CL"><i
                                        class="fas fa-chair chair rotate-90 16CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="16DL" /><input
                                    type="checkbox" id="16DL" class="16DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="16DL" />
                                    <label for="16DL"><i
                                        class="fas fa-chair chair rotate-270 16DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="16EL" /><input
                                    type="checkbox" id="16EL" class="16EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="16EL" />
                                    <label for="16EL"><i
                                        class="fas fa-chair chair rotate-90 16EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="16FL" /><input
                                    type="checkbox" id="16FL" class="16FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="16FL" />
                                    <label for="16FL"><i
                                        class="fas fa-chair chair rotate-270 16FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--17">
                            <ol class="seats">
                                <li class="seatl"><input type="hidden" class="17AL" /><input
                                    type="checkbox" id="17AL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="17AL" />
                                    <label for="17AL"></label></li>
                                <li class="seatl"><input type="hidden" class="17BL" /><input
                                    type="checkbox" id="17BL" class="17BL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="17BL" />
                                    <label for="17BL"><i
                                        class="fas fa-chair chair rotate-270 17BL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="17CL" /><input
                                    type="checkbox" id="17CL" class="17CL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="17CL" />
                                    <label for="17CL"><i
                                        class="fas fa-chair chair rotate-90 17CL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="17DL" /><input
                                    type="checkbox" id="17DL" class="17DL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="17DL" />
                                    <label for="17DL"><i
                                        class="fas fa-chair chair rotate-270 17DL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="17EL" /><input
                                    type="checkbox" id="17EL" class="17EL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="17EL" />
                                    <label for="17EL"><i
                                        class="fas fa-chair chair rotate-90 17EL" name="employeeId"></i></label></li>
                                <li class="seatl"><input type="hidden" class="17FL" /><input
                                    type="checkbox" id="17FL" class="17FL"
                                    onclick="assignPopUp(this.id, this.value);" data-id="17FL" />
                                    <label for="17FL"><i
                                        class="fas fa-chair chair rotate-270 17FL" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <br>
                    </ol>
                </td>
                <td><br> <br> <br> <br> <br> <br>
                    <br> <br> <br> <br> <br> <br> <br>
                    <ol class="borderimgl">
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <li class="row row--1">
                            <ol class="seats">
                                <li class="seatr"><input type="hidden" class="1AR" /><input
                                    type="checkbox" id="1AR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1AR"
                                    data-row="1" /> <label for="1AR"></label></li>
                                <li class="seatr"><input type="hidden" class="1BR" /><input
                                    type="checkbox" id="1BR" class="1BR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1BR"
                                    data-row="1" /> <label for="1BR"><i
                                        class="fas fa-chair chair rotate-90 1BR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="1CR" /><input
                                    type="checkbox" id="1CR" class="1CR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1CR"
                                    data-row="1" /> <label for="1CR"><i
                                        class="fas fa-chair chair rotate-270 1CR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="1DR" /><input
                                    type="checkbox" id="1DR" class="1DR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1DR"
                                    data-row="1" /> <label for="1DR"><i
                                        class="fas fa-chair chair rotate-90 1DR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="1ER" /><input
                                    type="checkbox" id="1ER" class="1ER"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1ER"
                                    data-row="1" /> <label for="1ER"><i
                                        class="fas fa-chair chair rotate-270 1ER" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="1FR" /><input
                                    type="checkbox" id="1FR" class="1FR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1FR"
                                    data-row="1" /> <label for="1FR"><i
                                        class="fas fa-chair chair rotate-90 1FR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="1GR" /><input
                                    type="checkbox" id="1GR" class="1GR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1GR"
                                    data-row="1" /> <label for="1GR"><i
                                        class="fas fa-chair chair rotate-270 1GR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="1HR" /><input
                                    type="checkbox" id="1HR" class="1HR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="1HR"
                                    data-row="1" /> <label for="1HR"><i
                                        class="fas fa-chair chair rotate-90 1HR" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--2">
                            <ol class="seats">
                                <li class="seatr"><input type="hidden" class="2AR" /><input
                                    type="checkbox" id="2AR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2AR"
                                    data-row="2" /> <label for="2AR"></label></li>
                                <li class="seatr"><input type="hidden" class="2BR" /><input
                                    type="checkbox" id="2BR" class="2BR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2BR"
                                    data-row="2" /> <label for="2BR"><i
                                        class="fas fa-chair chair rotate-90 2BR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="2CR" /><input
                                    type="checkbox" id="2CR" class="2CR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2CR"
                                    data-row="2" /> <label for="2CR"><i
                                        class="fas fa-chair chair rotate-270 2CR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="2DR" /><input
                                    type="checkbox" id="2DR" class="2DR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2DR"
                                    data-row="2" /> <label for="2DR"><i
                                        class="fas fa-chair chair rotate-90 2DR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="2ER" /><input
                                    type="checkbox" id="2ER" class="2ER"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2ER"
                                    data-row="2" /> <label for="2ER"><i
                                        class="fas fa-chair chair rotate-270 2ER" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="2FR" /><input
                                    type="checkbox" id="2FR" class="2FR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2FR"
                                    data-row="2" /> <label for="2FR"><i
                                        class="fas fa-chair chair rotate-90 2FR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="2GR" /><input
                                    type="checkbox" id="2GR" class="" class="2GR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2GR"
                                    data-row="2" /> <label for="2GR"><i
                                        class="fas fa-chair chair rotate-270 2GR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="2HR" /><input
                                    type="checkbox" id="2HR" class="2HR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="2HR"
                                    data-row="2" /> <label for="2HR"><i
                                        class="fas fa-chair chair rotate-90 2HR" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--3">
                            <ol class="seats">
                                <li class="seatr"><input type="hidden" class="3AR" /><input
                                    type="checkbox" id="3AR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3AR" />
                                    <label for="3AR"></label></li>
                                <li class="seatr"><input type="hidden" class="3BR" /><input
                                    type="checkbox" id="3BR" class="3BR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3BR" />
                                    <label for="3BR"><i
                                        class="fas fa-chair chair rotate-90 3BR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="3CR" /><input
                                    type="checkbox" id="3CR" class="3CR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3CR" />
                                    <label for="3CR"><i
                                        class="fas fa-chair chair rotate-270 3CR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="3DR" /><input
                                    type="checkbox" id="3DR" class="3DR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3DR" />
                                    <label for="3DR"><i
                                        class="fas fa-chair chair rotate-90 3DR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="3ER" /><input
                                    type="checkbox" id="3ER" class="3ER"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3ER" />
                                    <label for="3ER"><i
                                        class="fas fa-chair chair rotate-270 3ER" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="3FR" /><input
                                    type="checkbox" id="3FR" class="3FR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3FR" />
                                    <label for="3FR"><i
                                        class="fas fa-chair chair rotate-90 3FR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="3GR" /><input
                                    type="checkbox" id="3GR" class="3GR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3GR" />
                                    <label for="3GR"><i
                                        class="fas fa-chair chair rotate-270 3GR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="3HR" /><input
                                    type="checkbox" id="3HR" class="3HR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="3HR" />
                                    <label for="3HR"><i
                                        class="fas fa-chair chair rotate-90 3HR" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--4">
                            <ol class="seats">
                                <li class="seatr"><input type="hidden" class="4AR" /><input
                                    type="checkbox" id="4AR" class="4AR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4AR" />
                                    <label for="4AR"></label></li>
                                <li class="seatr"><input type="hidden" class="4BR" /><input
                                    type="checkbox" id="4BR" class="4BR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4BR" />
                                    <label for="4BR"><i
                                        class="fas fa-chair chair rotate-90 4BR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="4CR" /><input
                                    type="checkbox" id="4CR" class="4CR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4CR" />
                                    <label for="4CR"><i
                                        class="fas fa-chair chair rotate-270 4CR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="4DR" /><input
                                    type="checkbox" id="4DR" class="4DR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4DR" />
                                    <label for="4DR"><i
                                        class="fas fa-chair chair rotate-90 4DR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="4ER" /><input
                                    type="checkbox" id="4ER" class="4ER"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4ER" />
                                    <label for="4ER"><i
                                        class="fas fa-chair chair rotate-270 4ER" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="4FR" /><input
                                    type="checkbox" id="4FR" class="4FR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4FR" />
                                    <label for="4FR"><i
                                        class="fas fa-chair chair rotate-90 4FR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="4GR" /><input
                                    type="checkbox" id="4GR" class="4GR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4GR" />
                                    <label for="4GR"><i
                                        class="fas fa-chair chair rotate-270 4GR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="4HR" /><input
                                    type="checkbox" id="4HR" class="4HR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="4HR" />
                                    <label for="4HR"><i
                                        class="fas fa-chair chair rotate-90 4HR" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--5">
                            <ol class="seats">
                                <li class="seatr"><input type="hidden" class="5AR" /><input
                                    type="checkbox" id="5AR" class="4AR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5AR" />
                                    <label for="5AR"></label></li>
                                <li class="seatr"><input type="hidden" class="5BR" /><input
                                    type="checkbox" id="5BR" class="5BR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5BR" />
                                    <label for="5BR"><i
                                        class="fas fa-chair chair rotate-90 5BR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="5CR" /><input
                                    type="checkbox" id="5CR" class="5CR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5CR" />
                                    <label for="5CR"><i
                                        class="fas fa-chair chair rotate-270 5CR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="5DR" /><input
                                    type="checkbox" id="5DR" class="5DR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5DR" />
                                    <label for="5DR"><i
                                        class="fas fa-chair chair rotate-90 5DR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="5ER" /><input
                                    type="checkbox" id="5ER" class="5ER"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5ER" />
                                    <label for="5ER"><i
                                        class="fas fa-chair chair rotate-270 5ER" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="5FR" /><input
                                    type="checkbox" id="5FR" class="5FR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5FR" />
                                    <label for="5FR"><i
                                        class="fas fa-chair chair rotate-90 5FR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="5GR" /><input
                                    type="checkbox" id="5GR" class="5GR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5GR" />
                                    <label for="5GR"><i
                                        class="fas fa-chair chair rotate-270 5GR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="5HR" /><input
                                    type="checkbox" id="5HR" class="5HR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="5HR" />
                                    <label for="5HR"><i
                                        class="fas fa-chair chair rotate-90 5HR" name="employeeId"></i></label></li>
                            </ol>
                        </li>
                        <li class="row row--6">
                            <ol class="seats">
                                <li class="seatr"><input type="hidden" class="6AR" /><input
                                    type="checkbox" id="6AR" class="AR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6AR" />
                                    <label for="6AR"></label></li>
                                <li class="seatr"><input type="hidden" class="6BR" /><input
                                    type="checkbox" id="6BR" class="6BR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6BR" />
                                    <label for="6BR"><i
                                        class="fas fa-chair chair rotate-90 6BR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="6CR" /><input
                                    type="checkbox" id="6CR" class="6CR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6CR" />
                                    <label for="6CR"><i
                                        class="fas fa-chair chair rotate-270 6CR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="6DR" /><input
                                    type="checkbox" id="6DR" class="6DR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6DR" />
                                    <label for="6DR"><i
                                        class="fas fa-chair chair rotate-90 6DR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="6ER" /><input
                                    type="checkbox" id="6ER" class="6ER"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6ER" />
                                    <label for="6ER"><i
                                        class="fas fa-chair chair rotate-270 6ER" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="6FR" /><input
                                    type="checkbox" id="6FR" class="6FR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6FR" />
                                    <label for="6FR"><i
                                        class="fas fa-chair chair rotate-90 6FR" name="employeeId"></i></label></li>
                                <li class="seatr"><input type="hidden" class="6GR" /><input
                                    type="checkbox" id="6GR" class="6GR"
                                    onclick="assignPopUp(this.id, this.value);" data-id="6GR" /> <label
                                    for="6GR"> <i class="fas fa-chair chair rotate-270 6GR"
                                        name="employeeId"></i></label></li>
                                <li class="seatr"><input type="checkbox" id="6HR"
                                    class="6HR" onclick="assignPopUp(this.id, this.value);"
                                    data-id="6HR" /> <label for="6HR"> <i
                                        class="fas fa-chair chair rotate-90 6HR" name="employeeId"></i></label>
                                </li>
                            </ol>
                        </li>
                    </ol></td>
            </tr>
        </table>
    </div>
    <div id="assignPopUp" class="popUp">
        <div class="assigncontainer  container">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="closeAssignPopUp()">
                <span aria-hidden="true">×</span>
            </button>
            <form action="assign" method="post">
                <div class="form-group row">
                    <div class="col-xs-2">
                    <input type="hidden" class="form-control " id="seatNo" name="seatNo" />
                        <select name="employeeId" class="form-control" required>
                            <option>Select Employee to Assign</option>
                            <c:forEach items="${employeeInfos}" var="employeeInfo">
                                <option value="${employeeInfo.employeeId}">${employeeInfo.employeeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Assign</button>
            </form>
        </div>
    </div>
    <div id="viewAndRemovePopUp" class="viewpopUp">
        <div class="viewcontainer container " style="text-align:center;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="closeViewAndRemovePopUp()">
                <span aria-hidden="true">×</span>
            </button>
            <form method="post">
            <b>Employee Id</b> <p id="employeeid" name="employeeid" > </p>
            <b>Employee Name</b>  <p id="employeename" name="employeename" > </P>
            <b>Seat No</b> <p id="seatno" name="seatno" > </p>
            <button type="submit" class="btn btn-danger" id="deleteSeatNo" name="deleteSeatNo" formaction="removeEmployeeFromSeat">Unassign</button>
            </form>
        </div>
    </div>
    <c:forEach var="seat" items="${seats}">
        <input type="hidden" name="seatId" value="${seat.seatNo}"></input>
        <input type="hidden" name="empId" value="${seat.employee.id}"></input>
        <input type="hidden" name="empName" value="${seat.employee.name}"></input>
    </c:forEach>
    <script>
      function viewAndRemovePopUp() {
          document.getElementById("deleteSeatNo").value = this.id;
          document.getElementById("seatno").value = this.id;
          document.getElementById("employeeid").value = this.value;
          document.getElementById("employeename").value = this.name;
          document.getElementById("seatno").innerHTML = this.id;
          document.getElementById("employeeid").innerHTML = this.value;
          document.getElementById("employeename").innerHTML = this.name;
          document.getElementById("viewAndRemovePopUp").style.display = "block";
      }
      window.onload = loadSeats();
      function loadSeats() {
          var seatId = document.getElementsByName("seatId");
          var employeeId = document.getElementsByName("empId");
          var employeeName = document.getElementsByName("empName");
          for (var i = 0; i < seatId.length; i++) {
              var x = document.getElementsByClassName(seatId[i].value);
              x[0].value = employeeId[i].value;
              x[1].value = employeeId[i].value;
              x[1].name = employeeName[i].value;
              x[1].addEventListener("click", viewAndRemovePopUp.bind(x[1]));
              x[2].style.color = "#32CD32";
          }
      }
      
      function assignPopUp(id, value) {
          if (value == 'on') {
              document.getElementById("seatNo").value = id;
              document.getElementById("assignPopUp").style.display = "block";
          }
      }
      
      function closeAssignPopUp() {
          document.getElementById("assignPopUp").style.display = "none";
      }
      
      function closeViewAndRemovePopUp() {
          document.getElementById("viewAndRemovePopUp").style.display = "none";
      }
    </script>
</body>
</html>