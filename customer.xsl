<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>CUSTOMER LOG</h1>
    <table border="3">
    <tr bgcolor="#03fcf4">
      <th style="text-align:center">Customer_ID</th>
      <th style="text-align:center">First Name</th>
      <th style="text-align:center">Last Name</th>
      <th style="text-align:center">City</th>
      <th style="text-align:center">State</th>
      <th style="text-align:center">Phone_Number</th>
    </tr>
      <xsl:for-each select="hotel_customer/customer">
        <tr>
          <td><xsl:value-of select="id"/></td>
         <td><xsl:value-of select="fname"/></td>
         <td><xsl:value-of select="lname"/></td>
         <td><xsl:value-of select="city"/></td>
         <td><xsl:value-of select="state"/></td>
         <td><xsl:value-of select="phone"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
