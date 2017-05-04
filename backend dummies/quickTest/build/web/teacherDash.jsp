<%@page import="com.model.quickTest.teacher"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="partials/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/styles/dashboard_teacher_mobile.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/styles/dashboard_teacher_styles.css" />" />
<script type="text/javascript" src="<c:url value="/assets/scripts/dashboard_teacher_scripts.js"/>"></script>

<% teacher obj = (teacher) request.getSession().getAttribute("user_data"); %>

<% if( obj == null){ %>
    
<c:redirect url="/login" />

<%}%>


<div class="ultra-container">
        <div class="main-container">
            <div class="teacher-info">
                    <h3 id="teacher-name"><%= obj.getName() %></h3>
                    <span id="username"><%= obj.getUsername() %></span><br>
                    <span id="email"><%= obj.getEmail() %></span><br><br>
                    <span id="job-desc"><%= obj.getJobDescription() %></span><br>
                    <span id="qualification"><%= obj.getQualification() %></span><br>
                    <span id="specs"><strong>Specialization: </strong><%= obj.getSpecialization() %></span><br>
                    <div class="profile-controls">
                        <button class="form-button" id="update-info-button">Update your info</button>
                    </div>
            </div>
            <div class="update-info-form">
                <form  id="update-info-form">
                    <h4 id="teacher-name"></h4>
                    <div class="row">
                            <span class="update-info-labels">Name: </span><input type="text" name="new_username" value="<%= obj.getName() %>"><br>
                            <span class="update-info-labels">JoB Description: </span><input type="text" name="new_desg" value="<%= obj.getJobDescription() %>"><br>
                            <span class="update-info-labels">Qualification: </span><input type="text" name="new_qual" value="<%= obj.getQualification() %>"><br>
                            <span class="update-info-labels">Specialization: </span><input type="text" name="new_specs" value="<%= obj.getQualification() %>"><br>
                    </div>
                <button class="form-button" id="save-info-button" style="background: #8D6E63">Save</button>
                </form>
            </div>
            <button class="new-test" id="new-test-button">                
                <h5>organize a new test</h5>
                <i id="plus-circle" class="fa fa-3x fa-plus-circle" style="margin: 4px"></i>
            </button>
            <div class="test-list">
                <div class="test-list-item test-saved">
                    <div class="test-title">
                        <h5>Weekly Test - III</h5>
                    </div>
                    <div class="test-info">
                        <p>The marks secured in this test will hold a 15% carriage into the total sessional marks as displayed in the semester marksheet of the respective students. It is hereby stated that the appearance of all the students in this weekly test is mandatory and no special arrangements will be made/entertained on the request of the absentees.</p>
                        <span class="test-info-labels">Scheduled date of examination:</span><span> 21/04/2017</span> <br>
                        <span class="test-info-labels">Department:</span><span id="test3-info-branch"> Computer Science & Engineering</span> <br>
                        <span class="test-info-labels">Semester:</span><span id="test3-info-sem"> III</span> <br>
                        <span class="test-info-labels">Maximum marks:</span><span id="test3-info-max"> 50</span> <br>
                    </div>
                    <div class="controls">
                        <button class="start-test"><i class="fa fa-hourglass-start"></i>Start now</button>
                        <button class="submit-test"><i class="fa fa-paper-plane"></i>Submit</button>
                        <button class="edit-test"><i class="fa fa-pencil-square-o"></i>Edit</button>
                        <button class="delete-test"><i class="fa fa-trash-o"></i>Delete</button>
                    </div>        
                </div>
                <div class="test-list-item test-submitted">
                    <div class="test-title">
                        <h5>Weekly Test - II</h5>
                    </div>
                    <div class="test-info">
                        <p>The marks secured in this test will hold a 15% carriage into the total sessional marks as displayed in the semester marksheet of the respective students. It is hereby stated that the appearance of all the students in this weekly test is mandatory and no special arrangements will be made/entertained on the request of the absentees.</p>
                        <span class="test-info-labels">Scheduled date of examination:</span><span> 15/01/2017</span> <br>
                        <span class="test-info-labels">Department:</span><span id="test2-info-branch"> Industry & Production Engineering</span> <br>
                        <span class="test-info-labels">Semester:</span><span id="test2-info-sem"> III</span> <br>
                        <span class="test-info-labels">Maximum marks:</span><span id="test2-info-max"> 50</span> <br>
                    </div>
                    <div class="controls">
                        <button class="start-test"><i class="fa fa-3x fa-hourglass-start"></i>Start now</button>
                        <button class="delete-test"><i class="fa fa-3x fa-trash-o"></i>Delete</button>
                    </div>        
                </div>
                <div class="test-list-item test-conducted">
                    <div class="test-title">
                        <h5>Weekly Test - I</h5>
                    </div>
                    <div class="test-info">
                        <p>The marks secured in this test will hold a 15% carriage into the total sessional marks as displayed in the semester marksheet of the respective students. It is hereby stated that the appearance of all the students in this weekly test is mandatory and no special arrangements will be made/entertained on the request of the absentees.</p>
                        <span class="test-info-labels">Scheduled date of examination:</span><span> 02/11/2016</span> <br>
                        <span class="test-info-labels">Department:</span><span id="test1-info-branch"> Eletrical Engineering</span> <br>
                        <span class="test-info-labels">Semester:</span><span id="test1-info-sem"> VI</span> <br>
                        <span class="test-info-labels">Maximum marks:</span><span id="test1-info-max"> 50</span> <br>
                    </div>
                    <div class="controls">
                        <button class="start-test"><i class="fa fa-3x fa-hourglass-end"></i>Conducted</button>
                        <button class="delete-test"><i class="fa fa-3x fa-trash-o"></i>Delete</button>
                    </div>        
                </div>
            </div>
            <div class="ongoing-test-info">
                <div class="test-title"><h5 id="ongoing-test-title">Test title</h5></div>
                <span id="ongoing-test-desc">This test has been described by you as this</span><br>
                <strong>Department: </strong><span id="ongoing-test-dept">Computer Science & Engineering</span><br>
                <strong>Semester: </strong><span id="ongoing-test-sem">IV</span><br>
                <strong>Full marks: </strong><span id="ongoing-test-full-marks">100</span><br>
                <strong>Passing marks: </strong><span id="ongoing-test_pass-marks">30</span><br>
                <strong>Duration: </strong><span id="ongoing-test_duration">3 hours</span><br>
                <strong>Time left: </strong><h1 id="ongoing-test-time-left">3:00:00</h1>
                <div class="close-this"><button type="button" class="form-button escape-start-test"><i class="fa fa-window-close"></i>Close</button></div>
            </div>
            <div class="delete-test-conf">
                <h5>Are you sure you want to delete this test?</h5>
                <button class="delete-test-yes"><i class="fa fa-2x fa-check-square"></i>Yes</button>
                <button class="delete-test-no"><i class="fa fa-2x fa-window-close"></i>No</button>
            </div>
        </div>
        <div class="grand-container">
        </div>
        <div class="dummy-grand">
            <div class="new-test-form">
                <div class="close-this"><button type="button" class="form-button escape-test-form-button"><i class="fa fa-window-close"></i>Close</button></div>
            <h4>You're about to organize a new test:</h4>
            <form method="post">
                <input class="form-item" name="newtest[title]" placeholder="Title for the test" required/>
                <textarea class="form-item" name="newtest[description]" placeholder="Add a description"></textarea>
                <hr>
                <div class="row">
                    <div class="six columns">
                        <input class="form-item" name="newtest[date]" placeholder="Scheduled date" />
                    </div>
                    <div class="six columns">
                        <input class="form-item" name="newtest[duration]" placeholder="Duration" />
                    </div>
                </div>
                <div class="row">
                    <div class="six columns">
                        <select class="form-item" name="newtest[department]">
                            <option value="" disabled selected hidden>Department</option>
                            <option value="che">Chemical</option>
                            <option value="civ">Civil</option>
                            <option value="cse">Computer Science</option>
                            <option value="ele">Electrical</option>
                            <option value="ece">Electronics & Telecommunications</option>
                            <option value="inp">Industry & Production</option>
                            <option value="ins">Instrumentation</option>
                            <option value="mec">Mechanical</option>
                        </select>
                    </div>
                    <div class="six columns">
                        <select class="form-item" name="newtest[semester]">
                            <option value="" disabled selected hidden>Semester</option>
                            <option value="first">First</option>
                            <option value="second">Second</option>
                            <option value="third">Third</option>
                            <option value="fourth">Fourth</option>
                            <option value="fifth">Fifth</option>
                            <option value="sixth">Sixth</option>
                            <option value="seventh">Seventh</option>
                            <option value="eights">Eighth</option>
                        </select>
                    </div>
                </div>       
                <div class="row">
                    <div class="six columns">
                        <input class="form-item" name="newtest[full_marks]" placeholder="Full marks" />
                    </div>
                    <div class="six columns">
                        <input class="form-item" name="newtest[pass_marks]" placeholder="Passing marks" />
                    </div>
                </div>
                <hr>
                <div class="question" id="question1">
                    <input class="form-item qs_title" name="newtest[qs_1]" placeholder="Enter question 1" />
                    <div class="row">
                        <div class="six columns">
                            <input class="form-item" name="newtest[qs_1_choice_a]" placeholder="A" />
                        </div>
                        <div class="six columns">
                            <input class="form-item" name="newtest[qs_1_choice_b]" placeholder="B" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="six columns">
                            <input class="form-item" name="newtest[qs_1_choice_c]" placeholder="C" />
                        </div>
                        <div class="six columns">
                            <input class="form-item" name="newtest[qs_1_choice_d]" placeholder="D" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="six columns">
                            <input class="form-item" name="newtest[qs_1_answer]" placeholder="Correct choice" />
                        </div>
                    </div>
                </div>
                <div class="more-qs-container"></div>
                <hr>
                <div class="row">
                <div class="six columns"><button type="button" class="form-button prev-qs-button" id="prev-qs-btn"><i class="fa fa-arrow-circle-left"></i> Previous </button></div>
                <div class="six columns" style="text-align: right"><button type="button" class="form-button next-qs-button" id="next-qs-btn"><i class="fa fa-arrow-circle-right"></i> Next </button><br></div>
                </div>
                <div style="text-align: center"><button type="button" class="form-button more-qs-button" id="add-qs-btn">Add more questions <i class="fa fa-plus-circle"></i></button></div>
                <hr>
                <div class="form-controls">
                    <button type="button" class="form-button save-button">Save</button>
                    <button class="form-button submit-button">Submit</button>
                </div>
            </form>
        </div>
        </div>
        </div>




<%@ include file="partials/footer.jsp" %>