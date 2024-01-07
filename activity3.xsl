<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="cd">
        <html>
            <head>
                <title>MY CD COLLECTIONS</title>

                <style>
                    body{
                    background-color: black;
                    color: white;
                    }

                    h2{
                        text-align: center;
                        font-size: 30px;
                        letter-spacing: 8px;
                        padding: 20px;
                        font-weight: bold;  
                        text-shadow: 3px 3px 4px grey;
                    }

                    table{
                        margin-left: 500px;
                    }
                </style>
            </head>

            <body>
                <h2>MY CD COLLECTIONS</h2>

                <table border="1">
                    <tr>
                        <th bgcolor="grey" colspan="20">CD</th>
                    </tr>

                    <tr>
                        <td>Title</td>
                        <td>Artist</td>
                    </tr>

                    <xsl:for-each select="collection">
                        <tr>
                            <td><xsl:value-of select="title"></xsl:value-of></td>
                            <td><xsl:value-of select="artist"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>