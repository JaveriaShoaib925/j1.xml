<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="company">
        <html>
            <head>
                <title>EMPLOYEES DATA</title>
                <style>
                    body{
                        color: white;
                        background-color: black;
                    }
                    table{
                        margin-left: 400px;
                        box-shadow: 3px 3px 4px 4px grey;
                    }
                    h2{
                        background-color: teal;
                        text-align: center;
                        font-size: 30px;
                        letter-spacing: 10px;
                        padding:20px;
                        font-weight: bold;  
                        text-shadow: 3px 3px 4px yellow;
                    }
                </style>
            </head>
            <body>
                <h2 >EMPLOYEES DATA</h2>
                <table border="2" cellpadding="15px" cellspacing="15px">
                    <tr>
                        <th bgcolor="teal" colspan="5">EMPLOYEES</th>
                    </tr>

                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Salary</td>
                        <td>Joining Date</td>
                        <td>Position</td>
                    </tr>

                    <xsl:for-each select="employees">

                    <tr>
                        <td><xsl:value-of select="id"></xsl:value-of></td>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="salary"></xsl:value-of></td>
                        <td><xsl:value-of select="joining-date"></xsl:value-of></td>
                        <td><xsl:value-of select="position"></xsl:value-of></td>
                    </tr>

                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>