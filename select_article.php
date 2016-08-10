<?php
	include "connection.php";
	$condition="";
	$columns="*";
	if(isset($_GET["search"]))
	{
		$search=$_GET["search"];
		$query=$_GET['query'];
		$condition="WHERE MATCH (`content`) AGAINST ('".$query."')";
		$columns="MATCH (`content`) AGAINST ('".$query."') as rel,topic,content,url";//transform query into a search query
	}
	$qrt=$con->query("SELECT ".$columns." FROM Article ".$condition);
	$doc=new DOMDocument;
	$arts=$doc->createElement("articles");
	while($row_art=$qrt->fetch_object())//write html content for article
	{
		$art=$doc->createElement("item");
		$art->setAttribute("topic",$row_art->topic);
		$art->setAttribute("url",$row_art->url);
		if($row_art->rel!==null)
		{
			$art->setAttribute("rel",$row_art->rel);
		}
		$art->appendChild(new DOMText($row_art->content));
		$arts->appendChild($art);
		
	}
	echo $doc->saveXML($arts);//output the xml content
