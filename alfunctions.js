		
function phnum(field)
{
 with(field)
  {
  var num='1234567890';
  str=field.value;
  if(str.length>0)
{
  for(i=0;i<str.length;i++)
	{
		if(num.indexOf(str.charAt(i),0)==-1)
		{
			alert("Please enter only numbers");
			field.focus();
			return 0;
			
		}
	}
	
 } 
  if(str.length>0 && str.length!=10)
  {
	alert("Enter exactly 10 numbers in phone number field");
	field.focus();
	return 0;
  }
 return 1;
}
}



function checkforempty(field,alttxt)				
{
	with (field)
	{
	 		if(field.value=="")
			{
				alert(alttxt);
				field.focus();
				return  0;
			}
	}
	return 1;
}




function isalpha(field)
{
     with(field)
	{	
	var temp=1;
	var i=0;
	var lwr='abcdefghijklmnopqrstuvwxyz';
	var upr='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	var spl='.';
	var val=lwr+upr+spl;
  	parm=field.value;
	if(parm=="")
  	{
                     alert("Please enter the name");
                      field.focus();
		field.value="";
		return 0;
	}
	
	{
		if(val.indexOf(parm.charAt(i),0)==-1)
		{
			alert("please enter only alphabts");
			field.focus();
			field.value="";
			return 0;
		}
	
	}

}
	
} 


function num(field)
	{
	with(field)
	{
	var num='1234567890';
	str=field.value;
   	if(str.length>0)
	{
  	for(i=0;i<str.length;i++)
	{
		if(num.indexOf(str.charAt(i),0)==-1)
		{
			alert("Please enter only numbers");
			field.focus();
			field.value="";
			return 0;
			
		}
	}
	} 
   	return 1;	
	}
}

			
			function empty1(feedback)   	
	       				 {
							with(feedback)
							{
								if((checkforempty(fd1,"ENTER Your USER NAME"))==0)	
									{
										return false;
									}

								if((checkforempty(fd3,"ENTER YOUR FEEDBACK"))==0)	
									{
										return false;
									}
								if((checkforempty(fd4,"ENTER YOUR E_MAIL ID"))==0)	
									{
											return false;
									}
								if((checkforempty(phone,"ENTER YOUR PHNO"))==0)	
									{
										return false;
									}
									return true;
							}
					}
		
		
					function empty2(signup)   		
	       					 {
									with(signup)
										{
											
											if((checkforempty(f1,"ENTER USER FIRST NAME"))==0)	
												{
													return false;
												}
											if((checkforempty(f2,"ENTER USER LAST NAME"))==0)	
												{
													return false;
												}
											if((checkforempty(f3,"ENTER Your USER NAME"))==0)	
												{
													return false;
												}
											if((checkforempty(p1,"ENTER USER PASSWORD"))==0)	
												{
													return false;
												}
											
											if((checkforempty(e1,"ENTER EMAIL ADDRESS"))==0)	
												{
													return false;
												}
											if((checkforempty(text6,"ENTER DATE OF BIRTH IN FORMAT"))==0)	
												{
													return false;
												}
											
											if(slt.value=="select2")	
												{
													alert("SELECT GENDER");
													return false;
												}
											if((checkforempty(addr,"ENTER ADDREESS"))==0)	
												{
													return false;
												}
											if((checkforempty(m1,"ENTER phone no"))==0)	
												{
													return false;
												}
											if((checkforempty(m2,"ENTER alt phone no"))==0)	
												{
													return false;
												}
											
											if((phnum(m1,"ENTER EXACTLY 10 NUMBERS"))==0)
												{
													return false;
												}
											if((phnum(m2,"ENTER EXACTLY 10 NUMBERS"))==0)
												{
													return false;
												}
											
													  
													
										}
										return true;
								}
	
		
		
					        function validate_signup(signup)   		
	       					 {
									with(signup)
										{
											
											if((checkforempty(name10,"ENTER USER FIRST NAME"))==0)	
												{
													return false;
												}
											if((checkforempty(name11,"ENTER USER LAST NAME"))==0)	
												{
													return false;
												}
											if((checkforempty(name12,"ENTER Your USER NAME"))==0)	
												{
													return false;
												}
											if((checkforempty(name13,"ENTER USER PASSWORD"))==0)	
												{
													return false;
												}
											
											if((checkforempty(name14,"ENTER EMAIL ADDRESS"))==0)	
												{
													return false;
												}
											if((checkforempty(text7,"ENTER DATE OF BIRTH IN FORMAT"))==0)	
												{
													return false;
												}
											
											if(name15.value=="select2")	
												{
													alert("SELECT GENDER");
													return false;
												}
											if((checkforempty(name16,"ENTER ADDREESS"))==0)	
												{
													return false;
												}
											if((checkforempty(name17,"ENTER phone no"))==0)	
												{
													return false;
												}
											if((checkforempty(name18,"ENTER alt phone no"))==0)	
												{
													return false;
												}
											
											if((phnum(name17,"ENTER EXACTLY 10 NUMBERS"))==0)
												{
													return false;
												}
											if((phnum(name18,"ENTER EXACTLY 10 NUMBERS"))==0)
												{
													return false;
												}
											
													  
													
										}
										return true;
								}
							function validate_add(adminadd)		
							{
								with(adminadd)
								{
									if(cate.value=="select1")	
									{
													alert("SELECT CATEGORY");
													return false;
									}
									if((checkforempty(name1,"Enter Name of the Product"))==0)	
										{
											return false;
										}
									if((checkforempty(qty,"Enter Quantity"))==0)	
										{
											return false;
										}
									if((checkforempty(amt,"Enter Amount"))==0)	
										{
											return false;
										}
									if((checkforempty(noa,"Enter No Of Availibility"))==0)	
										{
											return false;
										}
											return true;
								}
							}
							
							function validate_empty57(input)		
							{
								with(input)
								{
									if((checkforempty(d1,"Enter BILL STARTING DATE"))==0)	
										{
											return false;
										}
									if((checkforempty(d2,"Enter BILL ENDING DATE"))==0)	
										{
											return false;
										}
											return true;
								}
							}
							function validate_empty58(input)		
							{
								with(input)
								{
									if((checkforempty(d1,"Enter STARTING DATE"))==0)	
										{
											return false;
										}
									if((checkforempty(d2,"Enter ENDING DATE"))==0)	
										{
											return false;
										}
											return true;
								}
							}
							function validate_empty59(raw)		
							{
								with(raw)
								{
									if(d1.value=="sa")
										{
											alert("SELECT RAW MATERIAl NO");
											return false;
										}
											return true;
								}
							}
					function validate_empty4(supervisor)   		
							{
								with(supervisor)
								{
									if((checkforempty(dpid,"ENTER DEPARTMENT NO"))==0)	
										{
											return false;
										}
									if((checkforempty(suprid,"ENTER SUPERVISOR ID"))==0)	
										{
											return false;
										}
									if((checkforempty(suprname,"ENTER SUPERVISOR NAME"))==0)	
										{
											return false; 
										}
									if((checkforempty(area3,"ENTER SUPERVISOR ADDRESS"))==0)	
										{
											return false;
										}
									if((checkforempty(noe,"ENTER NO OF EMPLOYEES WORKING"))==0)	
										{
											return false;
										}
									if((checkforempty(wno,"ENTER WAREHOUSE NO"))==0)	
										{
											return false;
										}
											if((num(dpid))==0)
												{
													return false;
												}
											if((num(suprid))==0)
												{
													return false;
												}
											if((isalpha(suprname))==0)
												{
													return false;
												}
											if((num(noe))==0)
												{
													return false;
												}
										if((num(wno))==0)
												{
													return false;
												}
													return true;
								}
					}	
					
					
					
						


							function validate_empty6(dpt)   	
									{
								with(dpt)
									{
										if((checkforempty(dname,"ENTER DEPARTMENT NAME"))==0)	
										{
											return false;
										}
								
								if((checkforempty(dloc,"ENTER DEPARTMENT LOCATION"))==0)	
										{
											return false;
										}
								if((checkforempty(noe,"ENTER OF EMPLOYEES WORKING "))==0)	
										{
											return false;
										}
								if((checkforempty(dsup,"ENTER OF DEPARTMENT SUPERVISOR"))==0)	
										{
											return false;
										}
								if((checkforempty(ds,"ENTER NUMBER OF SECTIONS"))==0)	
										{
											return false;
										}
							
								if((isalpha(dname))==0)
										{
											return false;
										}
								if((num(noe))==0)
										{
											return false;
										}
								if((isalpha(dsup))==0)
										{
												return false;
										}
								if((num(ds))==0)
										{
												return false;
										}
											return true;
							}
				}
							
								
	function validate_empty7(conttype)   	
	        {
		with(conttype)
	{
		
	if(slt.value=="se")
			{
				alert("SELECT TENDER NO");
				return false;
			}
	
	if(ss.value=="sa")
			{
				alert("SELECT CONTRACTOR ID");
				return false;
			}
	
	
	
	
		return true;
	}
	}


		function validate_empty8(qaccept)   	
	        {
		with(qaccept)
	{
		
	if((checkforempty(text6,"ENTER ACCEPTANCE DATE"))==0)	
	{
	return false;
	}
	if(slt.value=="sa")
			{
				alert("SELECT CONTRACTOR STATUS");
				return false;
			}
	if(did.value=="sa")
			{
				alert("SELECT CONTRACTOR TYPE NO");
				return false;
			}
	
	
		return true;
	}
	}
	

	
		function validate_empty10(ware)   	
	        {
				with(ware)
					{
							if((checkforempty(wloc,"ENTER WAREHOUSE LOCATION"))==0)	
									{
										return false;
									}
							if((checkforempty(area,"ENTER AVAILABLE GOODS"))==0)	
									{
										return false;
									}
							if((checkforempty(tqty,"ENTER NO OF GOODS"))==0)	
									{
										return false;
									}
										
							if((isalpha(wloc))==0)
									{
										return false;
									}
										return true;
					}
			}
					
	
	function validate_empty19(waretp)   	
	        {
		with(waretp)
	{
		
	
	if(slt.value=="sa")
			{
				alert("SELECT WAREHOUSE NO");
				return false;
			}
	if(dd.value=="ss")
			{
				alert("SELECT BILL BNO");
				return false;
			}
	
	
	
			return true;
	}
	}

	
	

		function validate_empty9(quat)   	
	        {
					with(quat)
					{
						if(did.value=="sa")
						{
							alert("SELECT CONTRACTOR TYPE ID");
							return false;
						}
				
	
	
					return true;
					}
			}

	
		function validate_empty11(contract)   	
	        {
		with(contract)
	{
	if((checkforempty(cname,"ENTER CONTRACTOR NAME"))==0)	
	{
	return false;
	}
	if((checkforempty(compname,"ENTER CONTRACTOR COMPANY"))==0)	
	{
	return false;
	}
	if((checkforempty(area,"ENTER CONTRACTOR ADDRESS"))==0)	
	{
	return false;
	}
	
	if((phnum(phno,"ENTER 10 NUMBER"))==0)	
	{
	return false;
	}
	
	if((isalpha(cname))==0)
	{
			return false;
	}
	if((isalpha(compname))==0)
	{
			return false;
	}
			return true;
	}
	}
	
	
	
	
function validate_empty12(payment)   	
	        {
		with(payment)
	{
		
	if((checkforempty(text6,"ENTER DATE OF PAYMENTS"))==0)	
	{
	return false;
	}
	if((checkforempty(amt,"ENTER AMOUNT"))==0)	
	{
	return false;
	}
	
	
	
	
	if((num(amt))==0)
	{
			return false;
	}
		return true;
		
	}
	}

	
function validate_empty13(raw)   	
	        {
		with(raw)
	{
		
		
	
	if(did.value=="sa")
			{
				alert("SELECT CONTRACTOR TYPE NO");
				return false;
			}
	
	
	
		return true;
	}
	}
	


function validate_empty14(receivedmat)   	
	        {
		with(receivedmat)
	{
		if(rmid.value=="sa")
			{
				alert("SELECT RAW MATERIAL ID");
				return false;
			}
	if((checkforempty(qty,"ENTER QUANTITY"))==0)	
	{
	return false;
	}
	if((checkforempty(ramt,"ENTER AMOUNT"))==0)	
	{
	return false;
	}
	if((checkforempty(pamt,"ENTER CONTRACTOR NO"))==0)	
	{
	return false;
	}
	
	if(slt.value=="ss")
			{
				alert("SELECT WARE TYPE NO");
				return false;
			}
	if(dd.value=="ss")
			{
				alert("SELECT DEPARMENT NO");
				return false;
			}
			
		
			return true
	}
	}


function validate_empty15(bbill)   	
	        {
		with(bbill)
	{
		
	if((checkforempty(text6,"ENTER BILL DATE"))==0)	
	{
	return false;
	}
	if((checkforempty(qty,"ENTER QUANTITY"))==0)	
	{
	return false;
	}
	if((checkforempty(amt,"ENTER RAW MATERIAL ID"))==0)	
	{
	return false;
	}
	if((checkforempty(did,"ENTER CONTRACTOR TYPE NO"))==0)	
	{
	return false;
	}
	
	if((num(qty))==0)
	{
			return false;
	}
	
	if((num(amt))==0)
	{
			return false;
	}
	
		return true;
	}
	}




//date picker



var winCal;
var dtToday=new Date();
var Cal;
var docCal;
var MonthName=["January", "February", "March", "April", "May", "June","July", 
	"August", "September", "October", "November", "December"];
var WeekDayName=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];	
var exDateTime;//Existing Date and Time

//Configurable parameters
var cnTop="200";//top coordinate of calendar window.
var cnLeft="500";//left coordinate of calendar window
var WindowTitle ="DateTime Picker";//Date Time Picker title.
var WeekChar=2;//number of character for week day. if 2 then Mo,Tu,We. if 3 then Mon,Tue,Wed.
var CellWidth=20;//Width of day cell.
var DateSeparator="-";//Date Separator, you can change it to "/" if you want
var TimeMode=24;//default TimeMode value. 12 or 24

var ShowLongMonth=true;//Show long month name in Calendar header. example: "January".
var ShowMonthYear=true;//Show Month and Year in Calendar header.
var MonthYearColor="#cc0033";//Font Color of Month and Year in Calendar header.
var WeekHeadColor="#e6ddb9";//Background Color in Week header.
var SundayColor="#6699FF";//Background color of Sunday.
var SaturdayColor="#CCCCFF";//Background color of Saturday.
var WeekDayColor="white";//Background color of weekdays.
var FontColor="#996600";//color of font in Calendar day cell.
var TodayColor="#FFFF33";//Background color of today.
var SelDateColor="#FFFF99";//Backgrond color of selected date in textbox.
var YrSelColor="#cc0033";//color of font of Year selector.
var ThemeBg="";//Background image of Calendar window.
//end Configurable parameters
//end Global variable

function NewCal(pCtrl,pFormat,pShowTime,pTimeMode)
{
	Cal=new Calendar(dtToday);
	if ((pShowTime!=null) && (pShowTime))
	{
		Cal.ShowTime=true;
		if ((pTimeMode!=null) &&((pTimeMode=='12')||(pTimeMode=='24')))
		{
			TimeMode=pTimeMode;
		}		
	}	
	if (pCtrl!=null)
		Cal.Ctrl=pCtrl;
	if (pFormat!=null)
		Cal.Format=pFormat.toUpperCase();
	
	exDateTime=document.getElementById(pCtrl).value;
	if (exDateTime!="")//Parse Date String
	{
		var Sp1;//Index of Date Separator 1
		var Sp2;//Index of Date Separator 2 
		var tSp1;//Index of Time Separator 1
		var tSp1;//Index of Time Separator 2
		var strMonth;
		var strDate;
		var strYear;
		var intMonth;
		var YearPattern;
		var strHour;
		var strMinute;
		var strSecond;
		//parse month
		Sp1=exDateTime.indexOf(DateSeparator,0)
		Sp2=exDateTime.indexOf(DateSeparator,(parseInt(Sp1)+1));
		
		if ((Cal.Format.toUpperCase()=="DDMMYYYY") || (Cal.Format.toUpperCase()=="DDMMMYYYY"))
		{
			strMonth=exDateTime.substring(Sp1+1,Sp2);
			strDate=exDateTime.substring(0,Sp1);
		}
		else if ((Cal.Format.toUpperCase()=="MMDDYYYY") || (Cal.Format.toUpperCase()=="MMMDDYYYY"))
		{
			strMonth=exDateTime.substring(0,Sp1);
			strDate=exDateTime.substring(Sp1+1,Sp2);
		}
		if (isNaN(strMonth))
			intMonth=Cal.GetMonthIndex(strMonth);
		else
			intMonth=parseInt(strMonth,10)-1;	
		if ((parseInt(intMonth,10)>=0) && (parseInt(intMonth,10)<12))
			Cal.Month=intMonth;
		//end parse month
		//parse Date
		if ((parseInt(strDate,10)<=Cal.GetMonDays()) && (parseInt(strDate,10)>=1))
			Cal.Date=strDate;
		//end parse Date
		//parse year
		strYear=exDateTime.substring(Sp2+1,Sp2+5);
		YearPattern=/^\d{4}$/;
		if (YearPattern.test(strYear))
			Cal.Year=parseInt(strYear,10);
		//end parse year
		//parse time
		if (Cal.ShowTime==true)
		{
			tSp1=exDateTime.indexOf(":",0)
			tSp2=exDateTime.indexOf(":",(parseInt(tSp1)+1));
			strHour=exDateTime.substring(tSp1,(tSp1)-2);
			Cal.SetHour(strHour);
			strMinute=exDateTime.substring(tSp1+1,tSp2);
			Cal.SetMinute(strMinute);
			strSecond=exDateTime.substring(tSp2+1,tSp2+3);
			Cal.SetSecond(strSecond);
		}	
	}
	winCal=window.open("","DateTimePicker","toolbar=0,status=0,menubar=0,fullscreen=no,width=195,height=245,resizable=0,top="+cnTop+",left="+cnLeft);
	docCal=winCal.document;
	RenderCal();
}

function RenderCal()
{
	var vCalHeader;
	var vCalData;
	var vCalTime;
	var i;
	var j;
	var SelectStr;
	var vDayCount=0;
	var vFirstDay;

	docCal.open();
	docCal.writeln("<html><head><title>"+WindowTitle+"</title>");
	docCal.writeln("<script>var winMain=window.opener;</script>");
	docCal.writeln("</head><body background='"+ThemeBg+"' link="+FontColor+" vlink="+FontColor+"><form name='Calendar'>");

	vCalHeader="<table border=1 cellpadding=1 cellspacing=1 width='100%' align=\"center\" valign=\"top\">\n";
	//Month Selector
	vCalHeader+="<tr>\n<td colspan='7'><table border=0 width='100%' cellpadding=0 cellspacing=0><tr><td align='left'>\n";
	vCalHeader+="<select name=\"MonthSelector\" onChange=\"javascript:winMain.Cal.SwitchMth(this.selectedIndex);winMain.RenderCal();\">\n";
	for (i=0;i<12;i++)
	{
		if (i==Cal.Month)
			SelectStr="Selected";
		else
			SelectStr="";	
		vCalHeader+="<option "+SelectStr+" value >"+MonthName[i]+"\n";
	}
	vCalHeader+="</select></td>";
	//Year selector
	vCalHeader+="\n<td align='right'><a href=\"javascript:winMain.Cal.DecYear();winMain.RenderCal()\"><b><font color=\""+YrSelColor+"\"><</font></b></a><font face=\"Verdana\" color=\""+YrSelColor+"\" size=2><b> "+Cal.Year+" </b></font><a href=\"javascript:winMain.Cal.IncYear();winMain.RenderCal()\"><b><font color=\""+YrSelColor+"\">></font></b></a></td></tr></table></td>\n";	
	vCalHeader+="</tr>";
	//Calendar header shows Month and Year
	if (ShowMonthYear)
		vCalHeader+="<tr><td colspan='7'><font face='Verdana' size='2' align='center' color='"+MonthYearColor+"'><b>"+Cal.GetMonthName(ShowLongMonth)+" "+Cal.Year+"</b></font></td></tr>\n";
	//Week day header
	vCalHeader+="<tr bgcolor="+WeekHeadColor+">";
	for (i=0;i<7;i++)
	{
		vCalHeader+="<td align='center'><font face='Verdana' size='2'>"+WeekDayName[i].substr(0,WeekChar)+"</font></td>";
	}
	vCalHeader+="</tr>";	
	docCal.write(vCalHeader);
	
	//Calendar detail
	CalDate=new Date(Cal.Year,Cal.Month);
	CalDate.setDate(1);
	vFirstDay=CalDate.getDay();
	vCalData="<tr>";
	for (i=0;i<vFirstDay;i++)
	{
		vCalData=vCalData+GenCell();
		vDayCount=vDayCount+1;
	}
	for (j=1;j<=Cal.GetMonDays();j++)
	{
		var strCell;
		vDayCount=vDayCount+1;
		if ((j==dtToday.getDate())&&(Cal.Month==dtToday.getMonth())&&(Cal.Year==dtToday.getFullYear()))
			strCell=GenCell(j,true,TodayColor);//Highlight today's date
		else
		{
			if (j==Cal.Date)
			{
				strCell=GenCell(j,true,SelDateColor);
			}
			else
			{	 
				if (vDayCount%7==0)
					strCell=GenCell(j,false,SaturdayColor);
				else if ((vDayCount+6)%7==0)
					strCell=GenCell(j,false,SundayColor);
				else
					strCell=GenCell(j,null,WeekDayColor);
			}		
		}						
		vCalData=vCalData+strCell;

		if((vDayCount%7==0)&&(j<Cal.GetMonDays()))
		{
			vCalData=vCalData+"</tr>\n<tr>";
		}
	}
	docCal.writeln(vCalData);	
	//Time picker
    /*	if (Cal.ShowTime)
	{
		var showHour;
		showHour=Cal.getShowHour();		
		vCalTime="<tr>\n<td colspan='7' align='center'>";
		vCalTime+="<input type='text' name='hour' maxlength=2 size=1 style=\"WIDTH: 22px\" value="+showHour+" onchange=\"javascript:winMain.Cal.SetHour(this.value)\">";
		vCalTime+=" : ";
		vCalTime+="<input type='text' name='minute' maxlength=2 size=1 style=\"WIDTH: 22px\" value="+Cal.Minutes+" onchange=\"javascript:winMain.Cal.SetMinute(this.value)\">";
		vCalTime+=" : ";
		vCalTime+="<input type='text' name='second' maxlength=2 size=1 style=\"WIDTH: 22px\" value="+Cal.Seconds+" onchange=\"javascript:winMain.Cal.SetSecond(this.value)\">";
		if (TimeMode==12)
		{
			var SelectAm =(parseInt(Cal.Hours,10)<12)? "Selected":"";
			var SelectPm =(parseInt(Cal.Hours,10)>=12)? "Selected":"";

			vCalTime+="<select name=\"ampm\" onchange=\"javascript:winMain.Cal.SetAmPm(this.options[this.selectedIndex].value);\">";
			vCalTime+="<option "+SelectAm+" value=\"AM\">AM</option>";
			vCalTime+="<option "+SelectPm+" value=\"PM\">PM<option>";
			vCalTime+="</select>";
		}	
		vCalTime+="\n</td>\n</tr>";
		docCal.write(vCalTime);
	}*/	
	//end time picker
	docCal.writeln("\n</table>");
	docCal.writeln("</form></body></html>");
	docCal.close();
}

function GenCell(pValue,pHighLight,pColor)//Generate table cell with value
{
	var PValue;
	var PCellStr;
	var vColor;
	var vHLstr1;//HighLight string
	var vHlstr2;
	var vTimeStr;
	
	if (pValue==null)
		PValue="";
	else
		PValue=pValue;
	
	if (pColor!=null)
		vColor="bgcolor=\""+pColor+"\"";
	else
		vColor="";	
	if ((pHighLight!=null)&&(pHighLight))
		{vHLstr1="color='red'><b>";vHLstr2="</b>";}
	else
		{vHLstr1=">";vHLstr2="";}	
	
	if (Cal.ShowTime)
	{
		vTimeStr="winMain.document.getElementById('"+Cal.Ctrl+"').value+=' '+"+"winMain.Cal.getShowHour()"+"+':'+"+"winMain.Cal.Minutes"+"+':'+"+"winMain.Cal.Seconds";
		if (TimeMode==12)
			vTimeStr+="+' '+winMain.Cal.AMorPM";
	}	
	else
		vTimeStr="";		
	PCellStr="<td "+vColor+" width="+CellWidth+" align='center'><font face='verdana' size='2'"+vHLstr1+"<a href=\"javascript:winMain.document.getElementById('"+Cal.Ctrl+"').value='"+Cal.FormatDate(PValue)+"';"+vTimeStr+";window.close();\">"+PValue+"</a>"+vHLstr2+"</font></td>";
	return PCellStr;
}

function Calendar(pDate,pCtrl)
{
	//Properties
	this.Date=pDate.getDate();//selected date
	this.Month=pDate.getMonth();//selected month number
	this.Year=pDate.getFullYear();//selected year in 4 digits
	this.Hours=pDate.getHours();	
	
	if (pDate.getMinutes()<10)
		this.Minutes="0"+pDate.getMinutes();
	else
		this.Minutes=pDate.getMinutes();
	
	if (pDate.getSeconds()<10)
		this.Seconds="0"+pDate.getSeconds();
	else		
		this.Seconds=pDate.getSeconds();
		
	this.MyWindow=winCal;
	this.Ctrl=pCtrl;
	this.Format="ddMMyyyy";
	this.Separator=DateSeparator;
	this.ShowTime=false;
	if (pDate.getHours()<12)
		this.AMorPM="AM";
	else
		this.AMorPM="PM";	
}

function GetMonthIndex(shortMonthName)
{
	for (i=0;i<12;i++)
	{
		if (MonthName[i].substring(0,3).toUpperCase()==shortMonthName.toUpperCase())
		{	return i;}
	}
}
Calendar.prototype.GetMonthIndex=GetMonthIndex;

function IncYear()
{	Cal.Year++;}
Calendar.prototype.IncYear=IncYear;

function DecYear()
{	Cal.Year--;}
Calendar.prototype.DecYear=DecYear;
	
function SwitchMth(intMth)
{	Cal.Month=intMth;}
Calendar.prototype.SwitchMth=SwitchMth;

function SetHour(intHour)
{	
	var MaxHour;
	var MinHour;
	if (TimeMode==24)
	{	MaxHour=23;MinHour=0}
	else if (TimeMode==12)
	{	MaxHour=12;MinHour=1}
	else
		alert("TimeMode can only be 12 or 24");		
	var HourExp=new RegExp("^\\d\\d$");
	if (HourExp.test(intHour) && (parseInt(intHour,10)<=MaxHour) && (parseInt(intHour,10)>=MinHour))
	{	
		if ((TimeMode==12) && (Cal.AMorPM=="PM"))
		{
			if (parseInt(intHour,10)==12)
				Cal.Hours=12;
			else	
				Cal.Hours=parseInt(intHour,10)+12;
		}	
		else if ((TimeMode==12) && (Cal.AMorPM=="AM"))
		{
			if (intHour==12)
				intHour-=12;
			Cal.Hours=parseInt(intHour,10);
		}
		else if (TimeMode==24)
			Cal.Hours=parseInt(intHour,10);	
	}
}
Calendar.prototype.SetHour=SetHour;

function SetMinute(intMin)
{
	var MinExp=new RegExp("^\\d\\d$");
	if (MinExp.test(intMin) && (intMin<60))
		Cal.Minutes=intMin;
}
Calendar.prototype.SetMinute=SetMinute;

function SetSecond(intSec)
{	
	var SecExp=new RegExp("^\\d\\d$");
	if (SecExp.test(intSec) && (intSec<60))
		Cal.Seconds=intSec;
}
Calendar.prototype.SetSecond=SetSecond;

function SetAmPm(pvalue)
{
	this.AMorPM=pvalue;
	if (pvalue=="PM")
	{
		this.Hours=(parseInt(this.Hours,10))+12;
		if (this.Hours==24)
			this.Hours=12;
	}	
	else if (pvalue=="AM")
		this.Hours-=12;	
}
Calendar.prototype.SetAmPm=SetAmPm;

function getShowHour()
{
	var finalHour;
    if (TimeMode==12)
    {
    	if (parseInt(this.Hours,10)==0)
		{
			this.AMorPM="AM";
			finalHour=parseInt(this.Hours,10)+12;	
		}
		else if (parseInt(this.Hours,10)==12)
		{
			this.AMorPM="PM";
			finalHour=12;
		}		
		else if (this.Hours>12)
		{
			this.AMorPM="PM";
			if ((this.Hours-12)<10)
				finalHour="0"+((parseInt(this.Hours,10))-12);
			else
				finalHour=parseInt(this.Hours,10)-12;	
		}
		else
		{
			this.AMorPM="AM";
			if (this.Hours<10)
				finalHour="0"+parseInt(this.Hours,10);
			else
				finalHour=this.Hours;	
		}
	}
	else if (TimeMode==24)
	{
		if (this.Hours<10)
			finalHour="0"+parseInt(this.Hours,10);
		else	
			finalHour=this.Hours;
	}	
	return finalHour;	
}				
Calendar.prototype.getShowHour=getShowHour;		

function GetMonthName(IsLong)
{
	var Month=MonthName[this.Month];
	if (IsLong)
		return Month;
	else
		return Month.substr(0,3);
}
Calendar.prototype.GetMonthName=GetMonthName;

function GetMonDays()//Get number of days in a month
{
	var DaysInMonth=[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
	if (this.IsLeapYear())
	{
		DaysInMonth[1]=29;
	}	
	return DaysInMonth[this.Month];	
}
Calendar.prototype.GetMonDays=GetMonDays;

function IsLeapYear()
{
	if ((this.Year%4)==0)
	{
		if ((this.Year%100==0) && (this.Year%400)!=0)
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	else
	{
		return false;
	}
}
Calendar.prototype.IsLeapYear=IsLeapYear;

function FormatDate(pDate)
{
	if (this.Format.toUpperCase()=="DDMMYYYY")
		return (pDate+DateSeparator+(this.Month+1)+DateSeparator+this.Year);
	else if (this.Format.toUpperCase()=="DDMMMYYYY")
		return (pDate+DateSeparator+this.GetMonthName(false)+DateSeparator+this.Year);
	else if (this.Format.toUpperCase()=="MMDDYYYY")
		return ((this.Month+1)+DateSeparator+pDate+DateSeparator+this.Year);
	else if (this.Format.toUpperCase()=="MMMDDYYYY")
		return (this.GetMonthName(false)+DateSeparator+pDate+DateSeparator+this.Year);			
}
Calendar.prototype.FormatDate=FormatDate;	








