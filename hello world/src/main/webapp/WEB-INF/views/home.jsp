<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<div class="site-header autocomplete">
  <div class="input-wrapper">
    <input type="text" placeholder="Search" class="search-field">
      <span class="close">Cancel</span>

    <div class="focus-background"></div>
  </div>
   <div class="dialog">   
  </div>
  
</div>

  
<div id='calendar'></div>

<div id="calendar-popup">
 
  <form id="event-form">
     <div class='calander_popip_title'><i class="fa fa-calendar" aria-hidden="true"></i>
Add Events by sai world</div>
    <ul>
      <li>
        <label for="event-start"><i class="fa fa-bell-o" aria-hidden="true"></i>

From</label>
        <input id="event-start"  class='form-control' type="datetime-local" name="start"/>
      </li>
      <li>
        <label for="event-end"><i class="fa fa-bell-slash" aria-hidden="true"></i>

To</label>
        <input id="event-end"  class='form-control' type="datetime-local" name="end"/>
      </li>
      <li>
        <label for="event-title"><i class="fa fa-calendar-minus-o" aria-hidden="true"></i>
Event Name</label>
        <input id="event-title"  class='form-control' type="text" name="title"/>
      </li>
      <li>
        <label for="event-location"><i class="fa fa-map-marker" aria-hidden="true"></i>
Location</label>
        <input id="event-location"   class='form-control' type="text" name="location"/>
      </li>
      <li>
        <label for="event-details"><i class="fa fa-info-circle" aria-hidden="true"></i>
Description</label>
        <textarea id="event-details"  class='form-control' name="details"></textarea>
      </li>
      <div class="button">
        <input type="submit"  class='form-control submit_btn'/>
      </div>
    </ul>
  </form>
  
  <div id="event">
    <header></header>
    <ul>
    <li class="start-time"> 
      <p>
  Start at</p>
        <time></time>
      </li>
       <li class="end-time">
      <p>
 End</p>
        <time></time>
      </li>
      <li>
        <p>
          <i class="fa fa-map-marker" aria-hidden="true"></i>Location</p>
<p class="location"></p>
      </li>
      <li>
        <p><i class="fa fa-info" aria-hidden="true"></i>
Details:</p>
        <p class="details"></p>
      </li>
    </ul>
   
  </div>

  <div class="prong">
    <div class="bottom-prong-dk"></div>
    <div class="bottom-prong-lt"></div>
  </div>
</div>


<div class='modle' id='simplemodal'>
  <div class='modle-continer'>
      <form id="edit-form">

    <div class='modal-header'>
        <span class='close-btn' id='close-btnid'>&times</span>
      <h2>Edit Event</h2>
    </div>
   <div class='modal-body'>
  
     <lable for='eventname'>Event Name</lable>
     <input type='text' name='eventname' id='eventname' class='form-control'>
     <lable for='location'>Location</lable>
     <input type='text' name='location' id='location' class='form-control'>
     
     <label for="event-start">From</label><input id="eventstart" type="datetime-local" name="start" class='form-control'/>
     
     <label for="event-end">To</label>
        <input id="eventend" type="datetime-local" name="end" class='form-control'/>
      <label for="event-details">Details</label>
     <textarea id="eventdetails" type='text' name="details"  class='form-control'></textarea>
    
    </div>
    <div class='modal-footer'>
      <button type='submit' class='btn btn-info'>save</button>
      <button class='btn btn-dafault'>cancel</button>
      
    </div>
    </form>
  </div>
  
</div>

<div id='search_result'>result</div>
<button class='btn btn-primary'>Add Events</button>

<style>

.btn{
  display:inline-block !important;
}
.btn-primary{
 position: absolute;
    right: 181px;
    top: 35px;
  opacity:0;
}

.fc-left h2{
  color:#ed8392
}
.fa{
  display:inline-block !important;
  margin-right:.5em;
}
.fc-content{
      float: left;
    margin-right: 51px;
}
.I_delete
{
    margin:37px;
}
.I_edit,.I_delete
{
  cursor:pointer;
}
.site-header {
    margin: 1.4em 28em;
  position: absolute;
    top: -4%;
    width: 41%;
}

.input-wrapper {
  background-color: #333;
  -webkit-box-shadow: 0 10px 30px rgba(0, 0, 0, 0.6);
          box-shadow: 0 10px 30px rgba(0, 0, 0, 0.6);
  height: 48px;
  margin: 0 auto;
  overflow: hidden;
  position: relative;
  width: 50%;
}

::-webkit-input-placeholder {
  color: #fff;
}

.search-field {
  background-color: transparent;
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjMycHgiIGhlaWdodD0iMzJweCIgdmlld0JveD0iMCAwIDYxMi4wMSA2MTIuMDEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMi4wMSA2MTIuMDE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8ZyBpZD0iX3gzNF9fNF8iPgoJCTxnPgoJCQk8cGF0aCBkPSJNNjA2LjIwOSw1NzguNzE0TDQ0OC4xOTgsNDIzLjIyOEM0ODkuNTc2LDM3OC4yNzIsNTE1LDMxOC44MTcsNTE1LDI1My4zOTNDNTE0Ljk4LDExMy40MzksMzk5LjcwNCwwLDI1Ny40OTMsMCAgICAgQzExNS4yODIsMCwwLjAwNiwxMTMuNDM5LDAuMDA2LDI1My4zOTNzMTE1LjI3NiwyNTMuMzkzLDI1Ny40ODcsMjUzLjM5M2M2MS40NDUsMCwxMTcuODAxLTIxLjI1MywxNjIuMDY4LTU2LjU4NiAgICAgbDE1OC42MjQsMTU2LjA5OWM3LjcyOSw3LjYxNCwyMC4yNzcsNy42MTQsMjguMDA2LDBDNjEzLjkzOCw1OTguNjg2LDYxMy45MzgsNTg2LjMyOCw2MDYuMjA5LDU3OC43MTR6IE0yNTcuNDkzLDQ2Ny44ICAgICBjLTEyMC4zMjYsMC0yMTcuODY5LTk1Ljk5My0yMTcuODY5LTIxNC40MDdTMTM3LjE2NywzOC45ODYsMjU3LjQ5MywzOC45ODZjMTIwLjMyNywwLDIxNy44NjksOTUuOTkzLDIxNy44NjksMjE0LjQwNyAgICAgUzM3Ny44Miw0NjcuOCwyNTcuNDkzLDQ2Ny44eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
  background-position: 20px 14px;
  background-repeat: no-repeat;
  background-size: 20px 20px;
  border: 0;
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
  color: #fff;
  height: 100%;
  letter-spacing: 2px;
  outline: none;
  padding: 0 10px 0 65px;
  position: absolute;
  left: 0;
  top: 0;
  z-index: 10;
  width: 100%;
}
#calendar{
    margin: -54px 5px;
    position: absolute;

}
.search-field:placeholder-shown {
  color: #fff;
}

.search-field:focus {
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjMycHgiIGhlaWdodD0iMzJweCIgdmlld0JveD0iMCAwIDYxMi4wMSA2MTIuMDEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMi4wMSA2MTIuMDE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8ZyBpZD0iX3gzNF9fNF8iPgoJCTxnPgoJCQk8cGF0aCBkPSJNNjA2LjIwOSw1NzguNzE0TDQ0OC4xOTgsNDIzLjIyOEM0ODkuNTc2LDM3OC4yNzIsNTE1LDMxOC44MTcsNTE1LDI1My4zOTNDNTE0Ljk4LDExMy40MzksMzk5LjcwNCwwLDI1Ny40OTMsMCAgICAgQzExNS4yODIsMCwwLjAwNiwxMTMuNDM5LDAuMDA2LDI1My4zOTNzMTE1LjI3NiwyNTMuMzkzLDI1Ny40ODcsMjUzLjM5M2M2MS40NDUsMCwxMTcuODAxLTIxLjI1MywxNjIuMDY4LTU2LjU4NiAgICAgbDE1OC42MjQsMTU2LjA5OWM3LjcyOSw3LjYxNCwyMC4yNzcsNy42MTQsMjguMDA2LDBDNjEzLjkzOCw1OTguNjg2LDYxMy45MzgsNTg2LjMyOCw2MDYuMjA5LDU3OC43MTR6IE0yNTcuNDkzLDQ2Ny44ICAgICBjLTEyMC4zMjYsMC0yMTcuODY5LTk1Ljk5My0yMTcuODY5LTIxNC40MDdTMTM3LjE2NywzOC45ODYsMjU3LjQ5MywzOC45ODZjMTIwLjMyNywwLDIxNy44NjksOTUuOTkzLDIxNy44NjksMjE0LjQwNyAgICAgUzM3Ny44Miw0NjcuOCwyNTcuNDkzLDQ2Ny44eiIgZmlsbD0iIzAwMDAwMCIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K);
  color: #000;
}

.focus-background {
  background-color: #fff;
  display: block;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0;
  z-index: 8;
  width: 100%;
  -webkit-transition: -webkit-transform 0.3s;
  transition: -webkit-transform 0.3s;
  transition: transform 0.3s;
  transition: transform 0.3s, -webkit-transform 0.3s;
  -webkit-transform: scaleX(0);
          transform: scaleX(0);
  -webkit-transform-origin: right center;
          transform-origin: right center;
}

.search-field:focus ~ .focus-background {
  -webkit-transform: scaleX(1);
          transform: scaleX(1);
  -webkit-transform-origin: left center;
          transform-origin: left center;
}


#calendar-popup {
  display:none;
  position: absolute;
  margin-bottom: 0;
  padding: 0 1.33em;
  z-index: 1000;

  border: solid rgba(200, 200, 200, 0.75) 2px;
  border-radius: 10px;
  color: black;
  background: #FFF;
}
.calander_popip_title{
 border-bottom: 1px solid #484141;
    text-align: center;
    margin: 1em 1em;
    padding: .5em;
    font-size: 20px;
    background: #eee;
}
   
#calendar-popup * {
  display: block;
}
.fc-day-grid-event .fc-content{
  margin-bottom:10px;
}
#calendar-popup header {
    text-align: center;
    font-size: 1.5em;
    line-height: 1.9em;
    margin-bottom: 0.5em;
   background: #a1a1ad;
}

/* #calendar-popup button.close {
  margin: 10px 10px 0 0;
} */

#calendar-popup label,
#calendar-popup input,
#calendar-popup textarea {
  font-size: 0.9em;
  font-weight: normal;
  margin-bottom: 0;
  padding: 0;
  width: 100%;
}

#calendar-popup input {
  margin-bottom: 0.5em;
  padding: 0;

}
#calendar-popup .submit_btn {
      width:86%;
      background-color:#eee;
}


#calendar-popup time {
  font-style: italic;
  line-height: 1em;
  margin-top: 0;
}

#calendar-popup form,
#calendar-popup div#event {
  margin: 0.75em 0 0.75em 0;
/*   padding-left: 20px; */
}

#calendar-popup li {
  margin-bottom: 0.33em;
    margin-right: 42px;
}
#calendar-popup li:nth-child(odd) {
  background:#eee;
}
#calendar-popup li:nth-child(even) {
background: #5555;
}
#calendar-popup li.location,
#calendar-popup li.details {
  font-size: 0.85em;
  color: #333;
}

#calendar-popup div.prong {
  position: relative;
  float: right;

  bottom: 0;
  right: 15px;

  height: 0;
  width: 20px;

}

#calendar-popup div.prong div.bottom-prong-dk {
  position: relative;
  top: 0;
  left: 0;

  border: 10px solid;
  border-color: rgba(200, 200, 200, 0.75) transparent;
  border-bottom: 0;
}

#calendar-popup div.prong div.bottom-prong-lt {
  position: relative;
  top: -10px;
  left: 2px;
  width: 0;

  border: 8px solid;
  border-color: white transparent;
  border-bottom: 0;
}

#calendar-popup div.prong div.top-prong-dk {
  position: relative;
  top: 2px;
  left: 0;

  border: 10px solid;
  border-color: rgba(200, 200, 200, 0.75) transparent;
  border-top: 0;
}

#calendar-popup div.prong div.top-prong-lt {
  position: relative;
  top: -6px;
  left: 2px;
  width: 0;

  border: 8px solid;
  border-color: white transparent;
  border-top: 0;
}






.modle{
  display:none;
  position:fixed;
  z-index:1;
  left:0;
  top:0;
  height:100%;
  width:100%;
  background-color:rgba(0,0,0,.3);
 overflow:auto;
}
.modle-continer{
    background-color:#f4f4f4;
  margin:5% auto;
  width:70%;
  box-shadow:0 5px 8px rgba(0,0,0,.2),0 7px 20px rgba(0,0,0,.2);
animation-name:modalopen;
  animation-duration:1s;
}
.modal-header{
  background:#eee;
  padding:15px;
  color:#000;
}
.modal-header h2{
    position: absolute;
    right: 46%;
}

.close-btn{
  color:#000;
  float:right;
  font-size:30px;
}
.close-btn:hover,.close-btn:focus{
  color:#000;
  text-decoration:none;
  cursor:pointer;
}
.modal-body{
  padding:10px 20px;
}
.modal-footer{
  background:#eee;
  padding:10px;
  color:#000;
  text-align:center;
}
.modal-footer h3{
  margin:0;
  
}
@keyframes modalopen{
  from{opacity:0}
  to{opacity:1}
  
}
#search_result{
      position: absolute;
    top: 62px;
    left: 594px;
    border: 1px solid #111;
    padding: 1em 7.7em;
 display:none;
}


.autocomplete {
  background: #fff;
  position: relative;
  
 
}
.autocomplete .close {
  position: absolute;
  font-size: 13px;
  z-index: 10;
  top: 17px;
  left: calc(100% - 50px);
  color: #000;
  cursor: pointer;
  display: none;
}
.autocomplete .close.visible {
  display: block;
}
.dialog {
    width: 51%;
    display: none;
    min-height: 40px;
    max-height: 329px;
    overflow: scroll;
    border-top: 1px solid #f4f4f4;
    z-index: 12 !important;
    margin: 6px 145px;
  position:absolute;
}
.dialog.open {
   display: block;
    background: #FFF;
    z-index: 11 !important;
    color: black;
}
.dialog div {
     padding: 20px 10px;
    font-size: 15px;
    cursor: pointer;
    transition: all 0.2s;
    position: absolute;
    left: 93px;
      width: 100%;
    height: 100%;
}




.vertical-date {
  list-style: none;
  padding: 1em;
  text-align: left;
      border-bottom: 2px solid #000;
}

.list-daynumber {
  line-height: .5em;
  font-size: 46px;
  font-weight: 800;
  opacity: 0.9;
}

.list-monthname {
  font-size: 32px;
  opacity: 0.6;
  border-bottom: 5px solid #FF4D55;
 width: 59px;
}

.duration {
      display: block;
    color: #908383;
    font-weight: 600;
    margin-top: 0.8em;
}


 .s_title {
 color: #ed8392;
    font-size: 1.3em;
    margin: -13px 34px;
    position: absolute;
    font-weight: 900;
}


.s_des{
font-size: 16px;
  font-style: italic;
}
</style>

<script type="text/javascript">
        var events = []
events=parselocalstorage('events')
var renderPopup = function (jsEvent, start, end, calEvent) {
  var $popup = $('#calendar-popup');
  var $eventForm = $('#event-form');
  $event = $('#event');
  var $selectedElmt = $(jsEvent.target);

  var relativeStartDay = start.calendar(null, { lastDay: '[yesterday]', sameDay: '[today]'});
  var endNextDay = '';

  if(relativeStartDay === 'yesterday') {
    endNextDay = '[Today at] ';
  }
  else if(relativeStartDay === 'today') {
    endNextDay = '[Tomorrow at] ';
  }
  else {
    endNextDay = 'dddd ';
  }

  $('.start-time').html(
    ' <p><i class="fa fa-play" aria-hidden="true"></i>' + (start.isSameOrBefore(moment()) ? 'Started' : 'Starts') + '</p>'
      + '<time datetime="' + start.format() + '">'
      + start.calendar(null, {
        lastWeek: 'L LT',
        nextWeek: 'dddd LT',
        sameElse: 'L LT'
      })
      + '</time>'
  );
  $('.end-time').html(
    '<p><i class="fa fa-stop" aria-hidden="true"></i> '
      + (end.isSameOrBefore(moment()) ? 'Ended' : 'Ends')
      + (end.isSame(start, 'day') ? ' at' : '')
      + '</p>'
      + '<time datetime="' + end.format() + '">'
      + end.calendar(start, {
        sameDay: 'LT',
        nextDay: endNextDay + 'LT',
        nextWeek: 'dddd LT',
        sameElse: 'L LT'
      })
      + '</time>'
  );

  if(calEvent) {
   $eventForm.hide();

    $event.children('header').html(`<i class="fa fa-calendar-o"></i>`+calEvent.title);
    $event.find('.location').text(calEvent.location ? calEvent.location : '(No location information.)');
    $event.find('.details').text(calEvent.details ? calEvent.details : '');

    $event.show();
  }
  else {
    $event.hide();
    $('#event-start').val(start.format('YYYY-MM-DD[T]HH:mm'));
    $('#event-end').val(end.format('YYYY-MM-DD[T]HH:mm'));
    $eventForm.show();
  }

  var leftPosition = 0;
  var $prong = $('.prong');
  var prongPos = 0;

  if($selectedElmt.hasClass('fc-highlight')) {
    leftPosition = $selectedElmt.offset().left - $popup.width() + ($selectedElmt.width() / 2);
    if(leftPosition <= 0) {
      leftPosition = 5;
      prongPos = $popup.width() - $selectedElmt.offset().left - 30
    }
    else {
      prongPos = 15;
    }

    $popup.css('left', leftPosition);
    $prong.css({
      'left': '',
      'right': prongPos,
      'float': 'right'
    });
  }
  else {
    leftPosition = jsEvent.originalEvent.pageX - $popup.width()/2;
    if(leftPosition <= 0) {
      leftPosition = 5;
    }
    prongPos = jsEvent.originalEvent.pageX - leftPosition - ($prong.width() * 1.7);

    $popup.css('left', leftPosition);
    $prong.css({
      'left': prongPos,
      'float': 'none',
      'right': ''
    });
  }

  var topPosition = (calEvent ? jsEvent.originalEvent.pageY : $selectedElmt.offset().top) - $popup.height() - 15;

  if((topPosition <= window.pageYOffset)
    && !((topPosition + $popup.height()) > window.innerHeight)) {
      $popup.css('top', jsEvent.originalEvent.pageY + 15);
      $prong.css('top', -($popup.height() + 12))
        .children('div:first-child').removeClass('bottom-prong-dk').addClass('top-prong-dk')
        .next().removeClass('bottom-prong-lt').addClass('top-prong-lt');
  }
  else {
    $popup.css('top', topPosition);
    $prong.css({'top': 0, 'bottom': 0})
      .children('div:first-child').removeClass('top-prong-dk').addClass('bottom-prong-dk')
      .next().removeClass('top-prong-lt').addClass('bottom-prong-lt');
  }

  $popup.show();
  $popup.find('input[type="text"]:first').focus();
}

$(document).ready(function() {
  $('#calendar').fullCalendar({
    header: {
    left: 'title',
      right: 'prev,next today'
    },
    timezone: 'local',
    defaultView: 'month',
    allDayDefault: false,
    allDaySlot: false,
    slotEventOverlap: true,
    slotDuration: "01:00:00",
    slotLabelInterval: "01:00:00",
    snapDuration: "00:15:00",
    contentHeight: 700,
    scrollTime :  "8:00:00",
    axisFormat: 'h:mm a',
    timeFormat: 'h:mm A()',
    selectable: true,
    events: function(start, end, timezone, callback) {
      let arr = parselocalstorage('events')  
      callback(arr);
    },
    eventColor: '#dec5c9',
    eventClick: function (calEvent, jsEvent) {
      
      renderPopup(jsEvent, calEvent.start, calEvent.end, calEvent);

      
    },
    eventRender: function(event, element) {
            element.append( `<span class='I_delete'><i class="fa fa-remove fa-2x"></i></span>` );
            element.append( `<span class='I_edit'><i class="fa fa-edit fa-2x"></i></span>` );
            element.find(".I_delete").click(function() {
            $('#calendar-popup').hide();
            if(confirm('are you sure want to delete event?')) {
             $('#calendar').fullCalendar('removeEvents',event._id);
            var index=events.map(function(x){ return x.id; }).indexOf(event.id);
            events.splice(index,1);
            localStorage.setItem('events', JSON.stringify(events));
           
            events=parselocalstorage('events')   

       }
            });
        element.find(".I_edit").click(function() {
            $('#calendar-popup').hide();

          $('#eventname').val(event.title)
          $('#location').val(event.location)
          $('#eventdetails').val(event.details)
          $('input#eventstart').val(event.start._i)
           $('input#eventend').val(event.end._i)
          $('#simplemodal').show();
         
          
          //update events
          var that=event;
           $('#edit-form').on('submit', function(e) {
           e.preventDefault();
           $form = $(e.currentTarget);

         $title = $form.find('input#eventname');
         $location = $form.find('input#location');
         $details = $form.find('textarea#eventdetails');
             $start= $form.find('input#eventstart');
             $end= $form.find('input#eventend');
            //update value
             that.title=$title.val();
              that.location=$location.val();
             that.details=$details.val();
                that.start=$start.val();               
               that.end=$end.val();
            
            $('#calendar').fullCalendar('updateEvent', that);
             console.log('after update',events)
              $('#simplemodal').hide();
              $('#calendar-popup').hide();
           });
           $('#calendar').fullCalendar('updateEvent', event);
         
         // 
           //     localStorage.setItem('events', JSON.stringify(events));
            });
      
      $('#close-btnid').click(function(){
                  $('#simplemodal').hide();
      })
    
      var modal=document.getElementById('simplemodal')

     window.addEventListener('click',clickOutside)
      function clickOutside(e){
      if(e.target==modal){
        modal.style.display='none';

        }
        }
        }
    ,
    select: function(start, end, jsEvent) {
        $('.btn-primary').css('opacity',1)
          $('.btn-primary').click(function(){
        renderPopup(jsEvent, start.local(), end.local());
      }) 
      renderPopup(jsEvent, start.local(), end.local());
    
    }
  });

  $('#event-form').on('submit', function(e) {
    e.preventDefault();

    $form = $(e.currentTarget);

    $title = $form.find('input#event-title');
    $location = $form.find('input#event-location');
    $details = $form.find('textarea#event-details');
 $ID = '_' + Math.random().toString(36).substr(2, 9)
    events.push({
      id:$ID,
      title: $title.val(),
      start: $form.find('input#event-start').val(),
      end: $form.find('input#event-end').val(),
      location: $location.val(),
      details: $details.val()
    });

    $title.val('');
    $location.val('');
    $details.val('');

    $form.parent().blur().hide();
   localStorage.setItem('events', JSON.stringify(events));
    $('#calendar').fullCalendar('refetchEvents');

  });

  

  //Set hide action for ESC key event
  $('#calendar-popup').on('keydown', function(e) {
    $this = $(this);
    console.log($this);
    if($this.is(':visible') && e.which === 27) {
      $this.blur();
    }
  })
  //Set hide action for lost focus event
  .on('focusout', function(e) {
    $this = $(this);
    if($this.is(':visible') && !$(e.relatedTarget).is('#calendar-popup, #calendar-popup *')) {
      $this.hide();
    }
  });
});

/*** TESTING/DEMO ***/
var date = new Date();
var today = date.getDate();
var month = date.getMonth() + 1;
var year = date.getFullYear();
today = today < 10 ? '0' + today.toString() : today;
var tomorrow = today + 1 < 10 ? '0' + (today + 1).toString() : today + 1; //today not last day
var yesterday = today - 1 < 10 ? '0' + (today - 1).toString() : today - 1; //today not first day
      localStorage.clear()

var str=  localStorage.getItem('events');
      var obj=JSON.parse(str)||[]
      let arr = Object.keys(obj).map((k) => obj[k])
      console.log('what is in aarrr1',events)
if(events.length===0){
  events.push(
  {id:1,title: 'event1', start: year + '-' + month + '-' + today + 'T07:00', end: year + '-' + month + '-' + today + 'T10:00', location: 'The Moon', details: 'There will be cheese'},
  {id:2,title: 'event2', start: year + '-' + month + '-' + tomorrow + 'T03:00', end: year + '-' + month + '-' + tomorrow + 'T08:00', location: 'The Moon', details: 'There will be cheese'},
  {id:3,title: 'event3', start: year + '-' + month + '-' + yesterday + 'T20:00', end: year + '-' + month + '-' + today + 'T05:00', location: 'The Moon', details: 'There will be cheese'}
);
}
/*events.push(
  {title: 'event1', start: year + '-' + month + '-' + today + 'T07:00', end: year + '-' + month + '-' + today + 'T10:00', location: 'The Moon', details: 'There will be cheese'},
  {title: 'event2', start: year + '-' + month + '-' + tomorrow + 'T03:00', end: year + '-' + month + '-' + tomorrow + 'T08:00', location: 'The Moon', details: 'There will be cheese'},
  {title: 'event3', start: year + '-' + month + '-' + yesterday + 'T20:00', end: year + '-' + month + '-' + today + 'T05:00', location: 'The Moon', details: 'There will be cheese'}
);*/

      localStorage.setItem('events', JSON.stringify(events));

/***************/





//handle search

    var alreadyFilled = false;
    function initDialog() {
        clearDialog();
        for (var i = 0; i < events.length; i++) {
    var mS1 = {"01":'Jan', "02":'Feb', "03":'Mar', "04":'Apr', "05":'May', "06":'June', "07":'July', "08":'Aug', "09":'Sept', "10":'Oct', "11":'Nov', "12":'Dec'};

            $('.dialog').append('<div><span class="s_title">' + events[i].title +`</span><br><span class='s_des'>"` +events[i].details+
                                  
                                 `</span> <span class='duration'>`+events[i].start+`</span>`
                                    
                                + `</div>
   <ul class="vertical-date">
            <li class="list-daynumber">`+events[i].start.slice(8,10)+`</li>
            <li class="list-monthname">`+mS1[events[i].start.slice(5,7)]+`</li>
          </ul>

`);

        }
    }
    function clearDialog() {
        $('.dialog').empty();
    }
    $('.autocomplete input').click(function() {
        if (!alreadyFilled) {
            $('.dialog').addClass('open');
        }

    });
    $('body').on('click', '.dialog > div', function() {
        $('.autocomplete input').val($(this).find('.s_title').text()).focus();
        $('.autocomplete .close').addClass('visible');
        alreadyFilled = true;
    });
    $('.autocomplete .close').click(function() {
        alreadyFilled = false;
        $('.dialog').addClass('open');
        $('.autocomplete input').val('').focus();
        $(this).removeClass('visible');
    });

    function match(str) {
        str = str.toLowerCase();
        clearDialog();
        for (var i = 0; i < events.length; i++) {
            if ((events[i].title).toLowerCase().startsWith(str)) {
              
    var mS2 = {"01":'Jan', "02":'Feb', "03":'Mar', "04":'Apr', "05":'May', "06":'June', "07":'July', "08":'Aug', "09":'Sept', "10":'Oct', "11":'Nov', "12":'Dec'};

                $('.dialog').append('<div><span class="s_title">' + events[i].title+`</span><br><span class='s_des'>` +events[i].details
                                    +
                                 ` </span><span class='duration'>`+events[i].start+`</span>`
                                    +
                                    `</div>
   <ul class="vertical-date">
            <li class="list-daynumber">`+events[i].start.slice(8,10)+`</li>
            <li class="list-monthname">`+mS2[events[i].start.slice(5,7)]+`</li>
          </ul>
`);
        
            }
        }
    }
    $('.autocomplete input').on('input', function() {
        $('.dialog').addClass('open');
        alreadyFilled = false;
        match($(this).val());
    });
    $('body').click(function(e) {
        if (!$(e.target).is("input, .close")) {
            $('.dialog').removeClass('open');
        }
    });
    initDialog();


    function parselocalstorage(name){
      var str= localStorage.getItem(name);
      var obj=JSON.parse(str)||[]
      let arr = Object.keys(obj).map((k) => obj[k])||[]
      return arr
    }
</script>











  <!-- inspired by http://colorhunt.co/c/8184 and 
    https://dribbble.com/shots/2407357-Calendar%60 -->

    <div class="container">
      <div class="calendar">
        <div class="front">
          <div class="current-date">
            <h1>Friday 15th</h1>
            <h1>January 2016</h1> 
          </div>

          <div class="current-month">
            <ul class="week-days">
              <li>MON</li>
              <li>TUE</li>
              <li>WED</li>
              <li>THU</li>
              <li>FRI</li>
              <li>SAT</li>
              <li>SUN</li>
            </ul>

            <div class="weeks">
              <div class="first">
                <span class="last-month">28</span>
                <span class="last-month">29</span>
                <span class="last-month">30</span>
                <span class="last-month">31</span>
                <span>01</span>
                <span>02</span>
                <span>03</span>
              </div>

              <div class="second">
                <span>04</span>
                <span>05</span>
                <span class="event">06</span>
                <span>07</span>
                <span>08</span>
                <span>09</span>
                <span>10</span>
              </div>

              <div class="third">
                <span>11</span>
                <span>12</span>
                <span>13</span>
                <span>14</span>
                <span class="active">15</span>
                <span>16</span>
                <span>17</span>
              </div>

              <div class="fourth">
                <span>18</span>
                <span>19</span>
                <span>20</span>
                <span>21</span>
                <span>22</span>
                <span>23</span>
                <span>24</span>
              </div>

              <div class="fifth">
                <span>25</span>
                <span>26</span>
                <span>27</span>
                <span>28</span>
                <span>29</span>
                <span>30</span>
                <span>31</span>
              </div>
            </div>
          </div>
        </div>

        <div class="back">
          <input placeholder="What's the event?">
          <div class="info">
            <div class="date">
              <p class="info-date">
              Date: <span>Jan 15th, 2016</span>
              </p>
              <p class="info-time">
                Time: <span>6:35 PM</span>
              </p>
            </div>
            <div class="address">
              <p>
                Address: <span>129 W 81st St, New York, NY</span>
              </p>
            </div>
            <div class="observations">
              <p>
                Observations: <span>Be there 15 minutes earlier</span>
              </p>
            </div>
          </div>

          <div class="actions">
            <button class="save">
              Save <i class="ion-checkmark"></i>
            </button>
            <button class="dismiss">
              Dismiss <i class="ion-android-close"></i>
            </button>
          </div>
        </div>

      </div>
    </div>




    <style type="text/css">
      * {
  box-sizing: border-box;
  font-family: 'Roboto', sans-serif;
  list-style: none;
  margin: 0;
  outline: none;
  padding: 0;
}

a {
  text-decoration: none;
}

body, html {
  height: 100%;
}

body {
  background: #dfebed;
  font-family: 'Roboto', sans-serif;
}

.container {
  align-items: center;
  display: flex;
  height: 100%;
  justify-content: center;
  margin: 0 auto;
  max-width: 600px;
  width: 100%;
}

.calendar {
  background: #2b4450;
  border-radius: 4px;
  box-shadow: 0 5px 20px rgba(0, 0, 0, .3);
  height: 501px;
   perspective: 1000;
  transition: .9s;
  transform-style: preserve-3d; 
  width: 100%;
}

/* Front - Calendar */
/* .front {
  transform: rotateY(0deg);
} */

.current-date {
  border-bottom: 1px solid rgba(73, 114, 133, .6);
  display: flex;
  justify-content: space-between;
  padding: 30px 40px;
}

.current-date h1 {
  color: #dfebed;
  font-size: 1.4em;
  font-weight: 300;
}

.week-days {
  color: #dfebed;
  display: flex;
  justify-content: space-between;
  font-weight: 600;
  padding: 30px 40px;
}

.days {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.weeks {
  color: #fff;
  display: flex;
  flex-direction: column;
  padding: 0 40px;
}

.weeks div {
  display: flex;
  font-size: 1.2em;
  font-weight: 300;
  justify-content: space-between;
  margin-bottom: 20px;
  width: 100%;
}

.last-month {
  opacity: .3;
}

.weeks span {
  padding: 10px;
}

.weeks span.active {
  background: #f78536;
  border-radius: 50%;
}

.weeks span:not(.last-month):hover {
  cursor: pointer;
  font-weight: 600;
}

.event {
  position: relative;
}

.event:after {
  content: '•';
  color: #f78536;
  font-size: 1.4em;
  position: absolute;
  right: -4px;
  top: -4px;
}

/* Back - Event form */

.back {
  height: 100%;
  transform: rotateY(180deg);
}

.back input {
  background: none;
  border: none;
  border-bottom: 1px solid rgba(73, 114, 133, .6);
  color: #dfebed;
  font-size: 1.4em;
  font-weight: 300;
  padding: 30px 40px;
  width: 100%;
}

.info {
  color: #dfebed;
  display: flex;
  flex-direction: column;
  font-weight: 600;
  font-size: 1.2em;
  padding: 30px 40px;
}

.info div:not(.observations) {
  margin-bottom: 40px;
}

.info span {
  font-weight: 300;
}

.info .date {
  display: flex;
  justify-content: space-between;
}

.info .date p {
  width: 50%;
}

.info .address p {
  width: 100%;
}

.actions {
  bottom: 0;
  border-top: 1px solid rgba(73, 114, 133, .6);
  display: flex;
  justify-content: space-between;
  position: absolute;
  width: 100%;
}

.actions button {
  background: none;
  border: 0;
  color: #fff;
  font-weight: 600;
  letter-spacing: 3px;
  margin: 0;
  padding: 30px 0;
  text-transform: uppercase;
  width: 50%;
}

.actions button:first-of-type {
  border-right: 1px solid rgba(73, 114, 133, .6);
}

.actions button:hover {
  background: #497285;
  cursor: pointer;
}

.actions button:active {
  background: #5889a0;
  outline: none;
}

/* Flip animation */

.flip {
  transform: rotateY(180deg);
}

.front, .back {
  backface-visibility: hidden;
}


    </style>

    <script type="text/javascript">
      var app = {
  settings: {
    container: $('.calendar'),
    calendar: $('.front'),
    days: $('.weeks span'),
    form: $('.back'),
    input: $('.back input'),
    buttons: $('.back button')
  },

  init: function() {
    instance = this;
    settings = this.settings;
    this.bindUIActions();
  },

  swap: function(currentSide, desiredSide) {
    settings.container.toggleClass('flip');

    currentSide.fadeOut(900);
    currentSide.hide();

    desiredSide.show();
  },

  bindUIActions: function() {
    settings.days.on('click', function(){
      instance.swap(settings.calendar, settings.form);
      settings.input.focus();
    });

    settings.buttons.on('click', function(){
      instance.swap(settings.form, settings.calendar);
    });
  }
}

app.init();
    </script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>

  <body>

    <div class="mobile-header z-depth-1">

      <div class="row">
        <div class="col-2">
          <a href="#" data-activates="sidebar" class="button-collapse" style="">
            <i class="material-icons">menu</i>
          </a>
        </div>
        <div class="col">
          <h4>Events</h4>
        </div>
      </div>

    </div>

    <div class="main-wrapper">

      <div class="sidebar-wrapper z-depth-2 side-nav fixed" id="sidebar">

        <div class="sidebar-title">
          <h4>Events</h4>
          <h5 id="eventDayName">Date</h5>
        </div>
        <div class="sidebar-events" id="sidebarEvents">
          <div class="empty-message">Sorry, no events to selected date</div>
        </div>

      </div>

      <div class="content-wrapper grey lighten-3">
        <div class="container">

          <div class="calendar-wrapper z-depth-2">

            <div class="header-background">
              <div class="calendar-header">

                <a class="prev-button" id="prev">
                  <i class="material-icons">keyboard_arrow_left</i>
                </a>
                <a class="next-button" id="next">
                  <i class="material-icons">keyboard_arrow_right</i>
                </a>

                <div class="row header-title">

                  <div class="header-text">
                    <h3 id="month-name">February</h3>
                    <h5 id="todayDayName">Today is Friday 7 Feb</h5>
                  </div>

                </div>
              </div>
            </div>

            <div class="calendar-content">
              <div id="calendar-table" class="calendar-cells">

                <div id="table-header">
                  <div class="row">
                    <div class="col">Mon</div>
                    <div class="col">Tue</div>
                    <div class="col">Wed</div>
                    <div class="col">Thu</div>
                    <div class="col">Fri</div>
                    <div class="col">Sat</div>
                    <div class="col">Sun</div>
                  </div>
                </div>

                <div id="table-body" class="">

                </div>

              </div>
            </div>

            <div class="calendar-footer">
              <div class="emptyForm" id="emptyForm">
                <h4 id="emptyFormTitle">No events now</h4>
                <a class="addEvent" id="changeFormButton">Add new</a>
              </div>
              <div class="addForm" id="addForm">
                <h4>Add new event</h4>

                <div class="row">
                  <div class="input-field col s6">
                    <input id="eventTitleInput" type="text" class="validate">
                    <label for="eventTitleInput">Title</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="eventDescInput" type="text" class="validate">
                    <label for="eventDescInput">Description</label>
                  </div>
                </div>

                <div class="addEventButtons">
                  <a class="waves-effect waves-light btn blue lighten-2" id="addEventButton">Add</a>
                  <a class="waves-effect waves-light btn grey lighten-2" id="cancelAdd">Cancel</a>
                </div>

              </div>
            </div>

          </div>

        </div>
      </div>

    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script>
      $(".button-collapse").sideNav();
    </script>
  </body>
</html>


<style>
body {
   font-family: 'Roboto', sans-serif;
   font-weight: 400;
}

h3,h4,h5 {
   font-weight: 300 !important;
}

.calendar-wrapper {
   height: auto;
   max-width: 730px;
   margin: 0 auto;
}

.calendar-header {
   background-color: rgba(18, 15, 25, 0.25);
   height: 100%;
   padding: 20px;
   color: #fff;
   font-family: 'Roboto', sans-serif;
   font-weight: 300;
   position: relative;
}

.header-title {
   padding-left: 15%;
}

.header-background {
   background-image: url("https://raw.githubusercontent.com/JustMonk/codepen-resource-project/master/img/compressed-header.jpg");
   height: 200px;
   background-position: center right;
   background-size: cover;
}

.calendar-content {
   background-color: #fff;
   padding: 20px;
   padding-left: 15%;
   padding-right: 15%;
   overflow: hidden;
}

.event-mark {
   width: 5px;
   height: 5px;
   background-color: teal;
   border-radius: 100px;
   position: absolute;
   left: 46%;
   top: 70%;
}

.calendar-footer {
   height: 200px;
   font-family: 'Roboto', sans-serif;
   font-weight: 300;
   text-align: center;
   background-color: #4b6289 !important;
   position: relative;
   overflow: hidden;
}

.addForm {
   position: absolute;
   top: 100%;
   width: 100%;
   height: 100%;
   background-color: #4b5889 !important;
   transition: top 0.5s cubic-bezier(1, 0, 0, 1);
   padding: 0 5px 0 5px;
}

.addForm input {
   color: #fff;
}

.addForm .row {
   padding-left: 0.75rem;
   padding-right: 0.75rem;
   margin-bottom: 0;
}

.addForm h4 {
   color: #fff;
   margin-bottom: 1rem;
}

.addEventButtons {
   text-align: right;
   padding: 0 0.75rem 0 0.75rem;
}

.addEventButtons a {
   color: black;
   font-weight: 300;
}

.emptyForm {
   padding: 20px;
   padding-left: 15%;
   padding-right: 15%;
}

.emptyForm h4 {
   color: #fff;
   margin-bottom: 2rem;
}

.sidebar-wrapper {
   color: #fff;
   background-color: #5a649c !important;
   padding-top: 0;
   padding-bottom: 20px;
   font-family: 'Roboto', sans-serif;
   font-weight: 300;
   padding-left: 0;
   padding-right: 0;
}

.sidebar-title {
   padding: 50px 6% 50px 12%;
}

.sidebar-title h4 {
   margin-top: 0;
}

.sidebar-events {
   overflow-x: hidden;
   overflow-y: hidden;
   margin-bottom: 70px;
}

.empty-message {
   font-size: 1.2rem;
   padding: 15px 6% 15px 12%;
}

.eventCard {
   background-color: #fff;
   color: black;
   padding: 12px 24px 12px 24px;
   border-bottom: 1px solid #E5E5E5;
   white-space: nowrap;
   position: relative;
   animation: slideInDown 0.5s;
}

.eventCard-header {
   font-weight: bold;
}

.eventCard-description {
   color: grey;
}

.eventCard-mark-wrapper {
   position: absolute;
   right: 0;
   top: 0;
   height: 100%;
   width: 60px;
   background: linear-gradient(to right, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 1) 25%, rgba(255, 255, 255, 1) 100%);
}

.eventCard-mark {
   width: 8px;
   height: 8px;
   background-color: #b39ddb;
   border-radius: 100px;
   position: absolute;
   left: 50%;
   top: 45%;
}

.day-mark {
   width: 7px;
   height: 7px;
   background-color: #b39ddb;
   border-radius: 100px;
   position: absolute;
   left: 47%;
   top: 67%;
}

.content-wrapper {
   padding-top: 50px;
   padding-bottom: 50px;
   margin-left: 300px;
}

#table-body .col:hover {
   cursor: pointer;
   /*border: 1px solid grey;*/
   background-color: #E0E0E0;
}

.empty-day:hover {
   cursor: default !important;
   background-color: #fff !important;
}

#table-body .row .col {
   padding: .75rem;
}

#table-body .col {
   border: 1px solid transparent;
}

#table-body {}

#table-body .row {
   margin-bottom: 0;
}

#table-body .col {
   padding-top: 1.3rem !important;
   padding-bottom: 1.3rem !important;
}

#calendar-table {
   text-align: center;
}

.prev-button {
   position: absolute;
   cursor: pointer;
   left: 0%;
   top: 35%;
   color: grey !important;
}

.prev-button i {
   font-size: 4em;
}

.next-button {
   position: absolute;
   cursor: pointer;
   right: 0%;
   top: 35%;
   color: grey !important;
}

.next-button i {
   font-size: 4em;
}

.addEvent {
   box-shadow: 0 5px 15px rgb(57, 168, 228);
   background-color: #39a8e4;
   padding: 10px;
   padding-left: 3em;
   padding-right: 3em;
   cursor: pointer;
   border-radius: 25px;
   color: #fff !important;
   background-image: linear-gradient(135deg, #8d8dd4, #45ced4);
}

.addEvent:hover {
   transition: box-shadow 0.5s;
   box-shadow: 0 4px 25px rgb(57, 168, 228);
}

.mobile-header {
   padding: 0;
   display: none;
   padding-top: 20px;
   padding-bottom: 20px;
   position: fixed;
   z-index: 99;
   width: 100%;
   background-color: #5a649c !important;
}

.mobile-header a i {
   color: #fff;
   font-size: 38px;
}

.mobile-header h4 {
   color: #fff;
}

.mobile-header .row {
   margin-bottom: 0;
}

.mobile-header h4 {
   margin: 0;
   font-family: 'Roboto', sans-serif;
   font-weight: 300;
}

@media (max-width:992px) {
   .content-wrapper {
      margin-left: 0;
   }
   .mobile-header {
      display: block;
   }
   .calendar-wrapper {
      margin-top: 80px;
   }
   .sidebar-wrapper {
      background-color: #EEEEEE !important;
   }
   .sidebar-title {
      background-color: #5A649C !important;
   }
   .empty-message {
      color: black;
   }
}

@media (max-width:767px) {
   .content-wrapper .container {
      width: auto;
   }
   .calendar-content {
      padding-left: 5%;
      padding-right: 5%;
   }
   body .row {
      margin-bottom: 0;
   }
}

@media (max-width:450px) {
   .content-wrapper {
      padding-left: 0;
      padding-right: 0;
   }
   .content-wrapper .container {
      padding-left: 0;
      padding-right: 0;
   }
}
</style>

<script>
var calendar = document.getElementById("calendar-table");
var gridTable = document.getElementById("table-body");
var currentDate = new Date();
var selectedDate = currentDate;
var selectedDayBlock = null;
var globalEventObj = {};

var sidebar = document.getElementById("sidebar");

function createCalendar(date, side) {
   var currentDate = date;
   var startDate = new Date(currentDate.getFullYear(), currentDate.getMonth(), 1);

   var monthTitle = document.getElementById("month-name");
   var monthName = currentDate.toLocaleString("en-US", {
      month: "long"
   });
   var yearNum = currentDate.toLocaleString("en-US", {
      year: "numeric"
   });
   monthTitle.innerHTML = `${monthName} ${yearNum}`;

   if (side == "left") {
      gridTable.className = "animated fadeOutRight";
   } else {
      gridTable.className = "animated fadeOutLeft";
   }

   setTimeout(() => {
      gridTable.innerHTML = "";

      var newTr = document.createElement("div");
      newTr.className = "row";
      var currentTr = gridTable.appendChild(newTr);

      for (let i = 1; i < startDate.getDay(); i++) {
         let emptyDivCol = document.createElement("div");
         emptyDivCol.className = "col empty-day";
         currentTr.appendChild(emptyDivCol);
      }

      var lastDay = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0);
      lastDay = lastDay.getDate();

      for (let i = 1; i <= lastDay; i++) {
         if (currentTr.children.length >= 7) {
            currentTr = gridTable.appendChild(addNewRow());
         }
         let currentDay = document.createElement("div");
         currentDay.className = "col";
         if (selectedDayBlock == null && i == currentDate.getDate() || selectedDate.toDateString() == new Date(currentDate.getFullYear(), currentDate.getMonth(), i).toDateString()) {
            selectedDate = new Date(currentDate.getFullYear(), currentDate.getMonth(), i);

            document.getElementById("eventDayName").innerHTML = selectedDate.toLocaleString("en-US", {
               month: "long",
               day: "numeric",
               year: "numeric"
            });

            selectedDayBlock = currentDay;
            setTimeout(() => {
               currentDay.classList.add("blue");
               currentDay.classList.add("lighten-3");
            }, 900);
         }
         currentDay.innerHTML = i;

         //show marks
         if (globalEventObj[new Date(currentDate.getFullYear(), currentDate.getMonth(), i).toDateString()]) {
            let eventMark = document.createElement("div");
            eventMark.className = "day-mark";
            currentDay.appendChild(eventMark);
         }

         currentTr.appendChild(currentDay);
      }

      for (let i = currentTr.getElementsByTagName("div").length; i < 7; i++) {
         let emptyDivCol = document.createElement("div");
         emptyDivCol.className = "col empty-day";
         currentTr.appendChild(emptyDivCol);
      }

      if (side == "left") {
         gridTable.className = "animated fadeInLeft";
      } else {
         gridTable.className = "animated fadeInRight";
      }

      function addNewRow() {
         let node = document.createElement("div");
         node.className = "row";
         return node;
      }

   }, !side ? 0 : 270);
}

createCalendar(currentDate);

var todayDayName = document.getElementById("todayDayName");
todayDayName.innerHTML = "Today is " + currentDate.toLocaleString("en-US", {
   weekday: "long",
   day: "numeric",
   month: "short"
});

var prevButton = document.getElementById("prev");
var nextButton = document.getElementById("next");

prevButton.onclick = function changeMonthPrev() {
   currentDate = new Date(currentDate.getFullYear(), currentDate.getMonth() - 1);
   createCalendar(currentDate, "left");
}
nextButton.onclick = function changeMonthNext() {
   currentDate = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1);
   createCalendar(currentDate, "right");
}

function addEvent(title, desc) {
   if (!globalEventObj[selectedDate.toDateString()]) {
      globalEventObj[selectedDate.toDateString()] = {};
   }
   globalEventObj[selectedDate.toDateString()][title] = desc;
}

function showEvents() {
   let sidebarEvents = document.getElementById("sidebarEvents");
   let objWithDate = globalEventObj[selectedDate.toDateString()];

   sidebarEvents.innerHTML = "";

   if (objWithDate) {
      let eventsCount = 0;
      for (key in globalEventObj[selectedDate.toDateString()]) {
         let eventContainer = document.createElement("div");
         eventContainer.className = "eventCard";

         let eventHeader = document.createElement("div");
         eventHeader.className = "eventCard-header";

         let eventDescription = document.createElement("div");
         eventDescription.className = "eventCard-description";

         eventHeader.appendChild(document.createTextNode(key));
         eventContainer.appendChild(eventHeader);

         eventDescription.appendChild(document.createTextNode(objWithDate[key]));
         eventContainer.appendChild(eventDescription);

         let markWrapper = document.createElement("div");
         markWrapper.className = "eventCard-mark-wrapper";
         let mark = document.createElement("div");
         mark.classList = "eventCard-mark";
         markWrapper.appendChild(mark);
         eventContainer.appendChild(markWrapper);

         sidebarEvents.appendChild(eventContainer);

         eventsCount++;
      }
      let emptyFormMessage = document.getElementById("emptyFormTitle");
      emptyFormMessage.innerHTML = `${eventsCount} events now`;
   } else {
      let emptyMessage = document.createElement("div");
      emptyMessage.className = "empty-message";
      emptyMessage.innerHTML = "Sorry, no events to selected date";
      sidebarEvents.appendChild(emptyMessage);
      let emptyFormMessage = document.getElementById("emptyFormTitle");
      emptyFormMessage.innerHTML = "No events now";
   }
}

gridTable.onclick = function (e) {

   if (!e.target.classList.contains("col") || e.target.classList.contains("empty-day")) {
      return;
   }

   if (selectedDayBlock) {
      if (selectedDayBlock.classList.contains("blue") && selectedDayBlock.classList.contains("lighten-3")) {
         selectedDayBlock.classList.remove("blue");
         selectedDayBlock.classList.remove("lighten-3");
      }
   }
   selectedDayBlock = e.target;
   selectedDayBlock.classList.add("blue");
   selectedDayBlock.classList.add("lighten-3");

   selectedDate = new Date(currentDate.getFullYear(), currentDate.getMonth(), parseInt(e.target.innerHTML));

   showEvents();

   document.getElementById("eventDayName").innerHTML = selectedDate.toLocaleString("en-US", {
      month: "long",
      day: "numeric",
      year: "numeric"
   });

}

var changeFormButton = document.getElementById("changeFormButton");
var addForm = document.getElementById("addForm");
changeFormButton.onclick = function (e) {
   addForm.style.top = 0;
}

var cancelAdd = document.getElementById("cancelAdd");
cancelAdd.onclick = function (e) {
   addForm.style.top = "100%";
   let inputs = addForm.getElementsByTagName("input");
   for (let i = 0; i < inputs.length; i++) {
      inputs[i].value = "";
   }
   let labels = addForm.getElementsByTagName("label");
   for (let i = 0; i < labels.length; i++) {
      labels[i].className = "";
   }
}

var addEventButton = document.getElementById("addEventButton");
addEventButton.onclick = function (e) {
   let title = document.getElementById("eventTitleInput").value.trim();
   let desc = document.getElementById("eventDescInput").value.trim();

   if (!title || !desc) {
      document.getElementById("eventTitleInput").value = "";
      document.getElementById("eventDescInput").value = "";
      let labels = addForm.getElementsByTagName("label");
      for (let i = 0; i < labels.length; i++) {
         labels[i].className = "";
      }
      return;
   }

   addEvent(title, desc);
   showEvents();

   if (!selectedDayBlock.querySelector(".day-mark")) {
      selectedDayBlock.appendChild(document.createElement("div")).className = "day-mark";
   }

   let inputs = addForm.getElementsByTagName("input");
   for (let i = 0; i < inputs.length; i++) {
      inputs[i].value = "";
   }
   let labels = addForm.getElementsByTagName("label");
   for (let i = 0; i < labels.length; i++) {
      labels[i].className = "";
   }

}
</script>


    
    