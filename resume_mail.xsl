<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/Resume">
    <style type="text/css">
      .btnbox{ width:600px; height:100px;}
      .yelline{height:3px;  width:176px; float:left; margin-top:12px; font-size:1;}
      .btnbox-mid{  float:left; text-align:center}
      .btnbox-yelbtn{font:500 20px Microsoft YaHei; color:#ffffff; padding:5px 10px; background-color:#eb6100; text-decoration:none;border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px; border-bottom:2px #e54d00 solid; }
      .Clicktext{ color:#004e9c}
      .footercont{width:600px; border-top:1px #e1e1e1 solid;text-align:center;line-height:20px; padding:10px 0;background:#ffffff;color:#a3a4a9;}
      .space-left{padding-left:3px;}
      .space{padding:0 3px 0 3px}

      body {
        width: 600px;
        background: #ffffff;
        color: #262b33;
        font-family:"PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", 微软雅黑, Arial, sans-serif;
        line-height: 1.5;
        font-size:13px;
      }

      p,span { margin: 0; padding: 0; }

      td { font-size:13px; line-height: 1.5; }

      a { color: #1e9bf5; cursor: pointer; text-decoration: none; }

      .contact-card {
        height: 48px;
        background: #e9f0ff;
        color: #0168da;
        border-radius: 5px;
        padding: 0 0 0 10px;
        word-break: break-all;
        word-wrap:break-word;
      }

      .has-indicator {
        color: #696e7d;
        font-weight: 600;
        padding: 0 15px;
        background: #eef1f6;
        font-size: 14px;
        position: relative;
      }

      .has-indicator:before {
        content: "";
        position: absolute;
        left: 2px;
        bottom: 8px;
        top: 8px;
        border-radius: 4px;
        width: 4px;
        background-color: #1e9bf5;
      }

      .portrait {
        display: block;
        width: 100px;
        height: 122.58065px;
        border-radius: 5px;
      }
    </style>

    <xsl:choose>
      <xsl:when test="EmailOtherInfos/EmailOtherInfo">
        <xsl:for-each select="EmailOtherInfos/EmailOtherInfo">
          <xsl:if test="coverletterContent!=''">
            <table width="600" cellpadding="10" cellspacing="0" border="0" bgcolor="#ffffff">
              <tr>
                <td style="border: 1px solid #d8dce6;">
                  <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
                    <tr>
                      <td align="center">
                        <span style="font-size:14px;color:#8F3206;">
                          <b>求职信</b>
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <div>
                          <p style="line-height:20px;word-break:break-all;word-wrap:break-word">
                            <xsl:value-of select="coverletterContent"/>
                          </p>
                        </div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </xsl:if>
        </xsl:for-each>
      </xsl:when>
    </xsl:choose>
    <table class="is-bordered is-top" width="600" cellpadding="0" cellspacing="0" border="0">
      <tr height="85" style="background: #EAEFF9;">
        <td align="left" width="213" style="border-left: 1px solid #d8dce6; padding-left: 20px;">
          <img style="float: left; margin-top: 10px;" src="https://rd5-public.zhaopin.cn/imgs/zplogo.png?x-oss-process=image/resize,h_70" width="115" height="40" />
        </td>
        <td style="border-right: 1px solid #d8dce6;">
          <xsl:for-each select="EmailOtherInfos/EmailOtherInfo">
            <xsl:choose>
              <xsl:when test="IsIHR='false'">
                <a a="" target="_blank" href="https://jobads.zhaopin.com/customer/invuserReg">
                  <img src="http://images.zhaopin.com/2014/c/img/eml_ban3.jpg" width="370" height="70"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <a a="" target="_blank" href="https://ihr.zhaopin.com/settings/myRegInvitation.do ">
                  <img src="http://images.zhaopin.com/2014/c/img/eml_ban3.jpg" width="370" height="70"/>
                </a>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </td>
      </tr>
    </table>
    <table width="600" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
      <tr>
        <td style="border-left: 1px solid #d8dce6;border-right: 1px solid #d8dce6;">
          <table class="is-bordered" width="598" cellpadding="0" cellspacing="0" border="0">
            <tr>
              <td>
                <table width="570" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff"  >
                  <tr>
                    <td colspan="3" height="10"></td>
                  </tr>
                  <tr>
                    <td valign="top" width="466" >
                      <table width="466"  cellpadding="0" cellspacing="0" border="0" style="word-break: break-all; word-wrap:break-word;">
                        <tr style="width:100%;height:40px">
                          <td style="font-size:18px;padding-left:0;line-height:40px">
                            <xsl:value-of select="UsermasterName"/>
                          </td>
                        </tr>
                        <tr width="466" style="height:30px">
                          <td width="466" style="line-height:24px;padding-left:0;word-break: break-all; word-wrap:break-word;">
                            <font style="font-weight:bold">
                              <xsl:value-of select="PersonGender"/>
                            </font>
                            <xsl:if  test="PersonWorkYears !=0">
                              <small style="color:#b5b5b5" class="space">|</small>
                              <font style="font-weight:bold">
                                <xsl:value-of select="PersonWorkYears"/>
                                <xsl:text>工作经验</xsl:text>
                              </font>
                            </xsl:if>
                            <small style="color:#b5b5b5" class="space">|</small>
                            <font style="font-weight:bold">
                              <xsl:value-of select="PersonBirthYear"/>年<xsl:value-of select="PersonBirthMonth"/><xsl:text>月</xsl:text>
                            </font>
                            <xsl:if test="PersonMarital!=''">
                              <small style="color:#b5b5b5" class="space">|</small>
                              <font style="font-weight:bold">
                                <xsl:value-of select="PersonMarital"/>
                              </font>
                            </xsl:if>
                            <br/>
                            <xsl:if test="PersonResident!=''">
                              <xsl:text>现居住于</xsl:text>
                              <xsl:value-of select="PersonResident"/>
                            </xsl:if>
                            <xsl:if test="EduLevel!=''">
                              <small style="color:#b5b5b5" class="space">|</small>
                              <xsl:value-of select="EduLevel"/>
                            </xsl:if>
                            <xsl:if test="PersonHukou">
                              <small style="color:#b5b5b5;word-break:break-all;" class="space-left">|</small>
                              <xsl:value-of select="PersonHukou"/>户口
                            </xsl:if>
                          </td>
                        </tr>
                        <xsl:for-each select="EmailOtherInfos/EmailOtherInfo">
                          <xsl:choose>
                            <xsl:when test="posttype='1' and isWhite='false'">
                              <tr style="height:28px;">
                                <td style="color:#ff470f;">
                                  <xsl:value-of select="/Resume/UsermasterName"/>
                                  <font style="padding-left:12px;">要求您给出反馈后才展示联系方式，请点击下方按钮进行反馈</font>
                                </td>
                              </tr>
                            </xsl:when>
                            <xsl:otherwise>

                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:for-each>
                        <tr>
                          <td>
                            <xsl:for-each select="EmailOtherInfos/EmailOtherInfo">

                              <xsl:choose>
                                <xsl:when test="posttype='1' and isWhite='false'">
                                  <table>
                                    <tr>
                                      <td width="0"></td>
                                      <td width="125" height="48" style="border-radius:5px;text-align:center;background:#00bdff;">
                                        <a style="font-size: 16px;color: #f5f6fa;">
                                          <xsl:attribute name="href">
                                            <xsl:value-of select="Url"/>
                                          </xsl:attribute>
                                          <xsl:text>我要联系TA</xsl:text>
                                        </a>
                                      </td>
                                      <td width="4"></td>

                                      <xsl:choose>
                                        <xsl:when test="IsIHR='false'">
                                          <td width="96" height="48" style="border-radius:5px;text-align:center;background:#fe4f4c;">
                                            <a style="font-size: 14px;color: #f5f6fa;">
                                              <xsl:attribute name="href">
                                                <xsl:value-of select="concat('http://cnt.zhaopin.com/Market/whole_counter.jsp?sid=121125266&amp;site=&amp;url=http://rd.zhaopin.com/resumepreview/resume/viewone/1/',applyid)"/>
                                              </xsl:attribute>
                                              暂不合适
                                            </a>
                                          </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                          <td width="96" height="48" style="border-radius:5px;text-align:center;background:#fe4f4c;">
                                            <a style="font-size: 14px;color: #f5f6fa;">
                                              <xsl:attribute name="href">
                                                <xsl:value-of select="concat('https://ihr.zhaopin.com/resumemanage/emailimnotsuit.do?resumeSource=3&amp;resumeJobId=',applyid,'&amp;s=',rd_param)"/>
                                              </xsl:attribute>
                                              暂不合适
                                            </a>
                                          </td>
                                        </xsl:otherwise>
                                      </xsl:choose>

                                      <td width="4"></td>
                                      <td width="160">

                                      </td>
                                    </tr>
                                  </table>
                                </xsl:when>
                                <xsl:otherwise>
                                  <table>
                                    <tr>
                                      <td width="0"></td>
                                      <td width="220" height="48" style="background: #e9f0ff; border-radius: 5px; padding-left: 10px; word-break: break-all; word-wrap:break-word;">
                                        <p style="font-size:22px;color: #0168da;font-weight:bold;line-height:30px;">
                                        <xsl:value-of select="/Resume/PersonMob"/>
                                        </p>
                                        <span style="display:block;">
                                          <xsl:value-of select="/Resume/PersonEmail"/>
                                        </span>
                                      </td>
                                      <td width="4"></td>
                                      <td width="96" height="48" style="border-radius:5px;text-align:center;background:#fe4f4c;">
                                        <xsl:choose>
                                          <xsl:when test="IsIHR='false'">
                                        <a style="font-size: 14px;color: #f5f6fa;">
                                          <xsl:attribute name="href">
                                            <xsl:value-of select="concat('http://cnt.zhaopin.com/Market/whole_counter.jsp?sid=121125266&amp;site=&amp;url=http://rd.zhaopin.com/resumepreview/resume/viewone/1/',applyid)"/>
                                          </xsl:attribute>
                                          暂不合适
                                        </a>
                                          </xsl:when>
                                          <xsl:otherwise>
                                            <a style="font-size: 14px;color: #f5f6fa;">
                                              <xsl:attribute name="href">
                                                 <xsl:value-of select="concat('https://ihr.zhaopin.com/resumemanage/emailimnotsuit.do?resumeSource=3&amp;resumeJobId=',applyid,'&amp;s=',rd_param)"/>
                                              </xsl:attribute>
                                              暂不合适
                                            </a>
                                          </xsl:otherwise>
                                        </xsl:choose>
                                      </td>
                                      <td width="4"></td>
                                      <td width="80">

                                      </td>
                                    </tr>
                                  </table>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:for-each>

                          </td>
                        </tr>
                      </table>
                    </td>
                    <td width="80" style="vertical-align: top;">
                      <div class="photo" style="padding: 0px 5px 5px 5px">
                        <a target="_blank">
                          <xsl:attribute name="href">
                            <xsl:value-of select="UsermasterPhoto"/>
                          </xsl:attribute>
                          <xsl:element name="img">
                            <xsl:attribute name="class">
                              portrait
                            </xsl:attribute>
                            <xsl:attribute name="border">
                              0
                            </xsl:attribute>
                            <xsl:attribute name="width">
                              100
                            </xsl:attribute>
                            <xsl:attribute name="height">
                              122
                            </xsl:attribute>
                            <xsl:attribute name="style">
                              vertical-align:middle
                            </xsl:attribute>
                            <xsl:attribute name="src">
                              <xsl:value-of select="UsermasterPhoto"/>
                            </xsl:attribute>
                          </xsl:element>
                        </a>
                      </div>
                    </td>
                    <td width="6"/>
                  </tr>
                  <tr>
                    <td colspan="3" height="10"></td>
                  </tr>
                </table>
              </td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td>
                <table width="570" align="center" cellpadding="0" cellspacing="0" border="0" style="word-break: break-all; word-wrap:break-word;">



                </table>
              </td>
            </tr>

            <xsl:choose>
              <xsl:when test="SelfEvaluates/SelfEvaluate">
                <tr>
                  <td>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator" style="word-break: break-all; word-wrap:break-word;">
                          <span>
                            <xsl:for-each select='SelfEvaluates/SelfEvaluate'>
                              <xsl:value-of select='CommentTitle'/>
                            </xsl:for-each>
                          </span>
                        </td>
                      </tr>
                    </table>
                    <table width="570">
                      <tr>
                        <td colspan="2" height="5"></td>
                      </tr>
                      <tr>
                        <td colspan="2" style="word-break:break-all;word-wrap:break-word;padding-left:12px;">
                          <xsl:if test="SelfEvaluates/SelfEvaluate">
                            <xsl:for-each select='SelfEvaluates/SelfEvaluate'>
                              <xsl:value-of select='CommentContent'/>
                            </xsl:for-each>
                          </xsl:if>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2" height="5"></td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>

            <xsl:if test="DesiredPositions/DesiredPosition!=''">
              <tr>
                <td>
                  <br/>
                  <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                    <tr>
                      <td class="has-indicator">
                        <span>求职意向</span>
                      </td>
                    </tr>
                  </table>
                  <br/>
                  <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                    <xsl:for-each select='DesiredPositions/DesiredPosition'>
                      <tr>
                        <td width="95" align="right" valign="top">
                        <span style="font-weight:bold;">期望工作地区：</span>
                        </td>
                        <td width="475" valign="top">
                          <xsl:value-of select='DesiredCity'/>
                        </td>
                      </tr>
                      <tr>
                        <td width="95" align="right" valign="top"><span style="font-weight:bold;">期望工作性质：</span></td>
                        <td width="475" valign="top">
                          <xsl:value-of select='DesiredEmploymentType'/>
                        </td>
                      </tr>
                      <tr>
                        <td width="95" align="right" valign="top"><span style="font-weight:bold;">期望从事职业：</span></td>
                        <td width="475" valign="top">
                          <xsl:value-of select='DesiredJobType'/>
                        </td>
                      </tr>
                      <tr>
                        <td width="95" align="right" valign="top"><span style="font-weight:bold;">期望月薪：</span></td>
                        <td width="475" valign="top">
                          <xsl:value-of select='DesiredSalaryScope'/>
                        </td>
                      </tr>
                      <tr>
                        <td width="95" align="right" valign="top"><span style="font-weight:bold;">目前状况：</span></td>
                        <td width="475" valign="top">
                          <xsl:value-of select='CurrentCareerStatus'/>
                        </td>
                      </tr>
                      <tr>
                        <td width="95" align="right" valign="top"><span style="font-weight:bold;">期望从事行业：</span></td>
                        <td width="475" valign="top">
                          <xsl:value-of select='DesiredIndustry'/>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </td>
              </tr>

            </xsl:if>

            <xsl:choose>
              <xsl:when test="WorkExperiences/WorkExperience">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>工作经历</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center"  cellpadding='0'  cellspacing='0' border='0'>
                      <xsl:for-each select='WorkExperiences/WorkExperience'>
                        <tr>
                          <td style="color:#333333;">
                            <table cellpadding="0" cellspacing="0" border="0" style="margin-bottom:15px;word-break: break-all; word-wrap:break-word;">
                              <tr>
                                <td width="132" height="22" style="text-align:right;font-weight:bold;">
                                  <p style="width:132px;text-align:right;font-weight:bold;">
                                    <xsl:value-of select='DateStart'/>
                                    - <xsl:choose>
                                      <xsl:when test="DateEnd!=''">
                                        <xsl:value-of select="DateEnd"/>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        至今
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </p>
                                </td>

                                <td width="424" style="padding-left:14px; font-weight:bold;word-break: break-all; word-wrap:break-word;">
                                  <span style="display:inline-block;margin:0 2px">
                                    <xsl:value-of select="CompanyName"/>
                                  </span>
                                  <span style="display:inline-block;margin:0 2px;">
                                    （<xsl:value-of select="WorkYear"/>）
                                  </span>
                                </td>
                              </tr>
                              <tr>
                                <td width="132" height="22" ></td>
                                <td width="424" style="padding-left:14px; font-weight:bold;word-break: break-all; word-wrap:break-word;">
                                  <span style="display:inline-block;margin:0 2px">
                                    <xsl:value-of select="JobTitle"/>
                                  </span>
                                  <xsl:if test="Salary!=''">
                                    <font style="display:inline-block;margin:0 2px;">|</font>
                                    <span style="display:inline-block;margin:0 2px;">
                                      <xsl:value-of select="Salary"/>
                                    </span>
                                  </xsl:if>
                                </td>
                              </tr>
                              <tr>
                                <td width="132" height="22" ></td>
                                <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                  <span style="display:inline-block;margin:0 2px;">
                                    <xsl:value-of select="CompanyIndustry"/>
                                  </span>
                                  <xsl:if test="CompanyProperty !='' ">
                                    <font style="display:inline-block;margin:0 2px">|</font>
                                    <span style="display:inline-block;margin:0 2px">
                                      企业性质：<xsl:value-of select="CompanyProperty"/>
                                    </span>
                                  </xsl:if>
                                  <xsl:if test="ComapnySize !='' ">
                                    <font style="display:inline-block;margin:0 2px">|</font>
                                    <span style="display:inline-block;margin:0 2px">
                                      规模：<xsl:value-of select="ComapnySize"/>
                                    </span>
                                  </xsl:if>
                                </td>
                              </tr>
                              <tr>
                                <td width="132" height="22" ></td>
                                <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                  <p style="line-height:20px;">
                                    <span>工作描述：</span>
                                    <xsl:value-of select="WorkDescription"/>
                                  </p>
                                </td>
                              </tr>
                              <xsl:variable name="WorkSubRowId" select="SubRowId" />
                              <xsl:if test="/Resume/AdvancedManagements/AdvancedManagement">
                                <xsl:for-each select="/Resume/AdvancedManagements/AdvancedManagement">
                                  <xsl:if test="WorkXpSubRowId = $WorkSubRowId">
                                    <tr>
                                      <td width="132" height="22" ></td>
                                      <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                        <p style="line-height:20px;">
                                          <span>汇报对象：</span>
                                          <xsl:value-of select="ReportPerson"/>
                                        </p>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td width="132" height="22" ></td>
                                      <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                        <p style="line-height:20px;">
                                          <span>下属人数：</span>
                                          <xsl:value-of select="EmployeesManaged"/>
                                        </p>
                                      </td>
                                    </tr>
                                    <xsl:if test="DirectUnderling !='' ">
                                      <tr>
                                        <td width="132" height="22" ></td>
                                        <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                          <p style="line-height:20px;">
                                            <span>直接下属：</span>
                                            <xsl:value-of select="DirectUnderling"/>
                                          </p>
                                        </td>
                                      </tr>
                                    </xsl:if>
                                    <xsl:if test="AnnualIncome !='0' ">
                                      <tr>
                                        <td width="132" height="22" ></td>
                                        <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                          <p style="line-height:20px;">
                                            <span>年收入：</span>
                                            <xsl:value-of select="AnnualIncome"/>
                                          </p>
                                        </td>
                                      </tr>
                                    </xsl:if>
                                    <tr>
                                      <td width="132" height="22" ></td>
                                      <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                        <p style="line-height:20px;">
                                          <span>业绩描述：</span>
                                          <xsl:value-of select="AchievementDescription"/>
                                        </p>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                </xsl:for-each>
                              </xsl:if>
                            </table>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>

            <xsl:choose>
              <xsl:when test="ProjectExperiences/ProjectExperience">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>项目经验</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center"  cellpadding='0'  cellspacing='0' border='0'>
                      <xsl:for-each select='ProjectExperiences/ProjectExperience'>
                        <tr>
                          <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                            <table cellpadding="0" cellspacing="0" border="0" style="margin-bottom:15px;word-break: break-all; word-wrap:break-word;">
                              <tr>
                                <td width="132" height="22" style="text-align:right;font-weight:bold;">
                                  <p style="width:132px;text-align:right;font-weight:bold;">
                                    <xsl:value-of select='DateStart'/>
                                    - <xsl:choose>
                                      <xsl:when test="DateEnd!=''">
                                        <xsl:value-of select="DateEnd"/>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        至今
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </p>
                                </td>
                                <td width="424" style="padding-left:14px; font-weight:bold">
                                  <span style="display:inline-block;margin:0 2px">
                                    <xsl:value-of select="ProjectName"/>
                                  </span>
                                </td>
                              </tr>
                              <xsl:if test="SoftWareEntironment !='' ">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="424" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>软件环境：</span>
                                      <xsl:value-of select="SoftWareEntironment"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="HardWareEntironment !='' ">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="424" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>硬件环境：</span>
                                      <xsl:value-of select="HardWareEntironment"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="DevelopTools !='' ">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="424" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>开发工具：</span>
                                      <xsl:value-of select="DevelopTools"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <tr>
                                <td width="132" height="22" ></td>
                                <td width="424" style="padding-left:14px;word-break: break-all; word-wrap:break-word;">
                                  <p style="line-height:20px;">
                                    <span>责任描述：</span>
                                    <xsl:value-of select="ProjectResponsibility"/>
                                  </p>
                                </td>
                              </tr>
                              <tr>
                                <td width="132" height="22" ></td>
                                <td width="424" style="padding-left:14px;">
                                  <p style="line-height:20px;word-break: break-all; word-wrap:break-word;">
                                    <span>项目简介：</span>
                                    <xsl:value-of select="ProjectDescription"/>
                                  </p>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>



            <xsl:choose>
              <xsl:when test="EducationExperiences/EducationExperience">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>教育经历</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                          <table cellpadding="0" cellspacing="0" border="0">
                            <xsl:for-each select="EducationExperiences/EducationExperience">
                              <tr height="20">
                                <td width="132" style="" valign="top">
                                  <p style="width:132px;text-align:right;font-weight:bold;">
                                    <xsl:value-of select="DateStart"/> - <xsl:choose>
                                      <xsl:when test="DateEnd!=''">
                                        <xsl:value-of select="DateEnd"/>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        至今
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </p>
                                </td>
                                <td width="412" style="word-break: break-all; word-wrap:break-word;padding-left:12px;">
                                  <span style="display:inline-block;margin-right:12px;font-weight:normal;">
                                    <xsl:value-of select="SchoolName"/>
                                  </span>
                                  <span style="display:inline-block;margin-right:12px;font-weight:normal;">
                                    <![CDATA[&nbsp;]]><xsl:value-of select="MajorName"/>
                                  </span>
                                  <xsl:if test="Tongzhao!=''">
                                    <span style="display:inline-block;margin-right:12px;font-weight:normal;">
                                      <![CDATA[&nbsp;]]><xsl:value-of select="Tongzhao"/>
                                    </span>
                                  </xsl:if>
                                  <span style="display:inline-block;margin-right:12px;font-weight:normal;">
                                    <![CDATA[&nbsp;]]><xsl:value-of select="EducationLevel"/>
                                  </span>
                                </td>
                              </tr>
                            </xsl:for-each>
                          </table>

                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>

              </xsl:when>
            </xsl:choose>

            <xsl:choose>
              <xsl:when test="StudyInformations/StudyInformation">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>在校学习情况</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center"  cellpadding='0'  cellspacing='0' border='0'>

                      <tr>
                        <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                          <table>
                            <xsl:for-each select='AchieveScholarships/AchieveScholarship'>
                              <tr>
                                <td style="padding-left:12px;">
                                  <span style="display:inline-block;margin-right:4px;">曾获</span>
                                  <span style="display:inline-block;margin-right:4px;">
                                    <xsl:value-of select="ScholarshipName"/><xsl:value-of select="ScholarshipLevel"/>奖学金
                                  </span>
                                </td>
                              </tr>
                            </xsl:for-each>
                            <xsl:for-each select="StudyInformations/StudyInformation">
                              <tr>
                                <td style="padding-left:12px;line-height:20px;word-break: break-all; word-wrap:break-word;">
                                  <xsl:value-of select="DutyDescription"/>
                                </td>
                              </tr>
                            </xsl:for-each>
                          </table>
                          <xsl:for-each select="AchieveAwards/AchieveAward">
                            <table cellpadding="0" cellspacing="0" border="0">
                              <tr height="20">
                                <td width="52" style="padding-left:12px;">
                                  <xsl:value-of select="AchieveDate"/>
                                </td>
                                <td width="490">
                                  <span style="display:inline-block;margin-right:2px;">
                                    <![CDATA[&nbsp;]]><xsl:value-of select="AwardName"/>
                                  </span>
                                  <font style="display:inline-block;margin-right:4px;">|</font>
                                  <span style="display:inline-block;margin-right:12px;">
                                    <xsl:value-of select="AwardLevel"/>
                                  </span>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2" style="padding-left:12px;line-height:20px;word-break: break-all; word-wrap:break-word;">
                                  <xsl:value-of select="AwardDescription"/>
                                </td>
                              </tr>
                            </table>
                          </xsl:for-each>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>

            <xsl:choose>
              <xsl:when test="PracticeExperiences/PracticeExperience">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>在校实践经验</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center"  cellpadding='0'  cellspacing='0' border='0'>

                      <tr>
                        <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                          <table cellpadding="0" cellspacing="0" border="0">
                            <xsl:for-each select="PracticeExperiences/PracticeExperience">
                              <tr height="20">
                                <td width="132" valign="top" style="padding-left:12px;">

                                  <xsl:value-of select="DateStart"/> - <xsl:choose>
                                    <xsl:when test="DateEnd!=''">
                                      <xsl:value-of select="DateEnd"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                      至今
                                    </xsl:otherwise>
                                  </xsl:choose>

                                </td>
                                <td valign="top" width="402" style="word-break: break-all; word-wrap:break-word;padding-left:12px">
                                  <span style="margin-right:4px;">
                                    <xsl:value-of select="PracticeName"/>
                                  </span>
                                  <font style="margin-right:4px;">|</font>
                                  <span style="margin-right:12px;">
                                    <xsl:value-of select="PracticeDescription"/>
                                  </span>
                                </td>
                              </tr>
                            </xsl:for-each>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>

            <xsl:choose>
              <xsl:when test="Trainings/Training">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>培训经历</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center"  cellpadding='0'  cellspacing='0' border='0'>

                      <tr>
                        <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                          <xsl:for-each select="Trainings/Training">
                            <table cellpadding="0"  cellspacing="0" border="0" style="margin-bottom:4px;word-break: break-all; word-wrap:break-word;">
                              <tr>
                                <td width="132" height="22" style="text-align:right;font-weight:bold;">
                                  <p style="width:132px;text-align:right;font-weight:bold;">
                                    <xsl:value-of select="DateStart"/> - <xsl:choose>
                                      <xsl:when test="DateEnd!=''">
                                        <xsl:value-of select="DateEnd"/>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        至今
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </p>
                                </td>
                                <td width="402" style="padding-left:14px; font-weight:bold">
                                  <span style="display:inline-block;margin:0 2px">
                                    <xsl:value-of select="Machinery"/>
                                  </span>
                                </td>
                              </tr>
                              <xsl:if test="TrainingName!=''">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="402" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>培训课程：</span>
                                      <xsl:value-of select="TrainingName"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="CertificateName!=''">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="402" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>所获证书：</span>
                                      <xsl:value-of select="CertificateName"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="CityName!=''">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="402" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>培训地点：</span>
                                      <xsl:value-of select="CityName"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="TrainingDescription!=''">
                                <tr>
                                  <td width="132" height="22" ></td>
                                  <td width="402" style="padding-left:14px;">
                                    <p style="line-height:20px;">
                                      <span>培训描述：</span>
                                      <xsl:value-of select="TrainingDescription"/>
                                    </p>
                                  </td>
                                </tr>
                              </xsl:if>
                            </table>
                          </xsl:for-each>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>

            <xsl:choose>
              <xsl:when test="AchieveCertificates/AchieveCertificate">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>证书</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                      <xsl:for-each select="AchieveCertificates/AchieveCertificate">
                        <tr>
                          <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                            <table cellpadding="0" cellspacing="0" border="0">
                              <tr height="20">
                                <td width="54" style="padding-left:12px;">
                                  <xsl:value-of select="AchieveDate"/>
                                </td>
                                <td width="500" style="padding-left:12px;">
                                  <span style="display:inline-block;margin-right:12px;">
                                    <xsl:value-of select="CertificateName"/>
                                  </span>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </td>
                </tr>

              </xsl:when>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="LanguageSkills/LanguageSkill">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>语言能力</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                          <table cellpadding="0" cellspacing="0" border="0">
                            <xsl:for-each select="LanguageSkills/LanguageSkill">
                              <xsl:choose>
                                <xsl:when test="ReadWriteSkill!=''">
                                  <tr height="20">
                                    <td style="padding-left:12px;">
                                      <span style="display:inline-block;">
                                        <xsl:value-of select="LanguageName"/>：
                                      </span>
                                      <span style="display:inline-block;">
                                        读写能力<![CDATA[&nbsp;]]><xsl:value-of select="ReadWriteSkill"/>
                                      </span>
                                      <font style="display:inline-block;padding-left:4px;">|</font>
                                      <span style="display:inline-block;padding-left:4px;">
                                        听说能力<![CDATA[&nbsp;]]><xsl:value-of select="HearSperkSkill"/>
                                      </span>
                                    </td>
                                  </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                  <tr height="20">
                                    <td style="padding-left:12px;">
                                      <span style="display:inline-block;margin-right:4px;">
                                        其他：
                                      </span>
                                      <span style="display:inline-block;margin-right:4px;">
                                        <xsl:value-of select="LanguageName"/>
                                      </span>
                                    </td>
                                  </tr>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:for-each>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>

              </xsl:when>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="ProfessionnalSkills/ProfessionnalSkill">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>专业技能</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="color:#333333;word-break: break-all; word-wrap:break-word;">
                          <table cellpadding="0" cellspacing="0" border="0">
                            <xsl:for-each select="ProfessionnalSkills/ProfessionnalSkill">
                              <tr height="20">
                                <td style="padding-left:12px;">
                                  <span style="display:inline-block;margin-right:4px;">
                                    <xsl:value-of select="SkillName"/>
                                  </span>
                                  <span style="display:inline-block;margin-right:4px;">
                                    <![CDATA[&nbsp;]]><xsl:value-of select="MasterDegree"/>
                                  </span>
                                  <font style="display:inline-block;margin-right:4px;">|</font>
                                  <span style="display:inline-block;margin-right:4px;">
                                    <xsl:value-of select="SkillMonths"/>
                                  </span>
                                </td>
                              </tr>
                            </xsl:for-each>
                          </table>
                        </td>
                      </tr>
                    </table>

                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>

            <xsl:if test="Others/Other/Description!=''">
              <xsl:for-each select="Others/Other">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>
                            <xsl:value-of select="Name"/>
                          </span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width='570' align="center"  cellpadding='0' cellspacing='0' border='0'>
                      <tr>
                        <td style="color:#333333;line-height:20px;padding-left:12px;word-break: break-all; word-wrap:break-word;">
                          <xsl:value-of select='Description'/>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </xsl:for-each>
            </xsl:if>


            <xsl:choose>
              <xsl:when test="AssistantAccessorys/AssistantAccessory">
                <tr>
                  <td>
                    <br/>
                    <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tr>
                        <td class="has-indicator">
                          <span>附件</span>
                        </td>
                      </tr>
                    </table>
                    <br/>
                    <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td align="center">
                          <xsl:for-each select="AssistantAccessorys/AssistantAccessory">
                            附件<xsl:number value="position()" format="1"/>(<a>
                              <xsl:attribute name="href">
                                <xsl:value-of select="AccessoryFilePath"/>
                              </xsl:attribute>
                              <xsl:attribute name="target">_blank</xsl:attribute>
                              点击查看
                            </a>)
                          </xsl:for-each>
                        </td>
                      </tr>

                    </table>
                  </td>
                </tr>

              </xsl:when>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="UploadResumeFiles/UploadResumeFile">
                <xsl:for-each select="UploadResumeFiles/UploadResumeFile">
                  <tr>
                    <td>
                      <br/>
                      <table width="570" height="30" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                        <tbody>
                          <tr>
                            <td class="has-indicator">
                              <span>附件简历</span>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <br/>
                      <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                        <tbody>
                          <tr>
                            <td>
                              该简历已通过病毒扫描可安全打开。由于智联招聘未对其进行人工筛选，若与贵公司的职位要求不符合敬请谅解！请点击附件即可打开查看或保存该简历。 如果不能正常查看附件，请
                              <a class="blue12line" style="color:#8866ff;" target="_blank" rel="nofollow">
                                <xsl:attribute name="href">
                                  <xsl:value-of select="ResumeFilePath"/>
                                </xsl:attribute>
                                点击此处
                              </a>下载
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>

                </xsl:for-each>
              </xsl:when>

            </xsl:choose>
            <xsl:choose>
              <xsl:when test="PasteResumeTexts/PasteResumeText">
                <tr >
                  <td>
                    <br/>
                    <table width="570" align="center" height="30" cellpadding="0" cellspacing="0" border="0" bgcolor="#f6f8fa">
                      <tbody>
                        <tr>
                          <td class="has-indicator">
                            <span>简历内容</span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <br/>
                    <table width="570" align="center" cellpadding="0" cellspacing="0" border="0">
                      <tbody>
                        <tr>
                          <td style="word-break: break-all; word-wrap:break-word;">
                            <xsl:for-each select="PasteResumeTexts/PasteResumeText">
                              <div>
                                <p>
                                  <xsl:value-of select="ResumeText"/>
                                </p>
                              </div>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>
          </table>
        </td>
      </tr>
    </table>
    <table class="is-bordered" width="600" height="80" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
      <tr>
        <td width="165" style="border-left: 1px solid #d8dce6;"></td>
        <td width="270"  style="text-align:center;">

        </td>
        <td width="165" style="border-right: 1px solid #d8dce6;"></td>
      </tr>
    </table>

  <table class="is-bordered is-bottom" width="600" cellpadding="0" cellspacing="0" border="0">
    <tr height="80" bgcolor="#464b54">
      <td width="15"></td>
      <td>
        <img src="https://rd5-public.zhaopin.cn/imgs/zplogo-white.png" alt="logo" width="112" height="40"/>
      </td>
      <td width="5"></td>
      <td style="color: #ffffff;font-size: 15px;">
        415万+企业信赖的人才招聘平台，免费注册发布职位！
      </td>
      <td>
        <a href="https://rd5.zhaopin.com/custom/register?za=2&amp;from=email" style="display: inline-block; background-color: #ffffff; color:#262B33; padding: 6px 12px;border-radius: 100px;text-decoration:none;">去看看 &gt;</a>
      </td>
      <td width="15"></td>
    </tr>
    <tr height="30">
      <td colspan="6" style="color: #696E7D;padding-left: 5px;border-left: 1px solid #d8dce6;border-right: 1px solid #d8dce6;border-bottom: 1px solid #d8dce6;">
        本邮件由系统发送，请勿回复。
      </td>
    </tr>
  </table>
  </xsl:template>
</xsl:stylesheet>

