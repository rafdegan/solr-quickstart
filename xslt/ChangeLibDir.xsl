<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="@*|node()[not(self::lib)]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="//config/lib[1]">
        <lib dir="../../lib/contrib/extraction/lib" regex=".*\.jar"/>
        <lib dir="../../lib/dist/" regex="solr-cell-\d.*\.jar"/>
        <lib dir="../../lib/contrib/clustering/lib/" regex=".*\.jar"/>
        <lib dir="../../lib/dist/" regex="solr-clustering-\d.*\.jar"/>
        <lib dir="../../lib/contrib/langid/lib/" regex=".*\.jar"/>
        <lib dir="../../lib/dist/" regex="solr-langid-\d.*\.jar"/>
        <lib dir="../../lib/contrib/velocity/lib" regex=".*\.jar"/>
        <lib dir="../../lib/dist/" regex="solr-velocity-\d.*\.jar"/>
    </xsl:template>
</xsl:stylesheet>
