<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>

    <xsl:template match="adresar">
      <html>
        <head>
          <title>More than 2 Emails</title>
          <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/nn9416/ist-1-project/src/style.min.css"/>
        </head>
        <body>
          <h1>Osobe koje sadrže više od dve email adrese:</h1>
          <table>
            <thead>
              <tr>
                <th colspan="3">Puno ime</th>
                <th colspan="3">Datum rođenja</th>
                <th colspan="4">Adresa</th>
                <th rowspan="2">Telefon</th>
                <th rowspan="2">Email</th>
              </tr>
              <tr>
                <th>Ime</th>
                <th>Srednje ime</th>
                <th>Prezime</th>
                <th>Dan</th>
                <th>Mesec</th>
                <th>Godina</th>
                <th>Ulica</th>
                <th>Broj</th>
                <th>Grad</th>
                <th>Država</th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="osoba"/>
            </tbody>
          </table>
          <h1>Kompanije koje sadrže više od dve email adrese:</h1>
          <table>
            <thead>
              <tr>
                <th rowspan="2">Naziv</th>
                <th colspan="4">Adresa</th>
                <th rowspan="2">Telefon</th>
                <th rowspan="2">Email</th>
              </tr>
              <tr>
                <th>Ulica</th>
                <th>Broj</th>
                <th>Grad</th>
                <th>Država</th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="kompanija"/>
            </tbody>
          </table>
        </body>
      </html>
    </xsl:template>

  <xsl:template match="osoba">
    <xsl:if test="count(email) &gt; 2">
      <tr>
        <td data-column="Ime">
          <xsl:value-of select="puno_ime/ime"/>
        </td>
        <td data-column="Srednje ime">
          <xsl:choose>
            <xsl:when test="boolean(puno_ime/srednje_ime)">
              <xsl:value-of select="puno_ime/srednje_ime"/>
            </xsl:when>
            <xsl:otherwise>
              /
            </xsl:otherwise>
          </xsl:choose>          
        </td>
        <td data-column="Prezime">
          <xsl:value-of select="puno_ime/prezime"/>
        </td>
        <td data-column="Dan">
          <xsl:value-of select="datum_rodjenja/dan"/>
        </td>
        <td data-column="Mesec">
          <xsl:value-of select="datum_rodjenja/mesec"/>
        </td>
        <td data-column="Godina">
          <xsl:value-of select="datum_rodjenja/godina"/>
        </td>
        <td data-column="Ulica">
          <xsl:value-of select="adresa/ulica"/>
        </td>
        <td data-column="Broj">
          <xsl:value-of select="adresa/broj"/>
        </td>
        <td data-column="Grad">
          <xsl:value-of select="adresa/grad"/>
        </td>
        <td data-column="Država">
          <xsl:choose>
            <xsl:when test="boolean(adresa/drzava)">
              <xsl:value-of select="adresa/drzava"/>
            </xsl:when>
            <xsl:otherwise>
              /
            </xsl:otherwise>
          </xsl:choose>          
        </td>
        <td data-column="Telefon">
          <xsl:value-of select="telefon"/>
        </td>
        <td data-column="Email">
          <xsl:for-each select="email">
            <xsl:value-of select="."/>
            <br/>
          </xsl:for-each>          
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template match="kompanija">
    <xsl:if test="count(email) &gt; 2">
      <tr>
        <td data-column="Naziv">
          <xsl:value-of select="naziv"/>
        </td>
        <td data-column="Ulica">
          <xsl:value-of select="adresa/ulica"/>
        </td>
        <td data-column="Broj">
          <xsl:value-of select="adresa/broj"/>
        </td>
        <td data-column="Grad">
          <xsl:value-of select="adresa/grad"/>
        </td>        
        <td data-column="Država">
          <xsl:choose>
            <xsl:when test="boolean(adresa/drzava)">
              <xsl:value-of select="adresa/drzava"/>
            </xsl:when>
            <xsl:otherwise>
              /
            </xsl:otherwise>
          </xsl:choose>          
        </td>
        <td data-column="Telefon">
          <xsl:value-of select="telefon"/>
        </td>
        <td data-column="Email">
          <xsl:for-each select="email">
            <xsl:value-of select="."/>
            <br/>
          </xsl:for-each>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
