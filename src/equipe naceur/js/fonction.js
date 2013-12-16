function sendForm() {

	var username = document.getElementById("txt_user").value;
	var url_elem = document.getElementById("ddl_url");
	var wikiurl = url_elem.options[url_elem.selectedIndex].value;
	var loader = document.getElementById("ico_loading");
	
	$("#ico_loading").fadeIn("fast");
	$("#box_result").fadeOut("fast");
	
	$.get("wiki_interogator.php", { user:username, wiki:wikiurl }, function(data) {
		$("#result").html(data);
		var values = [], labels = [];

		$("tr").each(function() {
			values.push(parseInt($("td", this).text(), 10));
			labels.push($("th", this).text());
		});

		$("#box_result").fadeIn("slow");
		$("#ico_loading").fadeOut("slow");
	}); 
	
	return false;
}

$(document).on("click", "#tbl_result tr.res", function(e) {
	
    $(this).closest('tr').next().find('.expandable').slideToggle("slow");
    
});
