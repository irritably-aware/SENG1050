<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/><!--tells parser document is html format-->
<xsl:template match="Packages"><!--match xml for Packages element-->
<!-- 
Filename: goHoliday.xsl
Author: Wei Chen
date last edit: 4/11/2020
-->
	<HTML><!-- start html contents -->

		<HEAD>
			<TITLE>goHolidays</TITLE>
			<link rel="stylesheet" href="style.css" type="text/css" />
		</HEAD>

		<BODY>

			<header>
				<h1 style="text-align:center;">	<!--first heading and the only level 1 heading -->
					<a style="font-family:serif;font-weight: 500; color: lime;">Go:</a>	
					<a style="font-family: prestige-elite-std, monospace; font-weight: 400; color: fuchsia; background-color:rgba(255,255,255, .7);">Holidays</a>	<!--heading text with inline CSS applied -->
				</h1>
			</header>

			<nav>	<!--unordered list nav bar-->
				<ul>
					<li><a href="goHoliday2.xml">Adventure</a></li>
					<li><a href="goHoliday.xml">Luxury</a></li>
					<li><a href="Index.html">Home</a></li>
					<li><a href="Privacy.html">Privacy </a> </li>
					<li><a href="Submission.html">Submission </a> </li>
					<li><a href="aboutus.html">About us</a></li>
					<li><a href="contact.html">Contact </a> </li>
				</ul>
				<hr></hr>
			</nav>

			<main> <!--main section-->
				<h2> 
				<xsl:apply-templates select="Category"/> Packages
				</h2> <!--prints out the cetegory for heading of main section-->
				
				<p> <!--main section contents-->
					<xsl:for-each select="Package"> <!--prints out package details for each package-->
						<div class="inner"><!--inner divs have solid border instead of dashed border-->
				    	<tr><br></br>

				     		<h3><xsl:value-of select="PackageName"/></h3><br></br>
				    		<td><xsl:value-of select="Description"/></td><br></br>
				    		
				    		<div class="inner"><!--grabs picpath element value from xml and use as src attribute for img tag-->
								<img>
								<xsl:attribute name="src">
								<xsl:value-of select="PromoPic/PicPath"/>			
								</xsl:attribute>				
								</img>									 
							</div> <!--show the picture-->

				    		<td>Cost: <xsl:value-of select="Cost"/></td><br></br>
				    		<td>Nights: <xsl:value-of select="Nights"/></td><br></br>
				    		<td>Popularity: <xsl:value-of select="Popularity"/></td><br></br>
				    		<td>Accomodation Location: <xsl:value-of select="Accomodations/Location/City"/>, <xsl:value-of select="Accomodations/Location/Country"/></td><br></br>
				    		<hr></hr>
				    		<td>Coupons: <xsl:value-of select="Coupon"/></td><br></br>
				    		<td>Extra Costs: <xsl:value-of select="ExtraCost"/></td><br></br>
				    		<td>Cost Covered: <xsl:value-of select="CostCovered"/></td><br></br>
				    		<hr></hr>
				    		Reviews<br></br>
					    	<td><xsl:value-of select="Reviews/ReviewScore"/></td><br></br>
					    	<td><xsl:value-of select="Reviews/ReviewName"/></td><br></br>
					    	<td><xsl:value-of select="Reviews/ReviewDate"/></td><br></br>
					    	<hr></hr>
					    	<td>Affiliation: <xsl:value-of select="Affiliates"/></td><br></br>
				  		</tr>
				  	</div><br></br>
				    </xsl:for-each><!--for loop ends-->
				</p>

			</main>

			<footer>
			Copyright Newcastle University |
			<i> GoHolidays pty ltd |
			GoHolidays, 42 high street, Sydney 2048 NSW Australia |
			Phone: +02 0010 0101 | </i>
			<a href="support@goholidays.com.au">support@goholidays.com.au</a>
			</footer>	<!--footer -->

		</BODY>
	</HTML><!--ends html contents-->

</xsl:template>
</xsl:stylesheet>