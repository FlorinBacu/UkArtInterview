<?php 
	include "connection.php";
	$topic=$_POST["topic"];
	$content=$_POST['content'];
	$url=$_POST['url'];

	$con->query("insert into Article (topic,content,url) VALUES ('".$topic."','".$content."','".$url."')");
	$doc_art=new DOMDocument;
	$html=$doc_art->createElement("html");
	$head=$doc_art->createElement("head");
	$title=$doc_art->createElement("title");
	$title->appendChild(new DOMText($topic));
	$body=$doc_art->createElement("body");
	$body->appendChild(new DOMText($content));
	$html->appendChild($head);
	$html->appendChild($body);
	$head->appendChild($title);
	$doc_art->appendChild($html);
	$doc_art->saveHTMLFile("article/".$url.".html");
	
?>
