<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">	
</script>
<link href="settingcss.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
	
		$("#picture_quality").change(change_Qulity);
		$("#play_speed").change(change_PlayRates);
		$(".sub_button").click(sub_show);

	}); //ready end


	function sub_show() {
		
		var sub_buttons = document.querySelectorAll(".sub_button")
		for (var i in sub_buttons) {
			$(sub_buttons[i]).css("color","");
		}
		$(this).css("color","red");
		
	}


	function change_Qulity() {
		var	list = player.getAvailableQualityLevels();
		list.reverse();
		for (var i in list) {
			if (this.value == i) {
				$("#" + this.id + "2").html(list[i]);
				player.setPlaybackQuality(list[i]);
			}
		}
	}
	
	
	function change_PlayRates() {
		var list = player.getAvailablePlaybackRates();
		for (var i in list) {
			if (this.value ==i) {
				$("#" + this.id + "2").html(list[i]);
				player.setPlaybackRate(list[i]);
			}
		}
	}
	
</script>

<table style="background-color:rgba(0, 0, 0, 0.7); text-align: center; width:230px; height: 160; margin-top: 190px;" >
		<tr>
			<td>
				<input type="range" class="form-range" min="0" max="6"
				id="picture_quality" value="3">
			</td>
			<td><input type="range" class="form-range" min="0" max="7"
				id="play_speed" value="3">
			</td>
			<td>
				<div class="btn-group-vertical" aria-label="Basic outlined example" id="sub_button"> 
					<button type="button" class="btn btn-outline-light sub sub_button" style="color:red">사용안함</button>
					<button type="button" class="btn btn-outline-light sub sub_button">영어</button>
					<button type="button" class="btn btn-outline-light sub sub_button">한글</button>
				  </div>
			</td>
		</tr>
		
		<tr>
			<td><span class ="sub" id="picture_quality2">(360p)</span>
				<div class="form-label" id="label1">화질</div></td>
			<td><span class ="sub" id="play_speed2">보통</span>
				<div class="form-label" id="label2">재생속도</div></td>
			<td><span class ="sub" >특수효과</span>
				<input type="checkbox" id="switch"  /><label for="switch" style="margin: auto;">Toggle</label>
			</td>	
		</tr>
	</table>
	
	