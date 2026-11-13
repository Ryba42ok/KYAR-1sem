<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">

<html> 
<head>
</head> 
    <link rel="stylesheet" href="xslstyle.css"/>
    <body>
     <table>

     <tr >
    <td>Название</td>
    <td>Описание</td>
    <td>Цена</td>
     </tr>

<xsl:for-each select="shop/items/item"> 
<xsl:sort select="cost" data-type="number" order="ascending" />
<!--смотря относительно чего мы рассатриваем начала списка или нижнего уровня
В противном случае можно прописать      "descending"  -->

     <tr>
    <td><xsl:value-of select = "name"/></td>
    <td><xsl:value-of select = "descr"/> </td>
    <td>$ <xsl:value-of select="cost"/>.00 CAD</td>
     </tr>

</xsl:for-each>

     </table>
    </body>
</html>

</xsl:template> 
</xsl:stylesheet> 