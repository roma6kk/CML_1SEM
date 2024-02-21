<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .low-grade {
                        background-color: red;
                    }
                    
                    .high-grade {
                        background-color: green;
                    }
                    table,tr,td {
                      border-collapse: collapse;
                     
                      border: 1px solid grey;
                  
                   }
                </style>
            </head>
            <body>
                <h2>Студенты</h2>
                <table>
                    <tr>
                        <th>Имя</th>
                        <th>Оценка</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <xsl:choose>
                            <xsl:when test="grade &lt; 4">
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td class="low-grade" ><xsl:value-of select="grade"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="grade &gt; 8">
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td class="high-grade" ><xsl:value-of select="grade"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td><xsl:value-of select="grade"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>