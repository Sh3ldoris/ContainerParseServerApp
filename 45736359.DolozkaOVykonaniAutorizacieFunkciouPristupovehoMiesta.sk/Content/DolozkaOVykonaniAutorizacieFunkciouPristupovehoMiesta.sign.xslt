<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:egonp="http://schemas.gov.sk/form/45736359.DolozkaOVykonaniAutorizacieFunkciouPristupovehoMiesta.sk/4.0" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="egonp" version="1.0"><xsl:output doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" encoding="utf-8" indent="no" method="html" omit-xml-declaration="yes"/><xsl:template match="/"><html><head><meta charset="UTF-8"/><style>
					body {
						font-family: "Roboto", Arial;
						font-size: 13px;
					}
				
					h1 {
						font-size: 1.85em; 
						text-align: center; 
						font-weight: bold;
						margin-top: 1.5em;
						margin-bottom: 1.2em;
					}
				
					h2 {
						font-size: 1.55em;
						font-weight: bold;
						text-align: center;
						padding-top: 0.5em;
						padding-bottom: 0.5em;
						background-color: #dcddde;
						margin-top: 1.2em;
						margin-bottom: 0.8em;
					}
					
					label {
						vertical-align: top;
						display: inline-flex;
						display: -ms-inline-flexbox;
						margin-bottom: 0.4em;
						width: 100%;
					}
					
					label span:after {
						content: ":";
					}
					
					label span {
						background-color: #f4f4f4;
						display: inline-block;
						font-weight: bold;
						min-width: 15em;
						padding: 1.0em;
						text-align: right; 
						width: 40%;
					}
					
					label div {
						width: 60%;
						padding: 1.0em;
						text-align: left; 
						-ms-flex:1;
					}
					
					.col-short-group {
						display: flex;
						display: -ms-flexbox;
						flex-wrap: wrap;
						-ms-flex-wrap: wrap;
						margin-bottom: 0.4em;
						width: 100%;
					}
					
					.col-short-group label {
						width: 50%;
						margin-bottom: 0px;
					}
					
					@media (max-width: 970px) {
						.col-short-group label {
							width: 100%;
						}
					}
				</style></head><body><xsl:apply-templates/></body></html></xsl:template><xsl:template match="/egonp:AuthorizationClause"><h1>Doložka o vykonaní autorizácie funkciou informačného systému prístupového miesta</h1><h2>Informácie o autorizujúcej osobe</h2><xsl:if test="count(egonp:AuthorizingPerson/egonp:GivenName) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Meno</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:GivenName"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:AuthorizingPerson/egonp:FamilyName) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Priezvisko</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:FamilyName"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:AuthorizingPerson/egonp:FormattedName) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Formátované meno</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:FormattedName"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:AuthorizingPerson/egonp:PersonGUID) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Univerzálny identifikátor identity v eGov</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:PersonGUID"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:AuthorizingPerson/egonp:ID/egonp:IdentifierType) &gt; 0"><xsl:choose><xsl:when test="egonp:AuthorizingPerson/egonp:ID/egonp:IdentifierType/egonp:Codelist/*!=''"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Identifikátor osoby - typ</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:ID/egonp:IdentifierType/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:call-template></xsl:when><xsl:otherwise><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Identifikátor osoby - typ</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:ID/egonp:IdentifierType/egonp:NonCodelistData"/></xsl:call-template></xsl:otherwise></xsl:choose></xsl:if><xsl:if test="count(egonp:AuthorizingPerson/egonp:ID/egonp:IdentifierValue) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Identifikátor osoby - hodnota</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizingPerson/egonp:ID/egonp:IdentifierValue"/></xsl:call-template></xsl:if><h2>Informácie o spôsobe autentifikácie autorizujúcej osoby</h2><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceID) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Identifikator autentifikacneho prostriedku osoby</xsl:with-param><xsl:with-param name="value" select="egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceID"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceType) &gt; 0"><xsl:choose><xsl:when test="egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceType = '2'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Kód</xsl:with-param><xsl:with-param name="value" select="'eID'"/></xsl:call-template></xsl:when><xsl:when test="egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceType = '4'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Kód</xsl:with-param><xsl:with-param name="value" select="'Certifikát'"/></xsl:call-template></xsl:when><xsl:when test="egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceType = '9'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Kód</xsl:with-param><xsl:with-param name="value" select="'eIDAS'"/></xsl:call-template></xsl:when><xsl:when test="egonp:PersonAuthenticationInfo/egonp:PersonAuthResourceType = '10'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Kód</xsl:with-param><xsl:with-param name="value" select="'mID'"/></xsl:call-template></xsl:when></xsl:choose></xsl:if><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:PersonIDIssuer) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Krajina, ktorá vydala autentifikacny prostriedok</xsl:with-param><xsl:with-param name="value" select="egonp:PersonAuthenticationInfo/egonp:PersonIDIssuer"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:QAALevel) &gt; 0"><xsl:choose><xsl:when test="egonp:PersonAuthenticationInfo/egonp:QAALevel = '3'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Úroveň autentifikácie použitého autentifikačného prostriedku</xsl:with-param><xsl:with-param name="value" select="'substantial'"/></xsl:call-template></xsl:when><xsl:when test="egonp:PersonAuthenticationInfo/egonp:QAALevel = '4'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Úroveň autentifikácie použitého autentifikačného prostriedku</xsl:with-param><xsl:with-param name="value" select="'high'"/></xsl:call-template></xsl:when></xsl:choose></xsl:if><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt) &gt; 0"><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt/egonp:Mimetype) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Mimetype potvrdenia</xsl:with-param><xsl:with-param name="value" select="egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt/egonp:Mimetype"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt/egonp:Encoding) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Kódovanie potvrdenia</xsl:with-param><xsl:with-param name="value" select="egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt/egonp:Encoding"/></xsl:call-template></xsl:if><xsl:if test="count(egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt/egonp:Class) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Druh potvrdenia</xsl:with-param><xsl:with-param name="value" select="egonp:PersonAuthenticationInfo/egonp:AuthenticationReceipt/egonp:Class"/></xsl:call-template></xsl:if></xsl:if><h2>Informácie o spôsobe autorizácie</h2><xsl:if test="count(egonp:AuthorizationMethod) &gt; 0"><xsl:choose><xsl:when test="egonp:AuthorizationMethod = '1'"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Hodnota z čiselníka pre spôsob autorizácie klikom</xsl:with-param><xsl:with-param name="value" select="'autorizacia mobilom'"/></xsl:call-template></xsl:when></xsl:choose></xsl:if><xsl:if test="count(egonp:AuthorizationMethodDescription) &gt; 0"><xsl:call-template name="longOutputBlockBrNotEmpty"><xsl:with-param name="label">Popis autorizačnej metódy</xsl:with-param><xsl:with-param name="value" select="egonp:AuthorizationMethodDescription"/></xsl:call-template></xsl:if></xsl:template><xsl:template name="longOutputBlockBrNotEmpty"><xsl:param name="label"/><xsl:param name="value"/><xsl:if test="boolean($value) and $value != ''"><xsl:call-template name="longOutputBlockBr"><xsl:with-param name="label" select="normalize-space($label)"/><xsl:with-param name="value" select="$value"/></xsl:call-template></xsl:if></xsl:template><xsl:template name="longOutputBlockBr"><xsl:param name="label"/><xsl:param name="value"/><xsl:call-template name="outputBlockBr"><xsl:with-param name="label" select="normalize-space($label)"/><xsl:with-param name="value" select="$value"/><xsl:with-param name="class">output col-long</xsl:with-param></xsl:call-template></xsl:template><xsl:template name="outputBlockBr"><xsl:param name="label"/><xsl:param name="value"/><xsl:param name="class"/><xsl:element name="label"><span><xsl:value-of select="normalize-space($label)"/></span><div><xsl:call-template name="forceLineBreak"><xsl:with-param name="text" select="$value"/></xsl:call-template></div></xsl:element></xsl:template><xsl:template name="forceLineBreak"><xsl:param name="text" select="string(.)"/><xsl:choose><xsl:when test="contains($text, '&#10;')"><xsl:value-of select="substring-before($text, '&#10;')"/><br/><xsl:call-template name="forceLineBreak"><xsl:with-param name="text" select="substring-after($text, '&#10;')"/></xsl:call-template></xsl:when><xsl:otherwise><xsl:value-of select="$text"/></xsl:otherwise></xsl:choose></xsl:template></xsl:stylesheet>