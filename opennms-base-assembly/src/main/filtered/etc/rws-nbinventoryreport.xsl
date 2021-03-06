<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<STYLE TYPE="text/css" MEDIA="print">

				body {
				font-family: "lucida grande", verdana, sans-serif;
				font-size: small;
				}

				#headerinfo, #header .navbar, #header hr {
				display: none;
				}

				#footer, .pager, .key, input, #linkbar {
				display: none;
				}

				#graph-results div form {
				display: none;
				}

				#graph-results {
				text-align: center;
				}

				p, li, td, th { font-size:small; }
				table { width:100%; border-collapse:collapse; }
td { border:1px solid black; }
th { text-align:left; }

h2 { font-size: small; }

h3 {
	text-align: center;
        border:1px solid #366903;
        margin-top: 7px;
        margin-bottom: 4px;
        font-size: 70%;
        padding: 6px;
} 

a {
        color: #366903;
	text-decoration: none;
}

select { font-size: small; }
		
		</STYLE>
		
			<STYLE TYPE="text/css" MEDIA="screen">
				/*
				Modifications:

				2006 Aug 22: A few CSS tweaks - Note that we're overriding font size and
				margin within
				tables to make things a bit more readable. In general we should be
				removing HTML
				from event descriptions - need to fix this
				2006 Apr 25: Added table.wdth600
				2005 Oct 01: More CSS work. -- DJ Gregor
				2005 Sep 30: Hacked up heavily to use CSS for layout and markup. Some
				code
				(particularly #nav bits) provided by Mike Huot. -- DJ Gregor

				*/

				/* height and width stuff, width not really neccesary. */
				a {
				color: #366903;
				text-decoration:none;
				}
			 	a:hover {
				text-decoration: underline;
				}
				body {
				margin: 0px;
				padding: 0px;
				background: #FFF;
				color: #000;
				font-family: "Lucida Grande", Verdana, sans-serif;
				}
				p, td, th, li {
				font-size: 70%;
	line-height: 1.25em;
}
li li {
	font-size: 100%;
}
td td {
	font-size: 100%;
}
td th {
	font-size: 100%;
}
tr.even td {
	background-color: #fff;
}
tr.odd td {
	background-color: #fff;
}
p {
	margin: 0 0 7px 0;
}
p.noBottomMargin {
	margin-bottom: 0px;
}
form {
	margin: 0;
}
input, select {
	font-family: "lucida grande", verdana, sans-serif;
	font-size: 70%;
}
p input, p select, li input, li select, td input, td select {
	font-size: 100%;
}
.right {
	text-align: right;
}
hr {
	position: relative;
	visibility: hidden;
	margin: 0;
	padding: 0;
	height: 0;
	clear: both;
}
h2 {
	margin: 0;
	font-size: 80%;
}
p h2, td h2 {
	/* 70% * 114% = 80% */
	font-size: 114%;
}

h3 {
	background-image: url(../images/headingbg.png);
	background-repeat: repeat-x;
	background-position: center center;
	background-color: #366903;
	color: #FFF;
	border:1px solid #999;
	border-bottom: 0;
	margin-bottom: 0;
	margin-top: 7px;
	font-size: 70%;
	padding: 6px;
} 
p h3, td h3 {
	font-size: 100%;
}
h3 a {
	color: #FFF;
}
ul.plain {
	list-style-type: none;
	margin:0;
	padding:0px;
}
ul.plain li { 
	line-height:1.6em;
}
ul.error {
	list-style-type: none;
	margin:0;
	padding:0px;
}
ul.error li { 
	line-height:1.6em;
	color: #F00;
}
span.error { 
	color: #F00;
}
div.boxWrapper {
	background-color: #FFF;
	border: 1px solid #999;
	border-top: 0;
	padding: 4px 6px;
	overflow: auto;
}
div.boxWrapper div.col {
	margin:  20px auto;
	width: 50%;
}
div.formOnly {
	width:250px; 
	text-align:right; 
	margin:0 50px; 
	padding:50px 0;
}
td div.clip {
	margin:0; 
	padding:0; 
	height:1.5em; 
	overflow:hidden;
}

/* Layouts */
div.TwoColLeft {
	width: 40%;
	float: left;
	position: relative;
	margin-right: 2%;
}
div.TwoColRight {
	width: 57%;
	float: left;
	position: relative;
}

div.TwoColLAdmin  {
        width: 40%;
        float: left;
        position: relative;
	margin-right: 2%;
}

div.TwoColRAdmin {
        width: 58%;
        float: left;
        position: relative;
}

/* Treeview from UL/LI -- currently only in the scheduled outage page */

.treeview
{
	list-style-type: none;
	font-size: 120%;
	padding-left: 0;
}

.treeview ul li
{
	list-style-type: none;
	font-size: 100%;
	margin-left: -2em;
}

/* Widget Box Body */
.widget-box
{
	background: #cccccc;    
}

/*
 * value in a widget-box that serves as the fieldname for the value to its right 
 */
.widget-box-fieldname
{
	background: #999999; 
}

#nav, #nav ul	/* all lists */
{
	padding: 0;
	margin: 0;
	list-style: none;
	float: left;
	width: 11em;
}

#nav li /* all list items */
{
	position: relative;
	float: left;
	line-height: 1.25em;
	margin-bottom: -1px;
	width: 11em;
}
	
#nav li ul/* second-level lists */
{
	position: absolute;
	left: -999em;
	margin-left: 11.05em;
	margin-top: 0em;
	margin-bottom: 3px;
}

#nav li ul ul	/* third-and-above-level lists */
{
	left: -999em;
}

#nav li a
{
	width: 11em;
	w\idth: 10em;
	display: block;
	text-decoration: none;
	background-color: white;
	border: 1px solid #c9dfc9;
	padding: 0 0.5em;
}

#nav li a:hover
{
	color: #cccccc;
	background-color: black;
}

#nav li:hover ul ul, #nav li:hover ul ul ul, #nav li.sfhover ul ul, #nav li.sfhover ul ul ul
{
	left: -999em;
}
	
#nav li:hover ul, #nav li li:hover ul, #nav li li li:hover ul, #nav li.sfhover ul, #nav li li.sfhover ul, #nav li li li.sfhover ul	/* lists nested under hovered list items */
{
	left: auto;
}

#content {
	position: relative;
	background-image: url(../images/mainbg.png);
	background-repeat: repeat-x;
	background-color: #EEE;
	margin: 0;
	padding: 15px 20px 30px 20px;
}

.navbar ul
{ 
	list-style: none;
	display: inline;
}


.navbar li
{ 
	padding: 0 10px 5px 0;
	list-style: none;
	display: inline;
	color: #999;
}

#linkbar
{
	padding: 0 0 1em 0;
}

#linkbar ul
{ 
	list-style: none;
	display: inline;
	padding: 0 0 0 0;
}

#linkbar li
{ 
	list-style: none;
	display: inline;
	padding-right: 0.75em;
}

div.standard
{
	clear: both;
	padding: 0.1em 1.0em 0.75em 0.75em;
}
span.filter {
	color: #444;
	border: 1px solid #CCC;
	background-color: #DDD;
	padding: 3px 4px;
}

table.top {
	width: auto;
	border: none;
	background-color: transparent;
	vertical-align: top;
}
table.top td {
	border: none;
	background-color: transparent;
	vertical-align: top;
}

table.normal {
	width: auto;
}
table.normal td {
	border: none;
	background-color: transparent;
}
td.normal {
	border: none;
	background-color: transparent;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-top: 0;
	margin-bottom: 10px;
}
aggr.status.table {
	border-collapse: collapse;
	width: 33%;
	margin-top: 0;
}
.noWrap {
	white-space: nowrap;
}
th {
	border:1px solid #999;
	padding: 4px 5px;
	background-color: #444;
	font-weight: bold;
	text-align: left;
	color: #FFF;
}
th a {
	text-decoration: underline;
	color: #FFF;
}
th a:hover {
	color: #CCC;
}
/*Conflicting style*/
td {
	border: 1px solid #999;
	padding: 4px 5px;
	background-color: #FFF;
}

td td, td p {
	font-size: 100%;
	margin: 0;
	padding: 0px;
}

table.wdth600 { 
	width: 600px;
}

td.standardnavlinks
{
	width: 25%;
}

td.standardwarning
{
        background-color: #00FFFF;
}

.bold {
	font-weight: bold;
}


td.status1 {
	background-color: #C7DBAF;
}


#nodelist table
{ 
        width: 100%;
        border: 0;
}

td.availunmanaged
{
	background-color: #CCC;
	font-weight: bold;
        text-align: right;
}

td.availgood
{
	background-color: green;
	font-weight: bold;
        text-align: right;
}

td.availwarn
{
	background-color: #ffff33;
	font-weight: bold;
        text-align: right;
}

td.availcrit
{
	background-color: #ff3333;
	font-weight: bold;
        text-align: right;
}

#eventlist
{
        clear: both;
        padding: 0.1em 1.0em 0.75em 0.75em;
}

#include-eventlist td.sev_indeterminate
{
	background-color: #ADD8E6;
	padding: 2px;
}

#include-eventlist td.sev_cleared
{
	background-color: #FFFFFF;
	padding: 2px;
}

#include-eventlist td.sev_normal
{
    background-color: #00FF00;
	padding: 2px;
}

#include-eventlist td.sev_warning
{
    background-color: #00FFFF;
	padding: 2px;
}

#include-eventlist td.sev_minor
{
    background-color: #FFFF00;
	padding: 2px;
}

#include-eventlist td.sev_major
{
        background-color: #FFA500;
	padding: 2px;
}

#include-eventlist td.sev_critical
{
        background-color: #FF0000;
	padding: 2px;
}

#include-charts
{ 
	text-align: center;
	clear: both;
}

#graph-results
{ 
	text-align: center;
}

/*#graph-results-periods td */

#graph-results .periods td
{ 
  width: 80px;
  text-align: center;
}

#header {
	position: relative;
	margin: 0;
	padding: 0;
	background-color: #333;
	background-image: url(../images/headerbg.png);
	background-repeat: repeat-x;
	color: #FFF;
}
#header a {
	color:#FFF;
}

h1#headerlogo {
	position: absolute;
	z-index: 2;
	margin: 0;
	padding: 0;
	left: 15px;
	top: 13px;
}
#headerinfo {
	position: relative;
	margin: 0px;
	padding: 10px;
	text-align: right;
}

div.spacer {
	position: relative;
	clear: both;
	height: 1px;
}
div.center {
	text-align: center;
}

img {
	border: none;
}

#headerdate {
	float: right;
	text-align: right;
	font-weight: bold;
	vertical-align: middle;
}

#headernavbarright {
	position: relative;
	float: right;
	padding: 2px 0px 5px 0px;
}

#contentleft {
	width: 48%;
	position: relative;
	float: left;
}

#contentright {
	width: 48%;
	float: right;
	position: relative;
}

#index-contentleft {
	position: relative;
	width: 23%;
	float: left;
}

#index-contentmiddle {
	position: relative;
	width: 48%;
	float: left;
	margin: 0 2%;
}

#index-contentright {
	position: relative;
	width: 24%;
	float: left;
}
p.pager span {
	display:block; 
	float:right; 
	position:relative;
}
p.key {
	clear: both;
	text-align: right;
}
p.key img {
	position: relative;
	float:right; 
	margin-left:5px;
}

#footer {
	clear: both;
	text-align: center;
	padding: 30px 2px 2px 2px;
	background-image: url(../images/footerbg.png);
	background-repeat: repeat-x;
}

.status-critical {
    background-color: red;
    text-align: center
}

.status-warning {
    background-color: yellow;
    text-align: center
}

.status-normal {
    background-color: green;
    text-align: center
}


#copyright
{
	text-align: center;
	padding: 3px;
}

/* Status Colouring */
tr.divider td {
	border-top-width: 2px;
}
td.divider {
	border-top-width: 2px;
}
td.bright {
	padding-left: 20px;
	background-position: top left;
	background-repeat: repeat-y;
}

tr.Critical td { background-color: #F5CDCD; }
tr.Critical td.divider { border-top: 2px solid #CC0000 !important; }
tr.Critical td.bright { background-image: url(../images/bgCritical.png); }

tr.Major td { background-color: #FFD7CD; }
tr.Major td.divider { border-top: 2px solid #FF3300 !important; }
tr.Major td.bright { background-image: url(../images/bgMajor.png); }

tr.Minor td { background-color: #FFEBCD; }
tr.Minor td.divider { border-top: 2px solid #FF9900 !important; }
tr.Minor td.bright { background-image: url(../images/bgMinor.png); }

tr.Warning td { background-color: #FFF5CD; }
tr.Warning td.divider { border-top: 2px solid #FFCC00 !important; }
tr.Warning td.bright { background-image: url(../images/bgWarning.png); }

tr.Indeterminate td { background-color: #EBEBCD; }
tr.Indeterminate td.divider { border-top: 2px solid #999900 !important; }
tr.Indeterminate td.bright { background-image: url(../images/bgIndeterminate.png); }

tr.Normal td { background-color: #D7E1CD; }
tr.Normal td.divider { border-top: 2px solid #336600 !important; }
tr.Normal td.bright { background-image: url(../images/bgNormal.png); }

tr.Cleared td { background-color: #EEE; }
tr.Cleared td.divider { border-top: 2px solid #999 !important; }
tr.Cleared td.bright { background-image: url(../images/bgCleared.png); }

tr.CellStatus td {
	padding-left: 20px;
	background-position: top left;
	background-repeat: repeat-y;
}

tr.CellStatus td.Critical
{
	background-color: #F5CDCD; 
	border-top: 2px solid #CC0000 !important;
	background-image: url(../images/bgCritical.png);
}

tr.CellStatus td.Major
{
	background-color: #FFD7CD; 
	border-top: 2px solid #FF3300 !important;
	background-image: url(../images/bgMajor.png);
}

tr.CellStatus td.Minor
{
	background-color: #FFEBCD; 
	border-top: 2px solid #FF9900 !important;
	background-image: url(../images/bgMinor.png);
}

tr.CellStatus td.Warning
{
	background-color: #FFF5CD; 
	border-top: 2px solid #FFCC00 !important;
	background-image: url(../images/bgWarning.png);
}

tr.CellStatus td.Indeterminate
{
	background-color: #EBEBCD; 
	border-top: 2px solid #999000 !important;
	background-image: url(../images/bgIndeterminate.png);
}

tr.CellStatus td.Normal
{
	background-color: #D7E1CD; 
	border-top: 2px solid #336600 !important;
	background-image: url(../images/bgNormal.png);
}

tr.CellStatus td.Cleared
{
	background-color: #EEE; 
	border-top: 2px solid #999 !important;
	background-image: url(../images/bgCleared.png);
}

tr.CellStatus td.nobright
{
	background-image: none;
}

/* Pagination
---------------------------------------- */
.pagination {
        height: 1%; /* IE tweak (holly hack) */
        width: auto;
        text-align: right;
        margin-top: 5px;
        margin-bottom: 5px;
        font-size: 70%;        float: right;
}

.pagination span.page-sep {
        display: none;
}

li.pagination {
        margin-top: 0;
}

.pagination strong, .pagination b {
	font-weight: normal;
}

.pagination span strong {
        font-weight: normal;
        color: #FFF;
        background-color: #366903;
}

.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {
        font-weight: normal;
        text-decoration: none;
        color: #366903;
        line-height: 1.5em;
}

.pagination span a:hover {
        background-color: #366903;
        color: #FFF;
        text-decoration: none;
}

.pagination img {
        vertical-align: middle;
}
		</STYLE>
			<body>
				<h3>OpenNMS/RWS Inventory Report on Request Date <xsl:value-of select="rws-nbinventoryreport/reportDate"/></h3>
  				<table border="1" width="1000" bgcolor="#0000ff">
					<tr>
						<th align="left">
								Request By User:
								<xsl:value-of select="rws-nbinventoryreport/user"/> 
								on 
								<xsl:value-of select="rws-nbinventoryreport/reportRequestDate"/>
						</th>
					</tr>
					<tr>
						<th align="left">
								Inventory Match Regular Expression:
						<xsl:value-of select="rws-nbinventoryreport/theField"/></th>	
					</tr>
					<tr>
						<th align="left">
								Groups in repository:
						<xsl:value-of select="rws-nbinventoryreport/totalGroups"/></th>	
					</tr>
					<tr>
						<th align="left">
								Groups With Matching Inventory :
						<xsl:value-of select="rws-nbinventoryreport/groupsMatching"/></th>
					</tr>
					<tr>
						<th align="left">
								Groups without Nodes:
						<xsl:value-of select="rws-nbinventoryreport/groupWithoutNodes"/></th>
					</tr>
					<tr>
						<th align="left">
								Groups with Nodes without Inventory at all:
						<xsl:value-of select="rws-nbinventoryreport/groupsWithNodesWithoutinventoryAtAll"/></th>
					</tr>
					<tr>
						<th align="left">
								Groups with Nodes without Inventory at Report Date:
						<xsl:value-of select="rws-nbinventoryreport/groupsWithNodesWithoutinventoryAtReportDate"/></th>
					</tr>
				</table>
<p></p>
				<xsl:for-each select="rws-nbinventoryreport/groupSet">
  					<h3> Group:  <xsl:value-of select="groupSetName"/></h3>
			   	<table border="1" width="1000" bgcolor="#dddddd">
					<tr>
						<th align="left">
								Total number of Nodes:
						<xsl:value-of select="totalNodes"/></th>	
					</tr>
					<tr>
						<th align="left">
								Nodes With Matching Inventory :
						<xsl:value-of select="nodesMatching"/></th>
					</tr>
					<tr>
						<th align="left">
								Nodes without Inventory at all:
						<xsl:value-of select="nodesWithoutinventoryAtAll"/></th>
					</tr>
					<tr>
						<th align="left">
								Nodes without Inventory at request Date:
						<xsl:value-of select="nodesWithoutinventoryAtReportDate"/></th>
					</tr>
				</table>
					<xsl:for-each select="nbisinglenode">
					<h3>Device Name: <xsl:value-of select="devicename" /> </h3>
					<table border="1" width="1000">
						<tr>
							<th width="20%">Creation Date</th>
							<td>
								<xsl:value-of select="creationdate" />
							</td>
						</tr>
						<tr>
							<th width="20%">Current Status</th>
							<td>
								<xsl:value-of select="status" />
							</td>
						</tr>
							<th width="20%">Version</th>
							<td>
								<xsl:value-of select="version" />
							</td>
						<tr>
						</tr>						
					</table>
							<xsl:for-each select="inventoryElement2RP">
							<h3> Inventory Element: <xsl:value-of select="name" /></h3>
							<table border="1" width="1000">
								<xsl:for-each select="tupleRP">
									<tr>
										<th width="20%">
											<xsl:value-of select="name" />
										</th>
										<td>
											<xsl:value-of select="description" />
										</td>
									</tr>
								</xsl:for-each>
								
								<xsl:choose>
									<xsl:when test="inventoryMemoryRP/type">
										<tr>
											<th width="20%">Memory Type</th>
											<th>Size</th>
										</tr>
										<xsl:for-each select="inventoryMemoryRP">
											<tr>
												<th width="20%">
													<xsl:value-of select="type" />
												</th>
												<td>
													<xsl:value-of select="size" />
												</td>
											</tr>
										</xsl:for-each>
									</xsl:when>
								</xsl:choose>
								
								<xsl:choose>
									<xsl:when test="inventorySoftwareRP/type">
										<tr>
											<th width="20%">Software </th>
											<th>Type</th>
										</tr>
										<xsl:for-each select="inventorySoftwareRP">
											<tr>
												<th width="20%">
													<xsl:value-of select="type" />
												</th>
												<td>
													<xsl:value-of select="version" />
												</td>
											</tr>
										</xsl:for-each>
									</xsl:when>
								</xsl:choose>
						</table>
						</xsl:for-each>
					</xsl:for-each>
				</xsl:for-each>
				        <p><center>
        OpenNMS <a href="help/about.jsp">Copyright</a> 2002-2009
            <a href="http://www.opennms.com/">The OpenNMS Group, Inc.</a>
            OpenNMS is a registered trademark of
        <a href="http://www.opennms.com">The OpenNMS Group, Inc.</a>
          </center></p>
				
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
