<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE xsl:stylesheet>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="UTF-8" indent="no" media-type="text/html" method="html"><!--  generated by dexter-0.9-beta (copyright (c) 2007-2011 Michael Dykman, Lauren Enterprises) from `/opt/gossamer/www/xsl/default/xhtml-1.0/scon/login.html'   --></xsl:output>
<xsl:preserve-space elements="*"></xsl:preserve-space>

<xsl:template match="/">

<html><xsl:text>
</xsl:text><head></head><xsl:text>
</xsl:text><body><xsl:text>
</xsl:text><div><xsl:if test="string-length(result/msg)"><xsl:value-of select="result/msg"></xsl:value-of></xsl:if></div>
<xsl:text>
</xsl:text><form action="/scon" method="post">
<input name="loginb" type="hidden" value="y"></input>
username <input name="username" type="text"></input><br></br>
password <input name="password" type="password"></input><br></br>
<input type="submit" value="login"></input>
</form><xsl:text>
</xsl:text></body>
<xsl:text>
</xsl:text></html>

</xsl:template>

</xsl:stylesheet>