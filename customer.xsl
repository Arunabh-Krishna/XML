<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
        <!--for-each-->
        <h1>for-each</h1>
        <table border="3">
            <tr bgcolor="#03fcf4">
                <th>CUSTOMER ID</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
            </tr>
            <xsl:for-each select="hotel_customer/customer">
            <tr>
                <td bgcolor="#40eb34"><xsl:value-of select="id"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="fname"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="lname"/></td>
            </tr>
            </xsl:for-each>
        </table>
        <!--sort-->
        <h1>sort</h1>
        <table border="3">
            <tr bgcolor="#03fcf4">
                <th>CUSTOMER ID</th>
                <th>FIRST NAME</th>
                <th>STATE</th>
            </tr>
            <xsl:for-each select="hotel_customer/customer">
            <xsl:sort select="id"/>
            <tr>
                <td bgcolor="#40eb34"><xsl:value-of select="id"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="fname"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="state"/></td>
            </tr>
            </xsl:for-each>
        </table>
        <!--if-->
        <h1>if</h1>
        <table border="3">
            <tr bgcolor="#03fcf4">
                <th>CUSTOMER ID</th>
                <th>FIRST NAME</th>
                <th>RENT</th>
            </tr>
            <xsl:for-each select="hotel_customer/customer">
            <xsl:if test="rent &lt; 8000">
            <tr>
                <td bgcolor="#40eb34"><xsl:value-of select="id"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="fname"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="rent"/></td>
            </tr>
            </xsl:if>
            </xsl:for-each>
        </table>
        <!--when-->
        <h1>when</h1>
        <table border="3">
            <tr bgcolor="#03fcf4">
                <th>CUSTOMER ID</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>PHONE</th>
                <th>RENT</th>
            </tr>
            <xsl:for-each select="hotel_customer/customer">
            <tr>
                <xsl:choose>
                <xsl:when test="rent &lt; 8000">
                <td bgcolor="#40eb34"><xsl:value-of select="id"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="fname"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="lname"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="phone"/></td>
                <td bgcolor="#40eb34"><xsl:value-of select="rent"/></td>
                </xsl:when>
                <xsl:otherwise>
                <td bgcolor="#eb34cc"><xsl:value-of select="id"/></td>
                <td bgcolor="#eb34cc"><xsl:value-of select="fname"/></td>
                <td bgcolor="#eb34cc"><xsl:value-of select="lname"/></td>
                <td bgcolor="#eb34cc"><xsl:value-of select="phone"/></td>
                <td bgcolor="#eb34cc"><xsl:value-of select="rent"/></td>
                </xsl:otherwise>
                </xsl:choose>
            </tr>
            </xsl:for-each>
        </table>
        <!--templated-->
        <h1>Apply Templates</h1>
        <xsl:apply-templates/>
    </body>
  </html>
</xsl:template>
<xsl:template match="customer">
  <p>
  <xsl:apply-templates select="id"/>
  <xsl:apply-templates select="fname"/>
  <xsl:apply-templates select="lname"/>
  <xsl:apply-templates select="rent"/>
  <xsl:apply-templates select="phone"/>
  </p>
</xsl:template>

<xsl:template match="id">
 Customer ID: <span style="color:#daf50f">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="fname">
  First Name: <span style="color:#a334e3">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="lname">
  Last Name: <span style="color:#03e3fc">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="rent">
  Rent: <span style="color:#ecfc03">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="phone">
  Phone No: <span style="color:#fc03f4">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>
</xsl:stylesheet>
