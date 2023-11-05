<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html> 
  <body>
    <h2><u>Car Service Repository</u></h2>
    <div style="font-size: 18px;"><b>Car Service Station:</b> <xsl:value-of select="CarServiceRepository/ServiceStation/@location"/></div>
    <div style="padding-left: 20px;">
    <xsl:for-each select="CarServiceRepository/ServiceStation/Car">
      <p><b>Car Plate: </b> <xsl:value-of select="@plate"/></p>
      <p><b>Model: </b> <xsl:value-of select="Model"/></p>
      <p><b>Year: </b> <xsl:value-of select="Year"/></p>
      <p><b>Service Card: </b></p>
      <ul style="padding-left: 60px;">
        <xsl:for-each select="ServiceHistory/Service">
          <li><xsl:value-of select="@date"/>, service <xsl:value-of select="@mileage"/>km</li>
        </xsl:for-each>
      </ul>
    </xsl:for-each>
    </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

