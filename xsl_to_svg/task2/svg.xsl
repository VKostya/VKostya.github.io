<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <body>
                <p>Авторство</p>
                <h4 id="author" title="GossJS">Константин Воронович</h4>
                <a href="https://github.com/VKostya/VKostya.github.io/blob/master/xsl_to_svg/task2/svg.xsl">Посмотреть XSLT</a>
                <a href="https://vkostya.github.io/xsl_to_svg/index.html">Вернуться назад</a>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

   <xsl:template match="графика">
        <svg>
            <xsl:apply-templates select="@*|node()" />
        </svg>
    </xsl:template>

    <xsl:template match="графика/@ширина">
        <xsl:attribute name="width">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>    

    <xsl:template match="графика/эллипс">
        <ellipse>
            <xsl:apply-templates select="@*|node()" />
        </ellipse>
    </xsl:template>

    <xsl:template match="графика/эллипс/@заливка">
        <xsl:attribute name="fill">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/эллипс/@ободок">
        <xsl:attribute name="stroke">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/эллипс/@ширина-ободка">
        <xsl:attribute name="stroke-width">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/эллипс/@cx">
        <xsl:attribute name="cx">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/эллипс/@cy">
        <xsl:attribute name="cy">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/эллипс/@rx">
        <xsl:attribute name="rx">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/эллипс/@ry">
        <xsl:attribute name="ry">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>