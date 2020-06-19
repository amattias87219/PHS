
libname wic "C:\Users\ariam\Documents\2020 WIC Pilot Survey"; run;

data WORK.TEST   ;
%let _EFIERR_ = 0; /* set the ERROR detection macro variable */
infile 'C:\Users\ariam\Documents\2020 WIC Pilot Survey\wicsurvey2020_SM_pilot_import.csv' delimiter= ',' MISSOVER DSD lrecl=32767 firstobs=2 ;
informat	Respondent_ID	best32.	;
informat	Date	mmddyy10.	;
informat	q1_1	$500.	;
informat	q1_2	$500.	;
informat	q1_3	$500.	;
informat	q1_4	$500.	;
informat	Q3_nokid	$500.	;
informat	q3_infant	$500.	;
informat	Q3_one	$500.	;
informat	Q3_two	$500.	;
informat	Q3_three	$500.	;
informat	Q3_four	$500.	;
informat	q4_group	$500.	;
informat	q4_inperson	$500.	;
informat	q4_phone	$500.	;
informat	q4_nosession	$500.	;
informat	q5_longer	$500.	;
informat	q5_as	$500.	;
informat	q5_shorter	$500.	;
informat	q6_poor	$500.	;
informat	q6_fair	$500.	;
informat	q6_average	$500.	;
informat	q6_good	$500.	;
informat	q6_excellent	$500.	;
informat	q7_never	$500.	;
informat	q7_sometimes	$500.	;
informat	q7_usually	$500.	;
informat	q7_always	$500.	;
informat	q8_never	$500.	;
informat	q8_sometimes	$500.	;
informat	q8_usually	$500.	;
informat	q8_always	$500.	;
informat	q9_never	$500.	;
informat	q9_sometimes	$500.	;
informat	q9_usually	$500.	;
informat	q9_always	$500.	;
informat	q10_stronglydisagree	$500.	;
informat	q10_disagree	$500.	;
informat	q10_unsure	$500.	;
informat	q10_agree	$500.	;
informat	q10_strongly_agree	$500.	;
informat	q11_stronglydisagree	$500.	;
informat	q11_disagree	$500.	;
informat	q11_unsure	$500.	;
informat	q11_agree	$500.	;
informat	q11_strongly_agree	$500.	;
informat	q12_stronglydisagree	$500.	;
informat	q12_disagree	$500.	;
informat	q12_unsure	$500.	;
informat	q12_agree	$500.	;
informat	q12_strongly_agree	$500.	;
informat	q13_stronglydisagree	$500.	;
informat	q13_disagree	$500.	;
informat	q13_unsure	$500.	;
informat	q13_agree	$500.	;
informat	q13_strongly_agree	$500.	;
informat	q16_stronglydisagree	$500.	;
informat	q16_disagree	$500.	;
informat	q16_unsure	$500.	;
informat	q16_agree	$500.	;
informat	q16_strongly_agree	$500.	;
informat	qcovid_stronglydisagree	$500.	;
informat	qcovid_disagree	$500.	;
informat	qcovid_unsure	$500.	;
informat	qcovid_agree	$500.	;
informat	qcovid_strongly_agree	$500.	;
informat	q_read	$500.	;
informat	q_tv	$500.	;
informat	q_other	$500.	;
informat	q_work_1	$500.	;
informat	q_work_2	$500.	;
informat	q_work_3	$500.	;
informat	q_work_4	$500.	;
informat	q_partner_support	$500.	;
informat	q_child_support	$500.	;
informat	q_other_family	$500.	;
informat	q_snap	$500.	;
informat	q_tanf	$500.	;
informat	q_cash	$500.	;
informat	q18_1	$500.	;
informat	q18_10	$500.	;
informat	q18_11	$500.	;
informat	q18_2	$500.	;
informat	q18_3	$500.	;
informat	q18_4	$500.	;
informat	q18_5	$500.	;
informat	q18_6	$500.	;
informat	q18_9	$500.	;
informat	q18_7	$500.	;
informat	q18_8	$500.	;
informat	q18_99	$500.	;
informat	q19_y	$500.	;
informat	q19_n	$500.	;
informat	q20_1	$500.	;
informat	q20_2	$500.	;
informat	q20_3	$500.	;
format	Respondent_ID	best32.	;
format	Date	mmddyy10.	;
format	q1_1	$500.	;
format	q1_2	$500.	;
format	q1_3	$500.	;
format	q1_4	$500.	;
format	Q3_nokid	$500.	;
format	q3_infant	$500.	;
format	Q3_one	$500.	;
format	Q3_two	$500.	;
format	Q3_three	$500.	;
format	Q3_four	$500.	;
format	q4_group	$500.	;
format	q4_inperson	$500.	;
format	q4_phone	$500.	;
format	q4_nosession	$500.	;
format	q5_longer	$500.	;
format	q5_as	$500.	;
format	q5_shorter	$500.	;
format	q6_poor	$500.	;
format	q6_fair	$500.	;
format	q6_average	$500.	;
format	q6_good	$500.	;
format	q6_excellent	$500.	;
format	q7_never	$500.	;
format	q7_sometimes	$500.	;
format	q7_usually	$500.	;
format	q7_always	$500.	;
format	q8_never	$500.	;
format	q8_sometimes	$500.	;
format	q8_usually	$500.	;
format	q8_always	$500.	;
format	q9_never	$500.	;
format	q9_sometimes	$500.	;
format	q9_usually	$500.	;
format	q9_always	$500.	;
format	q10_stronglydisagree	$500.	;
format	q10_disagree	$500.	;
format	q10_unsure	$500.	;
format	q10_agree	$500.	;
format	q10_strongly_agree	$500.	;
format	q11_stronglydisagree	$500.	;
format	q11_disagree	$500.	;
format	q11_unsure	$500.	;
format	q11_agree	$500.	;
format	q11_strongly_agree	$500.	;
format	q12_stronglydisagree	$500.	;
format	q12_disagree	$500.	;
format	q12_unsure	$500.	;
format	q12_agree	$500.	;
format	q12_strongly_agree	$500.	;
format	q13_stronglydisagree	$500.	;
format	q13_disagree	$500.	;
format	q13_unsure	$500.	;
format	q13_agree	$500.	;
format	q13_strongly_agree	$500.	;
format	q16_stronglydisagree	$500.	;
format	q16_disagree	$500.	;
format	q16_unsure	$500.	;
format	q16_agree	$500.	;
format	q16_strongly_agree	$500.	;
format	qcovid_stronglydisagree	$500.	;
format	qcovid_disagree	$500.	;
format	qcovid_unsure	$500.	;
format	qcovid_agree	$500.	;
format	qcovid_strongly_agree	$500.	;
format	q_read	$500.	;
format	q_tv	$500.	;
format	q_other	$500.	;
format	q_work_1	$500.	;
format	q_work_2	$500.	;
format	q_work_3	$500.	;
format	q_work_4	$500.	;
format	q_partner_support	$500.	;
format	q_child_support	$500.	;
format	q_other_family	$500.	;
format	q_snap	$500.	;
format	q_tanf	$500.	;
format	q_cash	$500.	;
format	q18_1	$500.	;
format	q18_10	$500.	;
format	q18_11	$500.	;
format	q18_2	$500.	;
format	q18_3	$500.	;
format	q18_4	$500.	;
format	q18_5	$500.	;
format	q18_6	$500.	;
format	q18_9	$500.	;
format	q18_7	$500.	;
format	q18_8	$500.	;
format	q18_99	$500.	;
format	q19_y	$500.	;
format	q19_n	$500.	;
format	q20_1	$500.	;
format	q20_2	$500.	;
format	q20_3	$500.	;
input	
Respondent_ID	
Date	
q1_1	$
q1_2	$
q1_3	$
q1_4	$
Q3_nokid	$
q3_infant	$
Q3_one	$
Q3_two	$
Q3_three	$
Q3_four	$
q4_group	$
q4_inperson	$
q4_phone	$
q4_nosession	$
q5_longer	$
q5_as	$
q5_shorter	$
q6_poor	$
q6_fair	$
q6_average	$
q6_good	$
q6_excellent	$
q7_never	$
q7_sometimes	$
q7_usually	$
q7_always	$
q8_never	$
q8_sometimes	$
q8_usually	$
q8_always	$
q9_never	$
q9_sometimes	$
q9_usually	$
q9_always	$
q10_stronglydisagree	$
q10_disagree	$
q10_unsure	$
q10_agree	$
q10_strongly_agree	$
q11_stronglydisagree	$
q11_disagree	$
q11_unsure	$
q11_agree	$
q11_strongly_agree	$
q12_stronglydisagree	$
q12_disagree	$
q12_unsure	$
q12_agree	$
q12_strongly_agree	$
q13_stronglydisagree	$
q13_disagree	$
q13_unsure	$
q13_agree	$
q13_strongly_agree	$
q16_stronglydisagree	$
q16_disagree	$
q16_unsure	$
q16_agree	$
q16_strongly_agree	$
qcovid_stronglydisagree	$
qcovid_disagree	$
qcovid_unsure	$
qcovid_agree	$
qcovid_strongly_agree	$
q_read	$
q_tv	$
q_other	$
q_work_1	$
q_work_2	$
q_work_3	$
q_work_4	$
q_partner_support	$
q_child_support	$
q_other_family	$
q_snap	$
q_tanf	$
q_cash	$
q18_1	$
q18_10	$
q18_11	$
q18_2	$
q18_3	$
q18_4	$
q18_5	$
q18_6	$
q18_9	$
q18_7	$
q18_8	$
q18_99	$
q19_y	$
q19_n	$
q20_1	$
q20_2	$
q20_3	$
;	
if _ERROR_ then call symputx('_EFIERR_',1);
run;


data test_2; set test;
  if	q1_1	=	"Pregnant"	then q1=1;
  if	q1_2	=	"Mother (breastfeeding)" then q1=2;	
  if	q1_3	=	"Mother (NOT breastfeeding)"	then q1=3;
  if	q1_4	=	"Family member or proxy" then q1=4;	
  if q3_nokid = "No" then q3_0=1;
  if q3_infant = "Less than 1 year old" then q2=1;
  if	Q3_one	=	"1 year old"	then	Q3_1=1;
  if	q3_two	=	"2 years old"	then	Q3_2=1;
  if	Q3_three	=	"3 years old"	then	Q3_3=1;
  if	q3_four	=	"4 years old"	then	Q3_4=1;
  if	q4_group	=	"In-Person - Group Session (Sharing Time)" then Q4=2;
  if	q4_inperson	=	"In-Person - Individual Session"	then	Q4=1;
  if	q4_phone	=	"Phone Session"	then	Q4=3;
  if	q4_nosession	=	"I did not have a session today"	then Q4=0;
  if	q5_longer	=	"Longer than expected"	then	Q5=0;
  if	q5_as	=	"As expected"	then Q5=1;
  if	q5_shorter	=	"Shorter than expected"	then Q5=2; 
  if	q6_poor	=	"Poor" then		Q6=1;
  if	q6_fair	=	"Fair"	then	Q6=2;
  if	q6_average	=	"Average"		then Q6=3;
  if	q6_good	=	"Good"	then	Q6=4;
  if	q6_excellent =	"Excellent"	then Q6=5;
  if	q7_never =	"Never"	then	Q7=0;
  if	q7_sometimes	=	"Sometimes"	then	Q7=1;
  if	q7_usually	=	"Usually"	then	Q7=2;
  if	q7_always	=	"Always"	then	Q7=3;
  if	q8_never	=	"Never"	then	Q8=0;
  if	q8_sometimes	=	"Sometimes"	then	Q8=1;
  if	q8_usually	=	"Usually"	then	Q8=2;
  if	q8_always	=	"Always"	then	Q8=3;
  if	q9_never	=	"Never"	then	Q9=0;
  if	q9_sometimes	=	"Sometimes"	then	Q9=1;
  if	q9_usually	=	"Usually"	then	Q9=2;
  if	q9_always	=	"Always"	then	Q9=3;
  if	q10_stronglydisagree	=	"Strongly Disagree"	then	Q10=1;
  if	q10_disagree	=	"Disagree"	then	Q10=2;
  if	q10_unsure	=	"Unsure"	then	Q10=3;
  if	q10_agree	=	"Agree"	then	Q10=4;
  if	q10_strongly_agree	=	"Strongly Agree"	then	Q10=5;
  if	q11_stronglydisagree	=	"Strongly Disagree"	then	Q11=1;
  if	q11_disagree	=	"Disagree"	then	Q11=2;
  if	q11_unsure	=	"Unsure"	then	Q11=3;
  if	q11_agree	=	"Agree"	then	Q11=4;
  if	q11_strongly_agree	=	"Strongly Agree"	then	Q11=5;
  if	q12_stronglydisagree	=	"Strongly Disagree"	then	Q12=1;
  if	q12_disagree	=	"Disagree"	then	Q12=2;
  if	q12_unsure	=	"Unsure"	then	Q12=3;
  if	q12_agree	=	"Agree"	then	Q12=4;
  if	q12_strongly_agree	=	"Strongly Agree"	then	Q12=5;
  if	q13_stronglydisagree	=	"Strongly Disagree"	then	Q13=1;
  if	q13_disagree	=	"Disagree"	then	Q13=2;
  if	q13_unsure	=	"Unsure"	then	Q13=3;
  if	q13_agree	=	"Agree"	then	Q13=4;
  if	q13_strongly_agree	=	"Strongly Agree"	then	Q13=5;
  if	q16_stronglydisagree	=	"Strongly Disagree"	then	Q16=1;
  if	q16_disagree	=	"Disagree" then		Q16=2;
  if	q16_unsure	=	"Unsure"	then	Q16=3;
  if	q16_agree	=	"Agree"	then	Q16=4;
  if	q16_strongly_agree	=	"Strongly Agree"	then	Q16	=	5;
  if	qcovid_stronglydisagree	=	"Strongly Disagree"	then	QCOVID=	1;
  if	qcovid_disagree	=	"Disagree"	then	QCOVID	=	2;
  if	qcovid_unsure	=	"Unsure	"	then	QCOVID	=	3;
  if	qcovid_agree	=	"Agree" then		QCOVID	=	4;
  if	qcovid_strongly_agree	=	"Strongly Agree" then		QCOVID	=	5;
  if	q_read	=	"I read to my children more"	then	q_read_recode	=	1;
  if	q_tv	=	"My children watch less TV"	then	q_tv_recode	=	1;
  if	q_work_1 =	"Part-time or full-time work (less than 20 hours a week)"	then	q_work_1_recode	=	1;
  if	q_work_2 =	"Part-time or full-time work (21-34 hours a week)" then		q_work_2_recode	=	1;
  if	q_work_3 =	"Part-time or full-time work (35-40 hours a week)"	then	q_work_3_recode	=	1;
  if	q_work_4 =	"Part-time or full-time work (over 40 hours a week)"	then	q_work_4_recode	=	1;
  if	q_partner_support	=	"Partner support"	then	q_partner_support_recode	=	1;
  if	q_child_support	=	"Child Support"	then	q_child_support_recode	=	1;
  if	q_other_family	=	"Other family support"	then	q_other_family_recode	=	1;
  if	q_snap	=	"SNAP (Food Stamps)"	then	q_snap_recode	=	1;
  if	q_tanf	=	"TANF"	then	q_tanf_recode	=	1;
  if	q_cash	=	"Cash Assistance"	then	q_cash_recode	=	1;
  if	q18_1	=	"No longer need benefit"	then	q18_1_recode	=	1;
  if	q18_10	=	"Worry about how receiving benefits will affect me or my family in the future"	then	q18_10_recode	=	1;
  if	q18_11	=	"Value of the benefit is too small"	then	q18_11_recode=	1;
  if	q18_2	=	"Returning to work"	then	q18_2_recode=1;
  if	q18_3	=	"Difficulty using EBT"	then	q18_3_recode=1;
  if	q18_4	=	"Don’t like food package"	then	q18_4_recode=1;
  if	q18_5	=	"Transportation issues"	then	q18_5_recode=1;
  if	q18_6	=	"Inconvenient hours"	then	q18_6_recode=1;
  if	q18_9	=	"Takes too long, or requires me to come in too much"	then	q18_9_recode=1;
  if	q18_7	=	"Unsure about eligibility"	then	q18_7_recode	=	1;
  if	q18_8	=	"I have never considered leaving the WIC program"	then	q18_8_recode =	1;
  if	q19_y	=	"Yes"	then	q19	=	1;
  if	q19_n	=	"No"	then	q19	=	0; run;

proc contents data=test_2 order=varnum; run;

  data test_3; set test_2;
  keep 
		Respondent_ID
		Date
		q1
		q3_0
		q2
		Q3_1
		Q3_2
		Q3_3
		Q3_4
		Q4
		Q5
		Q6
		Q7
		Q8
		Q9
		Q10
		Q11
		Q12
		Q13
		Q16
		QCOVID
		q_read_recode
		q_tv_recode
		q_other
		q_work_1_recode
		q_work_2_recode
		q_work_3_recode
		q_work_4_recode
		q_partner_support_recode
		q_child_support_recode
		q_other_family_recode
		q_snap_recode
		q_tanf_recode
		q_cash_recode
		q18_1_recode
		q18_2_recode
		q18_3_recode
		q18_4_recode
		q18_5_recode
		q18_6_recode
		q18_9_recode
		q18_7_recode
		q18_8_recode
		q18_9_recode
		q18_10_recode
		q18_11_recode
		q18_99
		q19
		q20_1	
		q20_2;
run; 

  data test_4;
  FORMAT
		Respondent_ID
		Date
		q1
		q3_0
		q2
		Q3_1
		Q3_2
		Q3_3
		Q3_4
		Q4
		Q5
		Q6
		Q7
		Q8
		Q9
		Q10
		Q11
		Q12
		Q13
		Q16
		QCOVID
		q_read_recode
		q_tv_recode
		q_other
		q_work_1_recode
		q_work_2_recode
		q_work_3_recode
		q_work_4_recode
		q_partner_support_recode
		q_child_support_recode
		q_other_family_recode
		q_snap_recode
		q_tanf_recode
		q_cash_recode
		q18_1_recode
		q18_2_recode
		q18_3_recode
		q18_4_recode
		q18_5_recode
		q18_6_recode
		q18_7_recode
		q18_8_recode
		q18_9_recode
		q18_10_recode
		q18_11_recode
		q18_99
		q19
		q20_1	
		q20_2;
SET TEST_3;
run; 

proc contents data=Test_4 order=varnum; run;

data wic2020_fmt; set wic2020_fmt; 
drop q20_3;
run;

/*add language option*/
data Test_4; set Test_4; 
language=1;
run;


proc format;
value yesno  0="No"
             1="Yes";
value q1_fmt 1="Pregnant"
             2="Mother (breastfeeding)"
             3="Mother (not breastfeeding)"
             4="Family Member or Proxy";
value	q4_fmt	1	=	"Individual"
		        2	=	"Group"
				3	= 	"Phone Session"
				0	=	"No Session";
value	Q5_fmt	0	=	"Longer than expected"
		        1	=	"As expected"
		        2	=	"Shorter than expected";
value	Q6_fmt	1	=	"Poor"
		        2	=	"Fair"
		        3	=	"Average"
		        4	=	"Good"
		        5	=	"Excellent";
value	NSOA_fmt 0	=	"Never"
		         1	=	"Sometimes"
		         2	=	"Usually"
		         3	=	"Always";
value	likert_fmt	1	=	"Strongly Disagree"
		            2	=	"Disagree"
		            3	=	"Unsure"
          		    4	=	"Agree"
          		    5	=	"Strongly agree";
run; quit;

data wic2020_fmt; set test_4;
label	q1	=	"Are you...(1=pregnant, 2=Mother BF, 3=Mother [not breastfeeding], 4=Family member or proxy)";
label	q3_0	=	"No Child";
label	q2	=	"Infant enrolled in WIC";
label	Q3_1	=	"Child - 1 yr";
label	Q3_2	=	"Child - 2 yr";
label	Q3_3	=	"Child - 3 yr";
label	Q3_4	=	"Child - 4 yr";
label	Q4	=	"Type of Visit (1=Individual Session, 2=Group, 3=Phone Session, 4=No session)";
label	Q5	=	"Wait for service (0=Longer than Expected, 1=As expected, 2=Shorter than expected)";
label	Q6	=	"Quality of Service (Poor, Fair, Average, Good, Excellent)";
label	Q7	=	"Respectful - Front Desk (Never, Sometimes, Usually, Always)";
label	Q8	=	"Respectful - Nutritionist (Never, Sometimes, Usually, Always)";
label	Q9	=	"Nutritionist explains things in a way you can understand (Never, Sometimes, Usually, Always)";
label	Q10	=	"WIC has helped me eat healthier";
label	Q11	=	"WIC has helped me purchase healthier food";
label	Q12	=	"WIC has improved family health";
label	Q13	=	"WIC improved MD Communication";
label	Q16	=	"Without WIC it would be difficult to provide for my family";
label	QCOVID	=	"The COVID-19 pandemic has made it difficult to access WIC-covered products";
label	q_read_recode	=	"WIC has helped me…: I read to my children more";
label	q_tv_recode	=	"WIC has helped me…: My children watch TV less";
label	q_other	=	"WIC has helped me…: Other free text response";
label	q_work_1_recode	=	"Part-time or full-time work (< 20 hours a week)";
label	q_work_2_recode	=	"Part-time or full-time work (21-34 hours a week)";
label	q_work_3_recode	=	"Part-time or full-time work (35-40 hours a week)";
label	q_work_4_recode	=	"Part-time or full-time work (> 40 hours a week)";
label	q_partner_support_recode	=	"Partner support";
label	q_child_support_recode	=	"Child Support";
label	q_other_family_recode	=	"Other family support";
label	q_snap_recode	=	"SNAP (Food Stamps)";
label	q_tanf_recode	=	"TANF";
label	q_cash_recode	=	"Cash Assistance";
label	q18_1_recode	=	"No longer need benefit";
label	q18_2_recode	=	"Returning to work";
label	q18_3_recode	=	"Difficulty using EBT";
label	q18_4_recode	=	"Don't like food package";
label	q18_5_recode	=	"Transportation issues";
label	q18_6_recode	=	"Inconvenient hours";
label	q18_9_recode	=	"Takes too long, or requires me to come in too much";
label	q18_7_recode	=	"Unsure about eligibility";
label	q18_8_recode	=	"Never considered leaving";
label	q18_10_recode	=	"Worry about how receiving benefits will affect me or my family in the future";
label	q18_11_recode	=	"Value of the benefit is too small";
label	q18_99	=	"Other reason for leaving";
label	q19	=	"Recommend to other families";
label	q20_1	=	"text response 1";
label	q20_2	=	"text response 2";
label	q20_3	=	"text response 3";
    format q1 q1_fmt. q4 q4_fmt. q5 q5_fmt. q6 q6_fmt. q7-q9 nsoa_fmt. q10-q13 likert_fmt. 
            q16 likert_fmt. qcovid likert_fmt.;
run;




