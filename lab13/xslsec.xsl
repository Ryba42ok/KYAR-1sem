<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
        <link rel="stylesheet" href="secstyle.css" media = "all"/>
        </head>
        <body>
        <table>
        
        <tr>
        <td>Имя студента</td><td>Оценка</td>
        </tr>

<xsl:for-each select="attestation/student"> 

        <tr>
        <td><xsl:value-of select = "fio"/></td>
        <xsl:choose>
         <xsl:when test="mark &lt; 4">
            <td class="four"><xsl:value-of select="mark" /></td>         
        </xsl:when>

        <xsl:when test="mark &gt; 8">
            <td class = "eight"><xsl:value-of select="mark" /></td>         
        </xsl:when>

        <xsl:otherwise>
            <td><xsl:value-of select="mark" /></td>         
        </xsl:otherwise>

        </xsl:choose>
        </tr>

</xsl:for-each>
        </table>    
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>