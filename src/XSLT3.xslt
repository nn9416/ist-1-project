<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="adresar">
    <adresar>
      <xsl:apply-templates select="osoba"/>
      <xsl:apply-templates select="kompanija"/>
    </adresar>
  </xsl:template>

  <xsl:template match="osoba">
    <osoba>
      <puno_ime>
        <ime>
          <xsl:value-of select="puno_ime/ime"/>
        </ime>
        <xsl:if test="boolean(puno_ime/srednje_ime)">
          <srednje_ime>
            <xsl:value-of select="puno_ime/srednje_ime"/>
          </srednje_ime>
        </xsl:if>        
        <xsl:for-each select="puno_ime/prezime">
          <prezime>
            <xsl:value-of select="."/>
          </prezime>
        </xsl:for-each>              
      </puno_ime>
      <datum_rodjenja>
        <dan>
          <xsl:value-of select="datum_rodjenja/dan"/>
        </dan>
        <mesec>
          <xsl:value-of select="datum_rodjenja/mesec"/>
        </mesec>
        <godina>
          <xsl:value-of select="datum_rodjenja/godina"/>
        </godina>
      </datum_rodjenja>
      <telefon>
        <xsl:value-of select="telefon"/>
      </telefon>
      <xsl:for-each select="email">
        <email>
          <xsl:value-of select="."/>
        </email>
      </xsl:for-each>
      <xsl:apply-templates select="adresa"/>
    </osoba>
  </xsl:template>

  <xsl:template match="adresa">
    <adresa>
      <xsl:for-each select="*">
        <xsl:if test="not(local-name() = 'drzava')">
          <xsl:attribute name="{name()}">
            <xsl:value-of select="text()"/>
          </xsl:attribute>
        </xsl:if>
      </xsl:for-each>
      <xsl:if test="boolean(drzava)">
        <drzava>
          <xsl:value-of select="drzava"/>
        </drzava>
      </xsl:if>
    </adresa>
  </xsl:template>

  <xsl:template match="kompanija">
    <kompanija>
      <naziv>
        <xsl:value-of select="naziv"/>
      </naziv>
      <xsl:apply-templates select="adresa"/>
      <telefon>
        <xsl:value-of select="telefon"/>
      </telefon>
      <xsl:for-each select="email">
        <email>
          <xsl:value-of select="."/>
        </email>
      </xsl:for-each>
    </kompanija>
  </xsl:template>
</xsl:stylesheet>
