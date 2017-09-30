<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"	href="/resources/bootstrap/bootswatch.css" />
<link rel="stylesheet/less" type="text/css"	href="/resources/bootstrap/bootswatch.less" />
<link rel="stylesheet/less" type="text/css" href="/resources/bootstrap/variables.less" />
<link href='/resources/fullcalander/fullcalendar.min.css' rel='stylesheet' />
<link href='/resources/fullcalander/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script type="text/javascript" src="/resources/fullcalander/moment.min.js"></script>
<script type="text/javascript" src="/resources/fullcalander/fullcalendar.min.js"></script>
<script type="text/javascript" src="/resources/fullcalander/locale-all.js"></script>

<html>
<head>
<title>메인</title>

</head>
	<body>
		<div class="page-header">
			<div class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<a onclick="main()" class="navbar-brand">IBM 회의실 예약 시스템</a>
					</div>
					<div class="navbar-collapse collapse" id="navbar-main">
						<ul class="nav navbar-nav">
	
						</ul>
	
						<ul class="nav navbar-nav navbar-right">
							<li><a onclick="notice()">공지사항</a></li>
							<li><a onclick="notice()">내 정보</a></li>
							<li><a target="_blank" onclick="admin()">관리자</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div id="calendar"></div>
		
		</div>
	</body>
</html>

<script>
$(function(){
$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay,listWeek'
			},
			locale:"ko",
			defaultDate: '2017-09-12',
			navLinks: true, // can click day/week names to navigate views
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2017-09-01',
				},
				{
					title: 'Long Event',
					start: '2017-09-07',
					end: '2017-09-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-09-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-09-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2017-09-11',
					end: '2017-09-13'
				},
				{
					title: 'Meeting',
					start: '2017-09-12T10:30:00',
					end: '2017-09-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2017-09-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2017-09-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2017-09-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2017-09-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2017-09-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2017-09-28'
				}
			]
		});
		
	});
});

</script>
	

