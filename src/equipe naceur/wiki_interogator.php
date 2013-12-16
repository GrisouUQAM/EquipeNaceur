<?php
require_once ('classes.php');

$user = $_GET["user"];
$wikiUrl = $_GET["wiki"];
$completWikiUrl = "http://" . $wikiUrl;

$talks = getTalks($user);
if (!$talkList) {
	$message  = "Invalid query: " . mysql_error() . "\n";
	$message .= "Whole query: " . $sql;
	die($message);
}

printUserTalks($talks, $user);

function printUserTalks($talkList, $relatedUsersArray, $user) {
	$result = "<h2>Discussions auxquelles <span style='color:blue;'><i>" . $user . "</i></span> a contribu&eacute;</h2>
      <p>Cliquez sur une ligne parmis les r&eacute;sultats afin de visualiser les utilisateurs qui ont int&eacute;ragis avec <i>" . $user . " </i>dans cette discussion.<p>
      <table id='tbl_result' width='100%' cellpadding='0' cellspacing='0'>
      <tr>            
      <td class='head' style='width:100px;'>Page ID</td>
      <td class='head' style='width:300px;'>Articles discut&eacute;s</td>
      <td class='head'>Titre de la discussion</td>  
      <td class='head'>Cr&eacute;ateur</td> 
      <td class='head'>User cr&eacute;ateur</td>    
      </tr>";


	while($record = Mysql_fetch_array($talks)) {
		$pageId = $record["pageId"];
		$pageTitle = $record["titre"];
		$comment = $record["comment"];
		$isTalkCreator = $record["estCreateur"];
		$talkCreator = $record["userCreateur"];
		
		$result .= "<tr class='res'>";
		$result .= "<td class='res'>" . $pageId . "</td>";
		$result .= "<td class='res'>" . $pageTitle . "</td>";
		$result .= "<td class='res'>" . $comment . "</td>";
		$result .= "<td class='res'>" . $isTalkCreator . "</td>";
		$result .= "<td class='res'>" . $talkCreator . "</td>";
		$result .= "</tr>";

		/* $result .= "<tr style='background:#f6f6f6;'>";
		$result .= "<td colspan='4' style='padding:0 20px'>";
		$result .= "<div class='expandable'>";
		$result .= "<p class='desc'>Liste des users ayant particip&eacute; &agrave; cette discussion</p>";
		$result .= "<table width='100%' cellpadding='0' cellspacing='0' style='padding-bottom:20px;'>";
		$result .= "<tr class='subRes'><td class='subRes'>";
		
		$subResult = "";
		
		foreach ($relatedUsersArray as $relatedUser) {
			if ($relatedUser -> comment == $talk -> comment) {
				$subResult .= $relatedUser -> user;
				$subResult .= "&nbsp;&nbsp;|&nbsp;&nbsp;";
			}
		}
		
		if ($subResult == "")
			$subResult .= "Aucune interaction a eu lieu dans cette discussion.";
		
		$result .= $subResult; */
		$result .= "</td></tr>";
		$result .= "</table></div></td></tr>";
	}

	$result .= "</table>";

	print $result;		
}

function checkIfUserExist($user, $relatedUsers) {
	foreach ($relatedUsers as $existingUsers) {
		if ($user == $existingUsers -> user)
			return true;
	}

	return false;
}

function getRelatedUsers($talkArray, $user, $completWikiUrl) {
	
}

function getTalks($user) {
	connectToDB();
	$talkSql = "SELECT talk.pageID, talk.comment, talk.ordre, talk.estCreateur, talk.userCreateur, page.titre 
	  FROM talk JOIN page ON (page.pageId = talk.pageID) WHERE user = " + $user;	
	return mysql_query($talkSql);
}

function connectToDB(){
    $hostname="db505427248.db.1and1.com";
    $database="db505427248";
    $username="dbo505427248";
    $password="grisous";

    $link = mysql_connect($hostname, $username, $password);
    if (!$link) {
   	 die('Connection failed: ' . mysql_error());
    }
    $db_selected = mysql_select_db($database, $link);
    if (!$db_selected) {
   	 die ('Can\'t select database: ' . mysql_error());
    }
}

?>