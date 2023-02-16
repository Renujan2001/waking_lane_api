<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help-doc.aspx.cs" Inherits="api_business_tax.Help_doc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <style>
        .pre {
            display: block;
            padding: 9.5px;
            margin: 0 0 10px;
            font-size: 13px;
            line-height: 1.428571429;
            color: #a5a3a3;
            word-break: break-all;
            word-wrap: break-word;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .left-div {
            height: 90%;
            top: 0;
            bottom: 0;
            z-index: 3;
            position: fixed;
        }
        .right-div {
            border-left: solid 1px white;
            margin-left: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container body-content">
            <div class="row">
                <div class="col-md-2 left-div">
                    <div class="header">
                        Regular Tax API
                    </div>

                    <hr />
                    <div><a href="#intro">Introduction</a></div>
                    <div><a href="#apiListRegularTax">List of RegularTax</a></div>
                    <div><a href="#apiRTinfo">Regular Tax Info</a></div>
                    <div><a href="#apiValidateUser">Regular Tax Payment info</a></div>
                </div>
                <div class="col-md-9 right-div">
                    <h3>API Help Document</h3>
                    <hr />
                    <div id="intro">
                        <h3 class="heading">Introduction</h3>
                        <p>
                            The REST Client API provides a set of RESTful services for creating, updating, retrieving,
deleting and query documents and metadata.The protocol used to transport the data is HTTP. This section provides a brief overview of the
features of the APIs.                       
                        </p>
                        <hr />
                    </div>

                    <div id="apiListRegularTax">
                        <h3 class="heading">List of RegularTax</h3>
                        <div>
                            <div>
                                <div>Introduction</div>
                            </div>
                            <div class="pre row">
                                <div class="col-sm-12 ">This API helps to get all regular incomes by using username and tax type.</div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div>Base URL</div>
                            </div>
                            <div class="pre row">
                                <div class="col-sm-12 ">http://regular-tax-api.nekfa.com/api/getaallbusinesstax</div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div>Request type</div>
                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-3 ">Method</div>
                                    <div class="col-sm-9">POST</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 ">Content type</div>
                                    <div class="col-sm-9">application/json</div>
                                </div>
                            </div>


                        </div>

                        <div>
                            <div>
                                <div>List of parameters</div>

                            </div>
                            <div class="pre">


                                <div class="row">
                                    <div class="col-sm-2 ">ClientID</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">
                                        ClientID is the most important parameter.LocationId use to idntify the database connection.
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>

                                <br />
                                <br />
                                <div class="row">
                                    <div class="col-sm-2 ">UserName</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">
                                        Define a username for user
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>

                                <br />
                                <br />
                                <div class="row">
                                    <div class="col-sm-2 ">Type</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">
                                        Define a type for getting regular tax details
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>

                                <br />
                                <br />
                                <hr />
                                <div class="row">
                                    <div class="col-sm-2 ">Eg:</div>
                                </div>

                               <ol>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">{</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; </span><span style="color: #a31515;">&quot;ClientID&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;V2F0dGFsYVVDLzE=&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #a31515;"> &quot;UserName&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;0715848810&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #a31515;">&nbsp; &quot;Type&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;BUSINESS&nbsp;TAX&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">}</span></div>
    </li>
</ol>
                            </div>



                        </div>
                        <div>
                            <div>
                                <div>Response</div>
                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-3 ">Response type</div>
                                    <div class="col-sm-9">JSON</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 ">Response Status</div>
                                    <div class="col-sm-9">200 - OK</div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-3 ">Response values</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                       <ol>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">{</span><span style="color: #000000;">&nbsp;&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp;&nbsp;</span><span style="color: #a31515;">&quot;arr&quot;</span><span style="color: #000000;">:&nbsp;{</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;msg&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;OK&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;msgdesc&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;result&nbsp;found&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;res&quot;</span><span style="color: #000000;">:&nbsp;[</span><span style="color: #000000;">&nbsp; &nbsp; &nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;{</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;ID&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #098658;">3569</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RefNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;B%21/10&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Title&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Mr&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;Name&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;MURUGAIYA&nbsp;UMAKANDAN&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;Address&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;NO&nbsp;21/10,CHURCH&nbsp;LANE,WATTALA&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;State&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;ACTIVE&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Rental&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Balance&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Warrent&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CurrentAmt&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;1.00&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;CDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;2/22/2021&nbsp;9:42:51&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Harindiw&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;RegisterDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;2/22/2021&nbsp;12:00:00&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;TelephoneNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0773901192&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Category&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;B&nbsp;-&nbsp;BUILDING&nbsp;CONSTRUCTION&nbsp;EQUPMENTS&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IsApplyFutureProcess&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;AnnualValue&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;PremisesId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;businessDivision&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;streetId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IncomeType&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;BUSINESS&nbsp;TAX&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Division&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;RI01&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; },</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;ID&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #098658;">2920</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RefNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;B%29/21&quot;</span><span style="color: #000000;">,</span><span style="color: #000000;">&nbsp;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #a31515;">&quot;Title&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Mr&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Name&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;L.S.U.KARUNAGODA&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Address&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;29/21,THELAGAPATHA&nbsp;ROAD,WATTALA&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;State&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;ACTIVE&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Rental&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Balance&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Warrent&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CurrentAmt&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;2.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;7/30/2020&nbsp;11:37:26&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Harindiw&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RegisterDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;7/30/2020&nbsp;12:00:00&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;TelephoneNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0773901192&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Category&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&nbsp;-&nbsp;ALIMINIUM&nbsp;WORK&nbsp;SHOP&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IsApplyFutureProcess&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;AnnualValue&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;1000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;PremisesId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;1000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;businessDivision&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;streetId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IncomeType&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;BUSINESS&nbsp;TAX&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Division&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;RI01&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; ]</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; }</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">}</span></div>
    </li>
</ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>Response Details</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "arr" has three objects "msg" ,"msgdesc" and "res". API provide the "res" object if "msg" is "OK". otherwise res object is null.
                                </div>                               
                            </div>
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">Description:&nbsp;If&nbsp;user&nbsp;have&nbsp;selected&nbsp;type&nbsp;regular&nbsp;income,</span></div>
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">msg:</span><span style="color: #0451a5;">&quot;OK&quot;</span></div>
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">msgdesc:&nbsp;</span><span style="color: #0451a5;">&quot;result&nbsp;found&quot;</span></div>
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">res: Provide list of all the income details</span></div>
                                </div>
                            </div>
                              <br />
                             <div class="row">
                                <div class="col-sm-12 ">
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">Other Responses</span></div>
                                </div>                               
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">msg</div>
                                <div class="col-sm-4">msgdesc</div>
                                <div class="col-sm-1">res</div>
                            </div>
                            <br />                           
                            <div class="row">
                                <div class="col-sm-5 ">If use name is empty or null,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Username cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If ClientID is empty or null,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Client ID cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If user insert invalid Type,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Type cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>

                            </div>
                             <br />
                            <div class="row">
                                <div class="col-sm-5 ">If user hasen't any regular income for selected type,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"No Record were found"</div>
                                <div class="col-sm-1">"0"</div>

                            </div>
                             <br />
                            <div class="row">
                                <div class="col-sm-5 ">If user try to login invalid location id or config file not updated</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Cannot found any connection string details. Please update the web.config"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>                             
                             <br />
                        </div>




                    </div>

                    <div id="apiRTinfo">
                        <h3 class="heading">Regular Tax Info</h3>
                        <div>
                            <div>
                                <div>Introduction</div>
                            </div>
                            <div class="pre row">
                                <div class="col-sm-12 ">This API helps to get regular tax information.</div>
                            </div>

                        </div>
                        <div>
                            <div>
                                <div>Base URL</div>
                            </div>
                            <div class="pre row">
                                <div class="col-sm-12 ">http://regular-tax-api.nekfa.com/api/businesstaxinfo</div>
                            </div>


                        </div>
                        <div>
                            <div>
                                <div>Request type</div>
                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-3 ">Method</div>
                                    <div class="col-sm-9">POST</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 ">Content type</div>
                                    <div class="col-sm-9">application/json</div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div>
                                <div>List of parameters</div>

                            </div>
                            <div class="pre">


                                <div class="row">
                                    <div class="col-sm-2 ">ClientID</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">
                                        ClientID is the most important parameter.ClientID use to idntify the database connection.
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>

                                <br />
                                <br />
                                <div class="row">
                                    <div class="col-sm-2 ">RefNO</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">
                                      RefNo is unique identified ID getting from "tbl_business_tax"
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>
                                <br />
                                <hr />
                                <div class="row">
                                    <div class="col-sm-2 ">Eg:</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <ol>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp;</span><span style="color: #a31515;">&quot;ClientID&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;VGVzdFVDLzE=&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp;</span><span style="color: #a31515;">&quot;RefNO&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;2928&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">}</span></div>
    </li>
</ol>
                                    </div>
                                </div>

                            </div>



                        </div>
                        <div>
                            <div>
                                <div>Response</div>
                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-3 ">Response type</div>
                                    <div class="col-sm-9">JSON</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 ">Response Status</div>
                                    <div class="col-sm-9">200 - OK</div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-3 ">Response values</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                      
                                        <ol>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;arr&quot;</span><span style="color: #000000;">:&nbsp;{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;msg&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;OK&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;msgdesc&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;result&nbsp;found&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;res&quot;</span><span style="color: #000000;">:&nbsp;[</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;ID&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #098658;">2928</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RefNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;B12&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Title&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Mr&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Name&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;P.A.D.R.T.&nbsp;PAUL&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Address&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;NO,&nbsp;12&nbsp;VIJAYA&nbsp;ROAD&nbsp;,&nbsp;WATTALA&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;State&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;ACTIVE&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Rental&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Balance&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Warrent&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CurrentAmt&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;8/10/2020&nbsp;12:50:25&nbsp;PM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;nisansala&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RegisterDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;8/10/2020&nbsp;12:00:00&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;TelephoneNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Category&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;E&nbsp;-&nbsp;ENGINEERING&nbsp;SERVICES&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IsApplyFutureProcess&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;AnnualValue&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;PremisesId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;businessDivision&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;streetId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IncomeType&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;BUSINESS&nbsp;TAX&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Division&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;RI01&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; ]</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; }</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">}</span></div>
    </li>
</ol>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div>Response Details</div>
                                <br />
                            </div>
                          <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "arr" has three objects "msg" ,"msgdesc" and "res". API provide the "res" object if "msg" is "OK". otherwise res object is null.
                                </div>                               
                            </div>
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">Description: For valid client details and valid regular income ID,</span></div>
<div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">msg:</span><span style="color: #0451a5;">&quot;OK&quot;</span></div>
<div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">msgdesc:&nbsp;</span><span style="color: #0451a5;">&quot;result&nbsp;found&quot;</span></div>
<div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">res: Provide all the regular income details</span></div>
                                </div>
                            </div>
                              <br />
                             <div class="row">
                                <div class="col-sm-12 ">
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">Other Responses</span></div>
                                </div>                               
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">msg</div>
                                <div class="col-sm-4">msgdesc</div>
                                <div class="col-sm-1">res</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If ClientID is empty or null,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Client ID cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">For empty or null RefNO(regular tax ID)</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Reference Number cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>

                            </div>
                             <br />
                            <div class="row">
                                <div class="col-sm-5 ">For invalid reference,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Invalid Reference ID"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>
                             <br />                          
                        </div>

                        </div>
                    </div>

                    <div id="apiValidateUser">
                        <h3 class="heading">Regular Tax Payment info</h3>
                        <div>
                            <div>
                                <div>Introduction</div>
                            </div>
                            <div class="pre row">
                                <div class="col-sm-12 ">This API helps to get regular tax payement details.</div>
                            </div>

                        </div>
                        <div>
                            <div>
                                <div>Base URL</div>
                            </div>
                            <div class="pre row">
                                <div class="col-sm-12 ">http://regular-tax-api.nekfa.com/api/businesstaxpaymentinfo</div>
                            </div>


                        </div>
                        <div>
                            <div>
                                <div>Request type</div>
                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-3 ">Method</div>
                                    <div class="col-sm-9">POST</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 ">Content type</div>
                                    <div class="col-sm-9">application/json</div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div>
                                <div>List of parameters</div>

                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-2 ">ClientID</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">
                                        ClientID is the most important parameter.ClientID use to idntify the database connection.
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>
                                <br />
                                <br />
                                <div class="row">
                                    <div class="col-sm-2 ">RefNO</div>
                                    <div class="col-sm-2 ">Description</div>
                                    <div class="col-sm-8 ">RefNo is unique identified ID getting from "tbl_business_tax"</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Required</div>
                                    <div class="col-sm-8 ">Yes</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2 "></div>
                                    <div class="col-sm-2 ">Data type</div>
                                    <div class="col-sm-8 ">string</div>
                                </div>
                                <br />
                                <br />
                                <hr />
                                <div class="row">
                                    <div class="col-sm-2 ">Eg:</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <ol>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp;</span><span style="color: #a31515;">&quot;ClientID&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;VGVzdFVDLzE=&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #a31515;"> &quot;RefNO&quot;</span><span style="color: #000000;">:</span><span style="color: #0451a5;">&quot;3112&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">}</span></div>
    </li>
</ol>
                                    </div>
                                </div>

                            </div>



                        </div>
                        <div>
                            <div>
                                <div>Response</div>
                            </div>
                            <div class="pre">
                                <div class="row">
                                    <div class="col-sm-3 ">Response type</div>
                                    <div class="col-sm-9">JSON</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3 ">Response Status</div>
                                    <div class="col-sm-9">200 - OK</div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-3 ">Response values</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
      <ol>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;arr&quot;</span><span style="color: #000000;">:&nbsp;{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;msg&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;OK&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;msgdesc&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;result&nbsp;found&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;res&quot;</span><span style="color: #000000;">:&nbsp;[</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;ID&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #098658;">3112</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RefNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;B%40&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Title&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Mr&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Name&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;SCAN&nbsp;DISTRIBUTION&nbsp;CENTRE&nbsp;LANKA&nbsp;PVT&nbsp;LTD&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Address&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;NO&nbsp;40,SRI&nbsp;WIKAMA&nbsp;2&nbsp;ND&nbsp;LANE,WATTALA&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;State&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;ACTIVE&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Rental&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Balance&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Warrent&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CurrentAmt&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;-3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;1/7/2021&nbsp;12:00:00&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;CUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;Harindiw&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;RegisterDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;9/11/2020&nbsp;12:00:00&nbsp;AM&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;TelephoneNO&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Category&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;L&nbsp;-&nbsp;LOGISTIC&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IsApplyFutureProcess&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateDate&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;UpdateUser&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;AnnualValue&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;PremisesId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;businessDivision&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;streetId&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;IncomeType&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;BUSINESS&nbsp;TAX&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Division&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;RI01&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp; ]</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; },</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;pay_arr&quot;</span><span style="color: #000000;">:&nbsp;{</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Post_fee&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;0.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Application_fee&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3000.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Total_amount&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3036.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;totWithPostFee&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;3036.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Service_fee&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;36.00&quot;</span><span style="color: #000000;">,</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: #a31515;">&quot;Service_feeWithPost&quot;</span><span style="color: #000000;">:&nbsp;</span><span style="color: #0451a5;">&quot;36.00&quot;</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">&nbsp; &nbsp; }</span></div>
    </li>
    <li>
        <div style="color: #000000;background-color: #fffffe;font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace;font-weight: normal;font-size: 12px;line-height: 18px;white-space: pre;"><span style="color: #000000;">}</span></div>
    </li>
</ol>
                                        
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div>
                           <div>
                            <div>Response Details </div>
                            <br />
                        </div>
                        <div class="pre">
                           <div class="row">
                                <div class="col-sm-12 ">                                   
                                    "arr" as two field,<br />
                                    1.BusinessTaxReturnInfo > "arr" <br />
                                    2.ReturnPayInfo > "res"<br />                                                                         
                                     "arr" has three field "msg" ,"msgdesc" and "res". API provide the "arr" object if "msg" is "OK". otherwise res object is null.
                                </div>                      
                            </div>
                              <div style="color: #000000; background-color: #fffffe;">
                               <p><img src="data:image/png;base64,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"></p>
                              </div>
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">Description:&nbsp;If&nbsp;user&nbsp;have&nbsp;selected&nbsp;type&nbsp;regular&nbsp;income,</span></div>
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">msg:</span><span style="color: #0451a5;">&quot;OK&quot;</span></div>
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">msgdesc:&nbsp;</span><span style="color: #0451a5;">&quot;result&nbsp;found&quot;</span></div>
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">res: Provide list of all the income details</span></div>
                                </div>
                            </div>
                              <br />
                             <div class="row">
                                <div class="col-sm-12 ">
                                    <div style="color: #000000; background-color: #fffffe; font-family: 'IBMPlexMono, 'Courier New', monospace', Consolas, 'Courier New', monospace; font-weight: normal; font-size: 12px; line-height: 18px; white-space: pre;"><span style="color: #000000;">Other Responses</span></div>
                                </div>                               
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">msg</div>
                                <div class="col-sm-4">msgdesc</div>
                                <div class="col-sm-1">res</div>
                            </div>
                            <br />                           
                            <div class="row">
                                <div class="col-sm-5 ">If use name is empty or null,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Username cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If ClientID is empty or null,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Client ID cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If user insert invalid Type,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Type cannot be empty"</div>
                                <div class="col-sm-1">"0"</div>

                            </div>
                             <br />
                            <div class="row">
                                <div class="col-sm-5 ">If user hasen't any regular income for selected type,</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"No Record were found"</div>
                                <div class="col-sm-1">"0"</div>

                            </div>
                             <br />
                            <div class="row">
                                <div class="col-sm-5 ">If user try to login invalid location id or config file not updated</div>
                                <div class="col-sm-2 ">"error"</div>
                                <div class="col-sm-4">"Cannot found any connection string details. Please update the web.config"</div>
                                <div class="col-sm-1">"0"</div>
                            </div>                             
                             <br />
                        </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
