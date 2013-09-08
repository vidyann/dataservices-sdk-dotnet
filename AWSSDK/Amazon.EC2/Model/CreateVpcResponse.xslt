<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ec2="default-ec2-namespace" exclude-result-prefixes="ec2">
    <xsl:output method="xml" omit-xml-declaration="no" indent="yes"/>
    <xsl:template match="ec2:CreateVpcResponse">
        <xsl:element name="CreateVpcResponse">
            <xsl:element name="ResponseMetadata">
                <xsl:element name="RequestId">
                    <xsl:value-of select="ec2:requestId"/>
                </xsl:element>
            </xsl:element>
            <xsl:element name="CreateVpcResult">
                <xsl:apply-templates select="ec2:vpc"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    <xsl:template match="ec2:vpc">
        <xsl:element name="Vpc">
            <xsl:element name="VpcId">
                <xsl:value-of select="ec2:vpcId"/>
            </xsl:element>
            <xsl:element name="VpcState">
                <xsl:value-of select="ec2:state"/>
            </xsl:element>
            <xsl:element name="CidrBlock">
                <xsl:value-of select="ec2:cidrBlock"/>
            </xsl:element>
            <xsl:element name="DhcpOptionsId">
                <xsl:value-of select="ec2:dhcpOptionsId"/>
            </xsl:element>
          <xsl:element name="InstanceTenancy">
            <xsl:value-of select="ec2:instanceTenancy"/>
          </xsl:element>
          <xsl:if test="ec2:isDefault">
            <xsl:element name="IsDefault">
              <xsl:value-of select="ec2:isDefault"/>
            </xsl:element>
          </xsl:if>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>

		  
