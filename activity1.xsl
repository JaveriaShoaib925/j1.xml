<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="bank">
        <html>
             <head>
                <title>BANK EMPLOYEES DATA</title>
                <style>
                    body{
                        background-color: black;
                        color: white;
                    }
                    table{
                        margin-left: 460px;
                        box-shadow: 4px 4px 5px pink;
                    }
                    h2{
                        background-color: grey;
                        padding:20px;
                        text-align: center;
                        font-size: 36px;
                        letter-spacing: 10px;
                        font-weight: bold;  
                        text-shadow: 4px 4px 5px lavender;
                    }
                </style>
             </head>

             <body>
                <h2>SALARY OF BANK EMPLOYEES</h2>

                <table  border="1" cellspacing="15px" cellpadding="15px">
                    <tr>
                        <th bgcolor="pink" colspan="4">EMPLOYEES SALARY</th>
                    </tr>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>SALARY</th>
                        </tr>

                        <xsl:for-each select="employees">
                            <tr>
                                <td><xsl:value-of select="id"></xsl:value-of></td>
                                <td><xsl:value-of select="name"></xsl:value-of></td>
                                <td><xsl:value-of select="salary"></xsl:value-of></td>
                            </tr>
                        </xsl:for-each>
                </table>
             </body>
        </html>
    </xsl:template>
</xsl:stylesheet>