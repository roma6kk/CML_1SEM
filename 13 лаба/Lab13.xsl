<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />
  <xsl:template match="/">
    <html>
      <head>
        <title>Книги по программированию</title>
      </head>
      <body>
        <h1>Книги по программированию</h1>
        <table>
          <tr>
            <th>Заголовок</th>
            <th>Автор</th>
            <th>Дата</th>
          </tr>
          <xsl:for-each select="publications/publication">
            <xsl:sort select="date" order="ascending"/>
            <tr>
              <td><xsl:value-of select="title" /></td>
              <td><xsl:value-of select="author" /></td>
              <td><xsl:value-of select="date" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>