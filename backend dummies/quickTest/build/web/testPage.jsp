<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="partials/header.jsp" %>

<div class="row">
            <div class="grand-question-class">
                <div class="eight columns test random-class">
                    <div id="10" class="00"></div>
                    <div id="time">
                            <span id="hour" class="num">00</span>
                            <span id="colon">:</span>
                            <span id="minutes" class="num">00</span>
                            <span id="colon">:</span>
                            <span id="seconds" class="num">00</span>

                        </div>
        
                    <div id="slider">
                    <a href="#" class="control_next"><i class="fa fa-chevron-right right" style="font-size:60px;color:black;"></i></a>
                    <a href="#" class="control_prev"><i class="fa fa-chevron-left left" style="font-size:60px;color:black;"></i></a></div>
            <form>
                <div class="questions">
                    <div class="question" style="display:none;">    
                        <span class="bm bm1" ><i class="fa fa-bookmark " id="bm"></i></span><br>
                        <div class="question-content">Q1. </div>
                        <input type="radio" name="option1" value="a"> a) <br>
                        <input type="radio" name="option1" value="b" > b) <br>
                        <input type="radio" name="option1" value="c"> c) <br>
                        <input type="radio" name="option1" value="d"> d) <br>
                        <input type="radio" name="option1" value="e" style="display:none;" checked>
                    </div>
                    </form>
                    <div class="question" style="display:none;">
                       
                        
                        <span class="bm bm1" ><i class="fa fa-bookmark " id="bm"></i></span><br>
                        <div class="question-content">Q2. </div>
                        <input type="radio" name="option2" value="a"> a) <br>
                        <input type="radio" name="option2" value="b" > b) <br>
                        <input type="radio" name="option2" value="c"> c) <br>
                        <input type="radio" name="option2" value="d"> d) <br>
                        <input type="radio" name="option2" value="e" style="display:none;" checked>
                    </div>
                    
                    <div class="question" style="display:none;">
                       
                        
                        <span class="bm bm1" ><i class="fa fa-bookmark " id="bm"></i></span><br>
                        <div class="question-content">Q3. </div>
                        <input type="radio" name="option3" value="a"> a) <br>
                        <input type="radio" name="option3" value="b" > b) <br>
                        <input type="radio" name="option3" value="c"> c) <br>
                        <input type="radio" name="option3" value="d"> d) <br>
                        <input type="radio" name="option3" value="e" style="display:none;" checked>
                    </div>
                </div>
            
                <div class="ques-iterators">
                    
                    <div class="goto-ques" style="text-align: center">
                        <input type="text" class="search-ques" placeholder="Go to question number">
                        <button id="search-ques-button" type="button"><i class="fa fa-arrow-circle-right"></i></button>
                    </div>
                    
                </div>
                </div> 
                </div>
                <div class="four columns test" >
                    
                    <div class="another-random-class">Question Schema <br><br>
                    
                        <div class=" row answer-panel">
                            
                            <div class="ans"><div class="two columns color">1</div></div>
                            <div class="ans"><div class="two columns color">2</div></div>
                            <div class="ans"><div class="two columns color">3</div></div>
                            
                            
                        </div>
                        <br>
                       
                    </div>
                    <div class="side" id="color_panel">Color Panel<br><br>
                    
                        
                        <div id="white" ></div> Not Answered <br><br>
                        <div id="orange" ></div>Answered <br><br>
                        <div id="blue" ></div>Bookmarked <br><br>
                        <div id="limegreen" ></div>Not Bookmarked <br><br>

                    
                    </div>
    
                    <div>
                        <button id="submit" class="on-right submit">Submit</button>
                        


                    </div>
            </div>
            
            </div>


<%@include file="partials/footer.jsp" %>