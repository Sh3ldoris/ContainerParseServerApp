<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:egonp="http://schemas.gov.sk/form/DCOM_eDemokracia_ZiadostOVydanieHlasovaciehoPreukazuFO_sk/2.2" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="egonp" version="1.0"><xsl:output doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" encoding="utf-8" indent="no" method="html" omit-xml-declaration="yes"/><xsl:template match="/"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta content="IE=8" http-equiv="X-UA-Compatible"/><meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/><meta content="sk-SK, hu-HU" name="language"/><style type="text/css">
					
					/* FORM CSS */
					body {
						padding: 20px;
						margin: 0;
						font: normal 13px 'Arial'!important;
						color: #505050;
						background: #F0F0F0 repeat 0 0;
						line-height: 14px;
					}
					i {
						font-weight: normal !important;
					}
					.layoutMain {
						margin: 0 auto;
						width: 900px;
						max-width: 900px;
						padding: 18px 30px 18px 30px;
						border-radius: 5px;
						background-color: white;
						border: 10px solid rgba(255, 255, 255, 0.5);
						box-shadow: 0 0 10px #E0E0E0;
					}
					.layoutRow {
						margin-bottom: 0px;
					}
					.ui-widget-header {
						border-bottom-color: rgb(208, 208, 208) !important;
						border-bottom-style: solid !important;
						border-bottom-width: 1px !important;
						color: rgb(0, 0, 0);
						display: block;
						font-family: 'Arial'!important;
						font-size: 18px;
						font-stretch: normal;
						font-style: normal;
						font-variant: normal;
						font-weight: normal;
						margin-bottom: 5px;
						margin-left: 0px;
						margin-right: 0px;
						margin-top: 20px;
						padding-left: 0px;
						padding-right: 0px;
						padding-bottom: 5px;
						padding-top: 5px;
					}
					.headline {
						border-bottom-color: rgb(208, 208, 208) !important;
						border-bottom-style: solid !important;
						border-bottom-width: 1px !important;
						color: rgb(0, 0, 0);
						display: block;
						background-color: #DCDDDE;
						display: block;
						font-family: 'Arial'!important;
						font-size: 20px;
						font-stretch: normal;
						font-style: normal;
						font-variant: normal;
						font-weight: bold;
						margin-bottom: 14px;
						margin-left: 0;
						margin-right: 0;
						margin-top: 28px;
						vertical-align: middle;
						text-align: center;
						min-height: 30px;
						padding-bottom: 0px;
						padding-top: 8px;
					}
					.headercorrection {
						font-size: 20px;
						font-weight: bold;
						margin-left: 10px;
					}
					.headline .headercorrection {
						margin-left: 0;
						font-size: 20px;
					}
					
					.columns {
						border: none;
						margin: 0px;
						padding: 0px;
						width: 100%;
					}
					.column {
						border: none;
						/* float: left; */
						margin: 0px;
						padding: 0px;
						width: 100%;
					}
					.column-400 {
						border: none;
						float: left;
						margin: 0px;
						padding: 0px;
						width: 400px;
					}
					.column-450 {
						border: none;
						float: left;
						margin: 0px;
						padding: 0px;
						width: 450px;
					}
					.column-390 {
						border: none;
						float: left;
						margin: 0px;
						padding: 0px;
						width: 390px;
					}
					.column-295 {
						border: none;
						float: left;
						margin: 0px;
						padding: 0px;
						width: 295px;
					}
					.column-290 {
						border: none;
						float: left;
						margin: 0px;
						padding: 0px;
						width: 290px;
					}
					.cell {
						margin: 0;
						min-height: 1px;
					}
					.cell-47 {
						margin: 0;
						min-height: 46px;
					}
					.fieldLabel {
						box-sizing: border-box;
						color: black;
						display: inline-block;
						font-family: 'Arial'!important;
						font-size: 13px;
						font-style: normal;
						font-variant: normal;
						line-height: normal;
						font-weight: bold;
						padding-bottom: 7px;
						padding-right: 5px;
						padding-top: 7px;
						position: relative;
						text-align: right;
						width: 170px;
						height: auto;
						background-color: #F4F4F4;
						float: none;
						vertical-align: top;
						margin: 0px 18px 0px 0px;
					}
					.fieldContent {
						font-size: 13px;
						padding-top: 8px;
						float: none;
						overflow: hidden;
						padding-bottom: 7px;
						padding-top: 7px;
						vertical-align: bottom;
						display: inline-block;
					}
					.wordwrap {
						vertical-align: bottom;
						display: inline-block;
						width: 190px;
					}
					.wordwrap-712 {
						vertical-align: bottom;
						display: inline-block;
						width: 712px;
					}
					.clear {
						clear: both;
						height: 0px
					}
					
					.kratkyTextBox90px INPUT {
						width: 90px;
					}
					.kratkyTextBox90px TEXTAREA {
						width: 90px;
						height: 16px;
					}
					.kratkyTextBox85px DIV {
						width: 85px;
					}
					.kratkyTextBox85px DIV {
						width: 85px;
						/* min-height: 16px; */
					}
					.kratkyTextBox90px DIV {
						width: 90px;
					}
					.kratkyTextBox90px DIV {
						width: 90px;
						min-height: 16px;
					}
					.textAlignLeft span {
						text-align: left !important;
					}
					
					.fieldLabel-760 {
						box-sizing: border-box;
						color: black;
						display: inline-block;
						font-family: 'Arial'!important;
						font-size: 13px;
						font-style: normal;
						font-variant: normal;
						line-height: normal;
						font-weight: bold;
						padding-bottom: 7px;
						padding-left: 5px;
						padding-top: 7px;
						position: relative;
						text-align: right;
						width: 760px;
						background-color: #F4F4F4;
						float: none;
						vertical-align: top;
						margin: 0px 18px 0px 0px;
					}
					p {
						margin: 0;
						padding: 0;
					}
					
					.fieldLabel-900 {
						box-sizing: border-box;
						color: black;
						display: inline-block;
						font-family: 'Arial'!important;
						font-size: 13px;
						font-style: normal;
						font-variant: normal;
						line-height: normal;
						font-weight: bold;
						padding-bottom: 7px;
						padding-left: 5px;
						padding-top: 7px;
						position: relative;
						text-align: right;
						width: 900px;
						background-color: #F4F4F4;
						float: none;
						vertical-align: top;
						margin: 0px 18px 0px 0px;
					}
					.fieldLabel-space-10 {
						padding-bottom: 10px;
					}
					
					/* HEADER CSS */
					.header {
						border: 1px solid #C6C5C5;
						font-weight: bold;
						min-height: 112px;
						margin-bottom: 37px;
						color: black;
						padding-left: 210px;
						overflow: hidden;
					}
					.logo {
						width: 100px;
						height: 100px;
						padding-right: 10px;
						float: left;
						padding-top: 6px;
					}
					.header_text {
						display: initial;
						text-align: -webkit-auto;
						line-height: 25px;
						overflow: hidden;
						min-height: 112px;
					}
					.municipalityHeader {
						font-size: 17px;
					}
					.municipalityHeaderAddress {
						font-weight: normal;
						font-size: 13px;
					}
					.municipalityHeaderAddress_inline {
						font-weight: normal;
						font-size: 13px;
						display: inline-block;
					}
					
					/* FORM TITLE CSS */
					.formular-header {
						background-color: white;
						font-family: 'Arial'!important;
						color: rgb(0, 0, 0);
						min-height: 53px;
						font-size: 24px;
						margin-bottom: 27px;
						margin-left: 0px;
						margin-right: 0px;
						margin-top: 0px;
						padding-left: 0px;
						padding-right: 0px;
						padding-top: 0px;
						text-align: center;
					}
					.formular-name {
						color: rgb(0, 0, 0);
						display: inline;
						font-family: 'Arial'!important;
						font-size: 24px;
						font-style: normal;
						font-variant: normal;
						font-weight: bold;
						height: auto;
						line-height: normal;
						text-align: center;
						width: auto;
					}
					
				</style></head><body><xsl:apply-templates/></body></html></xsl:template><xsl:template name="singleLineContact"><xsl:if test="egonp:PersonData/egonp:TelephoneAddress/egonp:Number!=''">
			Telefón:
			<xsl:for-each select="egonp:PersonData/egonp:TelephoneAddress/egonp:Number/egonp:FormattedNumber"><xsl:call-template name="formatTelephoneNumber"/><xsl:text>, </xsl:text></xsl:for-each></xsl:if></xsl:template><xsl:template name="singleLineContactMail"><xsl:if test="egonp:PersonData/egonp:InternetAddress/egonp:Address!=''"><xsl:for-each select="egonp:PersonData/egonp:InternetAddress/egonp:Address[contains(text(),'mailto')]">
				mail:
				<xsl:call-template name="formatAnyUri"><xsl:with-param name="anyUri" select="."/></xsl:call-template><xsl:if test="ancestor::egonp:PersonData[1]/egonp:InternetAddress/egonp:Address[not(contains(text(),'mailto'))]!=''"><xsl:text>, </xsl:text></xsl:if></xsl:for-each></xsl:if></xsl:template><xsl:template name="singleLineContactWeb"><xsl:if test="egonp:PersonData/egonp:InternetAddress/egonp:Address!=''"><xsl:for-each select="egonp:PersonData/egonp:InternetAddress/egonp:Address[not(contains(text(),'mailto'))]">
					web:
					<xsl:call-template name="formatAnyUri"><xsl:with-param name="anyUri" select="."/></xsl:call-template><xsl:text> </xsl:text></xsl:for-each></xsl:if></xsl:template><xsl:template name="singleLineAddress"><xsl:call-template name="firstLineAddress"/><xsl:text>, </xsl:text><xsl:call-template name="secondLineAddress"/></xsl:template><xsl:template name="singleLineAddressWithCountry"><xsl:call-template name="firstLineAddress"/><xsl:text>, </xsl:text><xsl:call-template name="secondLineAddress"/><xsl:text>, </xsl:text><xsl:call-template name="thirdLineAddress"/></xsl:template><xsl:template name="firstLineAddress"><xsl:choose><xsl:when test="egonp:StreetName!=''"><xsl:value-of select="egonp:StreetName"/><xsl:text> </xsl:text></xsl:when><xsl:otherwise><xsl:choose><xsl:when test="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName !=''"><xsl:value-of select="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/><xsl:text> </xsl:text></xsl:when><xsl:when test="egonp:Municipality/egonp:Codelist/egonp:NonCodelistData !=''"><xsl:value-of select="egonp:Municipality/egonp:NonCodelistData"/><xsl:text> </xsl:text></xsl:when></xsl:choose></xsl:otherwise></xsl:choose><xsl:if test="egonp:PropertyRegistrationNumber!=''"><xsl:value-of select="egonp:PropertyRegistrationNumber"/></xsl:if><xsl:if test="egonp:BuildingNumber!='' and egonp:PropertyRegistrationNumber!=''"><xsl:text>/</xsl:text></xsl:if><xsl:if test="egonp:BuildingNumber!=''"><xsl:value-of select="egonp:BuildingNumber"/></xsl:if><xsl:if test="egonp:Unit!=''"><xsl:text> </xsl:text><xsl:value-of select="egonp:Unit"/></xsl:if></xsl:template><xsl:template name="secondLineAddress"><xsl:for-each select="egonp:DeliveryAddress/egonp:PostalCode"><xsl:call-template name="formatPsc"/></xsl:for-each><xsl:text> </xsl:text><xsl:choose><xsl:when test="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName !=''"><xsl:value-of select="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:when><xsl:when test="egonp:Municipality/egonp:NonCodelistData !=''"><xsl:value-of select="egonp:Municipality/egonp:NonCodelistData"/></xsl:when></xsl:choose></xsl:template><xsl:template name="thirdLineAddress"><xsl:choose><xsl:when test="egonp:County/egonp:Codelist/egonp:CodelistItem/egonp:ItemName !=''"><xsl:text>Okres </xsl:text><xsl:value-of select="egonp:County/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/><xsl:text>, </xsl:text></xsl:when><xsl:when test="egonp:County/egonp:Codelist/egonp:NonCodelistData !=''"><xsl:text>Okres </xsl:text><xsl:value-of select="egonp:County/egonp:NonCodelistData"/><xsl:text>, </xsl:text></xsl:when></xsl:choose><xsl:if test="egonp:Area"><xsl:value-of select="egonp:Area"/><xsl:text>, </xsl:text></xsl:if></xsl:template><xsl:template name="formatTelephoneNumber"><xsl:for-each select="."><xsl:choose><xsl:when test="substring(.,1,4) = '+421'"><xsl:value-of select="substring(.,1,4)"/><xsl:text> </xsl:text><xsl:choose><xsl:when test="substring(.,5,1) = '2'"><xsl:value-of select="substring(.,5,1)"/><xsl:text> </xsl:text><xsl:value-of select="substring(.,6,4)"/><xsl:text> </xsl:text><xsl:value-of select="substring(.,10,4)"/></xsl:when><xsl:when test="substring(.,5,1) &gt; '2' and substring(.,5,1) &lt; '6'"><xsl:value-of select="substring(.,5,2)"/><xsl:text> </xsl:text><xsl:value-of select="substring(.,7,3)"/><xsl:text> </xsl:text><xsl:value-of select="substring(.,10,4)"/></xsl:when><xsl:when test="substring(.,5,1) = '9'"><xsl:value-of select="substring(.,5,3)"/><xsl:text> </xsl:text><xsl:value-of select="substring(.,8,3)"/><xsl:text> </xsl:text><xsl:value-of select="substring(.,11,3)"/></xsl:when><xsl:otherwise><xsl:value-of select="substring(.,5)"/></xsl:otherwise></xsl:choose></xsl:when><xsl:otherwise><xsl:value-of select="."/></xsl:otherwise></xsl:choose></xsl:for-each></xsl:template><xsl:template name="formatTimeTrimMinutes"><xsl:param name="time"/><xsl:variable name="timeString" select="string($time)"/><xsl:if test="$timeString != ''"><xsl:value-of select="substring($timeString, 1, 5)"/></xsl:if></xsl:template><xsl:template name="formatAnyUri"><xsl:param name="anyUri"/><xsl:variable name="anyUriString" select="string($anyUri)"/><xsl:variable name="anyUriSubString"><xsl:choose><xsl:when test="$anyUriString != '' and contains($anyUriString, 'mailto:') and contains($anyUriString, '@')"><xsl:value-of select="substring($anyUriString, 8, string-length($anyUriString))"/></xsl:when><xsl:when test="$anyUriString != '' and contains($anyUriString, 'http://')"><xsl:value-of select="substring($anyUriString, 8, string-length($anyUriString))"/></xsl:when><xsl:when test="$anyUriString != '' and contains($anyUriString, 'https://')"><xsl:value-of select="substring($anyUriString, 9, string-length($anyUriString))"/></xsl:when><xsl:otherwise><xsl:value-of select="$anyUriString"/></xsl:otherwise></xsl:choose></xsl:variable><xsl:value-of select="$anyUriSubString"/></xsl:template><xsl:template name="string-replace-all"><xsl:param name="text"/><xsl:param name="replace"/><xsl:param name="by"/><xsl:choose><xsl:when test="contains($text, $replace)"><xsl:value-of select="substring-before($text,$replace)"/><xsl:value-of select="$by"/><xsl:call-template name="string-replace-all"><xsl:with-param name="text" select="substring-after($text,$replace)"/><xsl:with-param name="replace" select="$replace"/><xsl:with-param name="by" select="$by"/></xsl:call-template></xsl:when><xsl:otherwise><xsl:value-of select="$text"/></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="formatToSkDate"><xsl:param name="date"/><xsl:variable name="dateString" select="string($date)"/><xsl:choose><xsl:when test="$dateString != '' and string-length($dateString)=10 and string(number(substring($dateString, 1, 4))) != 'NaN'"><xsl:value-of select="concat(substring($dateString, 9, 2), '.', substring($dateString, 6, 2), '.', substring($dateString, 1, 4))"/></xsl:when><xsl:otherwise><xsl:value-of select="$dateString"/></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="formatToSkDateTime"><xsl:param name="dateTime"/><xsl:variable name="dateSubstring" select="substring($dateTime, 1, 10)"/><xsl:variable name="timeSubstring" select="substring($dateTime, 12, 8)"/><xsl:variable name="dateString"><xsl:choose><xsl:when test="$dateSubstring != '' and string-length($dateSubstring)=10 and string(number(substring($dateSubstring, 1, 4))) != 'NaN'"><xsl:value-of select="concat(substring($dateSubstring, 9, 2), '.', substring($dateSubstring, 6, 2), '.', substring($dateSubstring, 1, 4))"/></xsl:when><xsl:otherwise><xsl:value-of select="$dateSubstring"/></xsl:otherwise></xsl:choose></xsl:variable><xsl:variable name="timeString"><xsl:if test="$timeSubstring != ''"><xsl:value-of select="substring($timeSubstring, 1, 5)"/></xsl:if></xsl:variable><xsl:value-of select="concat($dateString,' ',$timeString)"/></xsl:template><xsl:template name="booleanToSkString"><xsl:param name="boolValue"/><xsl:variable name="boolValueString" select="string($boolValue)"/><xsl:choose><xsl:when test="$boolValueString = 'true'">
				Áno
			</xsl:when><xsl:when test="$boolValueString = '1'">
				Áno
			</xsl:when><xsl:when test="$boolValueString = 'false'">
				Nie
			</xsl:when><xsl:when test="$boolValueString = '0'">
				Nie
			</xsl:when><xsl:otherwise><xsl:value-of select="$boolValueString"/></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="formatPsc"><xsl:choose><xsl:when test="string(number(.)) != 'NaN' and . != '' and string-length(.) = 5"><xsl:value-of select="concat(substring(., 1, 3), ' ', substring(., 4, 5))"/></xsl:when><xsl:otherwise><xsl:value-of select="."/></xsl:otherwise></xsl:choose></xsl:template><xsl:decimal-format decimal-separator="," grouping-separator=" " name="european"/><xsl:template name="MunicipalityHeader"><xsl:param name="formName"/><div xmlns="http://www.w3.org/1999/xhtml" class="header"><xsl:if test="egonp:CoatOfArms !=''"><xsl:variable name="imgsrc" select="egonp:CoatOfArms"/><img class="logo"><xsl:attribute name="src"><xsl:value-of select="concat('data:image/png;base64,', $imgsrc)"/></xsl:attribute></img></xsl:if><div class="header_text"><div class="municipalityHeader"><xsl:choose><xsl:when test="egonp:IsVillage='true'">
							Obec
							<xsl:text> </xsl:text></xsl:when><xsl:otherwise>
							Mesto
							<xsl:text> </xsl:text></xsl:otherwise></xsl:choose><xsl:choose><xsl:when test="egonp:PersonData/egonp:PhysicalAddress/egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName !=''"><xsl:value-of select="egonp:PersonData/egonp:PhysicalAddress/egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:when><xsl:when test="egonp:PersonData/egonp:PhysicalAddress/egonp:Municipality/egonp:NonCodelistData !=''"><xsl:value-of select="egonp:PersonData/egonp:PhysicalAddress/egonp:Municipality/egonp:NonCodelistData"/></xsl:when></xsl:choose></div><div class="municipalityHeaderAddress"><xsl:if test="egonp:NameOfOffice!=''"><xsl:choose><xsl:when test="egonp:NameOfOffice/egonp:Codelist/egonp:CodelistItem/egonp:ItemName !=''"><xsl:value-of select="egonp:NameOfOffice/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/><xsl:text>, </xsl:text></xsl:when><xsl:when test="egonp:NameOfOffice/egonp:NonCodelistData !=''"><xsl:value-of select="egonp:NameOfOffice/egonp:NonCodelistData"/><xsl:text>, </xsl:text></xsl:when></xsl:choose></xsl:if><xsl:for-each select="egonp:PersonData/egonp:PhysicalAddress"><xsl:call-template name="singleLineAddress"/></xsl:for-each></div><xsl:if test="egonp:PersonData/egonp:TelephoneAddress/*[text()] or egonp:PersonData/egonp:InternetAddress/*[text()]"><div class="municipalityHeaderAddress_inline"><xsl:call-template name="singleLineContact"/></div></xsl:if><xsl:if test="egonp:PersonData/egonp:InternetAddress/*[text()]"><div class="municipalityHeaderAddress_inline"><xsl:call-template name="singleLineContactMail"/></div></xsl:if><xsl:if test="egonp:PersonData/egonp:InternetAddress/*[text()]"><div class="municipalityHeaderAddress_inline"><xsl:call-template name="singleLineContactWeb"/></div></xsl:if></div></div><div xmlns="http://www.w3.org/1999/xhtml" class="formular-header"><div class="formular-name"><xsl:value-of select="$formName"/></div></div></xsl:template><xsl:template name="PersonDataPPID"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column"><div class="cell"><xsl:if test="egonp:PhysicalPerson/*[normalize-space()]"><xsl:for-each select="egonp:PhysicalPerson"><xsl:call-template name="PhysicalPerson"><xsl:with-param name="PhysicalPersonName">Osobné údaje</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if><xsl:if test="egonp:ID/*[normalize-space()]"><xsl:for-each select="egonp:ID"><xsl:call-template name="IDs"/></xsl:for-each></xsl:if><div class="clear"> </div></div><div class="cell"><xsl:if test="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='100001']]/*[normalize-space()]"><xsl:if test="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='100001']]"><xsl:for-each select="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='100001']]"><xsl:call-template name="PhysicalAddress"><xsl:with-param name="AddressName">Adresa trvalého pobytu</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if></xsl:if><xsl:if test="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='200001']]/*[normalize-space()]"><xsl:if test="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='200001']]"><xsl:for-each select="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='200001']]"><xsl:call-template name="PhysicalAddress"><xsl:with-param name="AddressName">Adresa pre doručenie</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if></xsl:if><xsl:if test="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='100002']]/*[normalize-space()]"><xsl:if test="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='100002']]"><xsl:for-each select="egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='100002']]"><xsl:call-template name="PhysicalAddress"><xsl:with-param name="AddressName">Adresa prechodného pobytu</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if></xsl:if><div class="clear"> </div></div><div class="cell"><xsl:if test="egonp:InternetAddress/*[normalize-space()] or egonp:TelephoneAddress/*[normalize-space()]"><xsl:if test="egonp:InternetAddress or egonp:TelephoneAddress"><xsl:call-template name="Contact"><xsl:with-param name="ContactName">Kontaktné informácie</xsl:with-param></xsl:call-template></xsl:if></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="PhysicalPerson"><xsl:param name="PhysicalPersonName"/><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="ui-widget-header"><div class="headercorrection"><xsl:value-of select="$PhysicalPersonName"/></div></div><div class="columns"><div class="column"><div class="cell"><xsl:if test="egonp:PersonName/*[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:PersonName)"><xsl:for-each select="egonp:PersonName"><xsl:call-template name="Affix"/></xsl:for-each></xsl:when><xsl:otherwise><xsl:for-each select="egonp:PersonName"><xsl:call-template name="Affix"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div><div class="cell"><xsl:if test="egonp:PersonName/egonp:GivenName[normalize-space()] or egonp:PersonName/egonp:FamilyName[normalize-space()]"><xsl:for-each select="egonp:PersonName"><xsl:call-template name="PersonName"/></xsl:for-each></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="Affix"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column-450"><div class="cell"><xsl:if test="egonp:Affix[@position='prefix']/*[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:Affix[@position='prefix'])"><xsl:call-template name="Prefixes"/></xsl:when><xsl:otherwise><xsl:for-each select="egonp:Affix[@position='prefix']"><xsl:call-template name="Prefixes"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div></div><div class="column-390"><div class="cell"><xsl:if test="egonp:Affix[@position='postfix']/*[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:Affix[@position='postfix'])"><xsl:call-template name="Postfixes"/></xsl:when><xsl:otherwise><xsl:for-each select="egonp:Affix[@position='postfix']"><xsl:call-template name="Postfixes"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="Prefixes"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column"><xsl:if test="./egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="Prefix"/><div class="clear"> </div></div></xsl:if><xsl:if test="./egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="PrefixNonCodeList"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="Prefix"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Titul pred menom:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='Affix'"><xsl:if test="./egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="./egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="PrefixNonCodeList"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Titul pred menom:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='Affix'"><xsl:if test="./egonp:NonCodelistData"><xsl:value-of select="./egonp:NonCodelistData"/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="Postfixes"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column"><xsl:if test="./egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="Postfix"/><div class="clear"> </div></div></xsl:if><xsl:if test="./egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="PostfixNonCodeList"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="Postfix"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Titul za menom:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='Affix'"><xsl:if test="./egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="./egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="PostfixNonCodeList"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Titul za menom:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='Affix'"><xsl:if test="./egonp:NonCodelistData"><xsl:value-of select="./egonp:NonCodelistData"/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="PersonName"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column-450"><div class="cell"><xsl:if test="egonp:GivenName[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:GivenName)"><xsl:call-template name="GivenNames"/></xsl:when><xsl:otherwise><xsl:for-each select="egonp:GivenName"><xsl:call-template name="GivenNames"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div></div><div class="column-390"><div class="cell"><xsl:if test="egonp:FamilyName[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:FamilyName)"><xsl:call-template name="FamilyNames"/></xsl:when><xsl:otherwise><xsl:for-each select="egonp:FamilyName"><xsl:call-template name="FamilyNames"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="GivenNames"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column"><xsl:if test="./text()"><div class="cell"><xsl:call-template name="GivenName"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="GivenName"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Meno:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='GivenName'"><xsl:if test="."><xsl:value-of select="."/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="FamilyNames"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column"><xsl:if test="./text()"><div class="cell"><xsl:call-template name="FamilyName"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="FamilyName"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Priezvisko:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='FamilyName'"><xsl:if test="."><xsl:value-of select="."/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="PhysicalAddress"><xsl:param name="AddressName"/><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="ui-widget-header"><div class="headercorrection"><xsl:value-of select="$AddressName"/></div></div><div class="columns"><div class="column-450"><xsl:if test="egonp:StreetName/text()"><div class="cell"><xsl:call-template name="StreetName"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:PropertyRegistrationNumber/text()"><div class="cell"><xsl:call-template name="PropertyRegistrationNumber"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:BuildingUnit/text()"><div class="cell"><xsl:call-template name="BuildingUnit"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:DeliveryAddress/egonp:PostalCode/text()"><div class="cell"><xsl:call-template name="DeliveryAddress"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:County/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="County"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:County/egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="CountyNonCodelistData"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:Country/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="Country"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:Country/egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="CountryNonCodelistData"/><div class="clear"> </div></div></xsl:if></div><div class="column-390"><div class="cell"><xsl:call-template name="nbsp"/><div class="clear"> </div></div><xsl:if test="egonp:BuildingNumber/text()"><div class="cell"><xsl:call-template name="BuildingNumber"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:District/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="District"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:District/egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="DistrictNonCodelistData"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="Municipality"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:Municipality/egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="MunicipalityNonCodelistData"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:Region/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="Region"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:Region/egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="RegionNonCodelistData"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="StreetName"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Ulica:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:StreetName"><xsl:value-of select="egonp:StreetName"/></xsl:if></div></div></xsl:template><xsl:template name="PropertyRegistrationNumber"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Súpisné číslo:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:PropertyRegistrationNumber"><xsl:value-of select="format-number(egonp:PropertyRegistrationNumber,'# ##0', 'european')"/></xsl:if></div></div></xsl:template><xsl:template name="BuildingUnit"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Byt / Časť budovy:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:BuildingUnit"><xsl:value-of select="egonp:BuildingUnit"/></xsl:if></div></div></xsl:template><xsl:template name="DeliveryAddress"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>PSČ:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:DeliveryAddress/egonp:PostalCode"><xsl:for-each select="egonp:DeliveryAddress/egonp:PostalCode"><xsl:call-template name="formatPsc"/></xsl:for-each></xsl:if></div></div></xsl:template><xsl:template name="County"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Okres:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:County/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="egonp:County/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></div></div></xsl:template><xsl:template name="CountyNonCodelistData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Okres:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:County/egonp:NonCodelistData"><xsl:value-of select="egonp:County/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="Country"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Štát:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Country/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="egonp:Country/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></div></div></xsl:template><xsl:template name="CountryNonCodelistData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Štát:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Country/egonp:NonCodelistData"><xsl:value-of select="egonp:Country/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="nbsp"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>  </xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"/></div></xsl:template><xsl:template name="BuildingNumber"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Orientačné číslo:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:BuildingNumber"><xsl:value-of select="egonp:BuildingNumber"/></xsl:if></div></div></xsl:template><xsl:template name="District"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Časť obce:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:District/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="egonp:District/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></div></div></xsl:template><xsl:template name="DistrictNonCodelistData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Časť obce:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:District/egonp:NonCodelistData"><xsl:value-of select="egonp:District/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="Municipality"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Obec:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="egonp:Municipality/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></div></div></xsl:template><xsl:template name="MunicipalityNonCodelistData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Obec:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Municipality/egonp:NonCodelistData"><xsl:value-of select="egonp:Municipality/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="Region"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Kraj:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Region/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="egonp:Region/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></div></div></xsl:template><xsl:template name="RegionNonCodelistData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Kraj:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Region/egonp:NonCodelistData"><xsl:value-of select="egonp:Region/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="Contact"><xsl:param name="ContactName"/><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="ui-widget-header"><div class="headercorrection"><xsl:value-of select="$ContactName"/></div></div><div class="columns"><div class="column"><div class="cell"><xsl:if test="egonp:InternetAddress/*[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:InternetAddress)"><xsl:call-template name="InternetAddress"/></xsl:when><xsl:otherwise><xsl:for-each select="egonp:InternetAddress"><xsl:call-template name="InternetAddress"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div><div class="cell"><xsl:if test="egonp:TelephoneAddress/*[normalize-space()]"><xsl:choose><xsl:when test="not(egonp:TelephoneAddress)"><xsl:call-template name="TelephoneAddress"/></xsl:when><xsl:otherwise><xsl:for-each select="egonp:TelephoneAddress"><xsl:call-template name="TelephoneAddress"/></xsl:for-each></xsl:otherwise></xsl:choose></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="InternetAddress"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column"><xsl:if test="egonp:Address[contains(.,'@')]/text()"><div class="cell"><xsl:call-template name="Address"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="Address"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>E-mailová adresa:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="egonp:Address[contains(.,'@')]"><xsl:call-template name="formatAnyUri"><xsl:with-param name="anyUri" select="egonp:Address[contains(.,'@')]"/></xsl:call-template></xsl:if></div></div></xsl:template><xsl:template name="TelephoneAddress"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="columns"><div class="column-450"><xsl:if test="./egonp:Number/egonp:FormattedNumber/text()"><div class="cell"><xsl:call-template name="Number"/><div class="clear"> </div></div></xsl:if></div><div class="column-390"><xsl:if test="./egonp:TelephoneType/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell"><xsl:call-template name="TelephoneType"/><div class="clear"> </div></div></xsl:if><xsl:if test="./egonp:TelephoneType/egonp:NonCodelistData/text()"><div class="cell"><xsl:call-template name="TelephoneTypeNonCodelistData"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="Number"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Telefónne číslo:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='TelephoneAddress'"><xsl:if test="./egonp:Number/egonp:FormattedNumber"><xsl:for-each select="./egonp:Number/egonp:FormattedNumber"><xsl:call-template name="formatTelephoneNumber"/></xsl:for-each></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="TelephoneType"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Typ telefónneho čísla:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='TelephoneAddress'"><xsl:if test="./egonp:TelephoneType/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="./egonp:TelephoneType/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="TelephoneTypeNonCodelistData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel"><xsl:text>Typ telefónneho čísla:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><div class="wordwrap"><xsl:if test="local-name()='TelephoneAddress'"><xsl:if test="./egonp:TelephoneType/egonp:NonCodelistData"><xsl:value-of select="./egonp:TelephoneType/egonp:NonCodelistData"/></xsl:if></xsl:if></div></div></xsl:template><xsl:template name="IDs"><div xmlns="http://www.w3.org/1999/xhtml" class="cell"><span class="fieldLabel"><xsl:if test="./egonp:IdentifierType/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="./egonp:IdentifierType/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if><xsl:if test="./egonp:IdentifierType/egonp:NonCodelistData"><xsl:value-of select="./egonp:IdentifierType/egonp:NonCodelistData"/></xsl:if><xsl:text>:</xsl:text></span><div class="fieldContent"><div class="wordwrap"><xsl:if test="./egonp:IdentifierValue"><xsl:value-of select="./egonp:IdentifierValue"/></xsl:if></div></div></div></xsl:template><xsl:template name="GDPR"><div xmlns="http://www.w3.org/1999/xhtml" class="layoutRow"><div class="ui-widget-header headline"><div class="headercorrection">Ochrana osobných údajov</div></div><div class="columns"><div class="column"><xsl:if test="egonp:InformationProtectionPersonalData/text()"><div class="cell"><xsl:call-template name="InformationProtectionPersonalData"/><div class="clear"> </div></div></xsl:if></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="InformationProtectionPersonalData"><span xmlns="http://www.w3.org/1999/xhtml" class="fieldLabel-760"><xsl:text>Bol/-a som informovaný/-á v súlade s článkom 13 Nariadenia EP a Rady (EÚ) č. 2016/679 o ochrane fyzických osôb pri spracúvaní osobných údajov a o voľnom pohybe takýchto údajov.:</xsl:text></span><div xmlns="http://www.w3.org/1999/xhtml" class="fieldContent"><xsl:if test="egonp:InformationProtectionPersonalData"><xsl:call-template name="booleanToSkString"><xsl:with-param name="boolValue" select="egonp:InformationProtectionPersonalData"/></xsl:call-template></xsl:if></div></xsl:template><xsl:template match="/egonp:RequestForVotingCardPP"><div class="layoutMain"><xsl:if test="egonp:MunicipalityHeader/*[normalize-space()]"><xsl:for-each select="egonp:MunicipalityHeader"><xsl:call-template name="MunicipalityHeader"><xsl:with-param name="formName">Žiadosť o vydanie hlasovacieho preukazu (FO)</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if><xsl:if test="egonp:Applicant/*[normalize-space()]"><xsl:for-each select="egonp:Applicant"><xsl:call-template name="Applicant"/></xsl:for-each></xsl:if><xsl:if test="egonp:VotingCard/*[normalize-space()]"><xsl:for-each select="egonp:VotingCard"><xsl:call-template name="VotingCard"/></xsl:for-each></xsl:if><xsl:if test="egonp:GDPR/*[normalize-space()]"><xsl:for-each select="egonp:GDPR"><xsl:call-template name="GDPR"/></xsl:for-each></xsl:if></div></xsl:template><xsl:template name="Applicant"><div class="layoutRow"><div class="ui-widget-header headline"><div class="headercorrection">Žiadateľ</div></div><div class="columns"><div class="column"><div class="cell"><xsl:if test="egonp:PersonData/*[normalize-space()]"><xsl:for-each select="egonp:PersonData"><xsl:call-template name="PersonDataPPID"/></xsl:for-each></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="VotingCard"><div class="layoutRow "><div class="caption ui-widget-header headline"><div class="headercorrection">Žiadosť o vydanie hlasovacieho preukazu na voľby / referendum</div></div><div class="columns"><div class="column"><xsl:if test="egonp:ElectionReferendum/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell sirokyComboBox617px"><xsl:call-template name="ElectionReferendumCodelist"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:ElectionReferendum/egonp:NonCodelistData/text()"><div class="cell sirokyTextBox617px"><xsl:call-template name="ElectionReferendumNonCodeList"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:VotingCardDelivery/egonp:Codelist/egonp:CodelistItem/egonp:ItemCode/text()"><div class="cell sirokyComboBox617px"><xsl:call-template name="VotingCardDeliveryCodelist"/><div class="clear"> </div></div></xsl:if><xsl:if test="egonp:VotingCardDelivery/egonp:NonCodelistData/text()"><div class="cell sirokyTextBox617px"><xsl:call-template name="VotingCardDeliveryNonCodeList"/><div class="clear"> </div></div></xsl:if><div class="cell"><xsl:if test="egonp:DeliveryAddress/*[normalize-space()]"><xsl:if test="egonp:DeliveryAddress"><xsl:call-template name="AddressItem"/></xsl:if></xsl:if><div class="clear"> </div></div><div class="cell"><xsl:if test="egonp:DelegatedPersonForPickup/*[normalize-space()]"><xsl:if test="egonp:DelegatedPersonForPickup"><xsl:call-template name="DelegatedPersonForPickup"/></xsl:if></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="ElectionReferendumCodelist"><span class="fieldLabel"><xsl:text>Voľby / referendum:</xsl:text></span><div class="fieldContent"><div class="wordwrap-712"><xsl:if test="egonp:ElectionReferendum/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"><xsl:value-of select="egonp:ElectionReferendum/egonp:Codelist/egonp:CodelistItem/egonp:ItemName"/></xsl:if></div></div></xsl:template><xsl:template name="ElectionReferendumNonCodeList"><span class="fieldLabel"><xsl:text>Voľby / referendum:</xsl:text></span><div class="fieldContent"><div class="wordwrap-712"><xsl:if test="egonp:ElectionReferendum/egonp:NonCodelistData"><xsl:value-of select="egonp:ElectionReferendum/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="VotingCardDeliveryCodelist"><span class="fieldLabel"><xsl:text>Spôsob prevzatia:</xsl:text></span><div class="fieldContent"><div class="wordwrap-712"><xsl:if test="egonp:VotingCardDelivery/egonp:Codelist/egonp:CodelistItem/egonp:ItemName[@Language='sk']"><xsl:value-of select="egonp:VotingCardDelivery/egonp:Codelist/egonp:CodelistItem/egonp:ItemName[@Language='sk']"/></xsl:if></div></div></xsl:template><xsl:template name="VotingCardDeliveryNonCodeList"><span class="fieldLabel"><xsl:text>Spôsob prevzatia:</xsl:text></span><div class="fieldContent"><div class="wordwrap-712"><xsl:if test="egonp:VotingCardDelivery/egonp:NonCodelistData"><xsl:value-of select="egonp:VotingCardDelivery/egonp:NonCodelistData"/></xsl:if></div></div></xsl:template><xsl:template name="AddressItem"><div class="layoutRow"><div class="columns"><div class="column"><div class="cell"><xsl:if test="egonp:DeliveryAddress/egonp:PersonData/*[normalize-space()]"><xsl:if test="egonp:DeliveryAddress/egonp:PersonData/egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='200001']]/*[normalize-space()]"><xsl:if test="egonp:DeliveryAddress/egonp:PersonData/egonp:PhysicalAddress[egonp:AddressType/egonp:AddressClass/egonp:Codelist/egonp:CodelistItem[egonp:ItemCode='200001']]"><xsl:for-each select="egonp:DeliveryAddress/egonp:PersonData/egonp:PhysicalAddress"><xsl:call-template name="PhysicalAddress"><xsl:with-param name="AddressName">Doručovacia adresa</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if></xsl:if></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template><xsl:template name="DelegatedPersonForPickup"><div class="layoutRow"><div class="columns"><div class="column"><div class="cell"><xsl:if test="egonp:DelegatedPersonForPickup/egonp:PersonData/*[normalize-space()]"><xsl:for-each select="egonp:DelegatedPersonForPickup/egonp:PersonData/egonp:PhysicalPerson"><xsl:call-template name="PhysicalPerson"><xsl:with-param name="PhysicalPersonName">Splnomocnená osoba</xsl:with-param></xsl:call-template></xsl:for-each></xsl:if><xsl:if test="egonp:DelegatedPersonForPickup/egonp:PersonData/egonp:ID/*[normalize-space()]"><xsl:for-each select="egonp:DelegatedPersonForPickup/egonp:PersonData/egonp:ID"><xsl:call-template name="IDs"/></xsl:for-each></xsl:if><div class="clear"> </div></div></div><div class="clear"> </div></div></div></xsl:template></xsl:stylesheet>