/*Produce Tables for Presentation*/
	/*total of n=741*/
	ods excel file="C:\Users\ariam\Documents\2020 WIC Pilot Survey\tables for graphs.xlsx"
	options(embedded_titles="no" sheet_interval="proc");
	proc freq data=wic2020_merged_fmt_nonmissonly;
	table q1/nocum norow nocol missing list; 
	title "Question 1"; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table q3_0 q2 Q3_1 Q3_2 Q3_3 Q3_4
	/nocum norow nocol missing list;  
	title "Question 1 - Pregnant moms"; 
	run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table (q3_0 q2 Q3_1 Q3_2 Q3_3 Q3_4)*q1
	/nocum norow nocol missing list; 
	where q1=1; 
	title "Question 1 - Pregnant moms"; 
	run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table (q3_0 q2 Q3_1 Q3_2 Q3_3 Q3_4)*q1
	/nocum norow nocol missing list; 
	where q1=2; 
	title "Question 1 - Breastfeeding moms"; 
	run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table Q4/nocum norow nocol missing list; 
	title "Type of service - overall"; run;

	proc sort data=wic2020_merged_fmt_nonmissonly;
	by q4; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	by q4; /*strata*/
	table Q5-Q9/nocum norow nocol missing list; 
	title "Q4 Visit Type - Stratified"; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table Q10 Q11 Q12 Q13 Q16/nocum norow nocol missing list;
	title "Overall WIC Experience Questions"; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table QCOVID /nocum norow nocol missing list;
	title "Covid-19 Question"; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table q_read_recode q_tv_recode/nocum norow nocol missing list;
	title "How else has WIC helped you"; run;

	/*quick qc check for work q
	proc print data=wic2020_merged_fmt_nonmissonly;
	var respondent_id q_work_1_recode q_work_2_recode q_work_3_recode q_work_4_recode;
	where (q_work_2_recode or q_work_3_recode or q_work_4_recode)=1 and q_work_1_recode=1; run;

	proc print data=wic2020_merged_fmt_nonmissonly;
	var respondent_id q_work_1_recode q_work_2_recode q_work_3_recode q_work_4_recode;
	where (q_work_1_recode or q_work_3_recode or q_work_4_recode)=1 and q_work_2_recode=1; run;

	proc print data=wic2020_merged_fmt_nonmissonly;
	var respondent_id q_work_1_recode q_work_2_recode q_work_3_recode q_work_4_recode;
	where (q_work_1_recode or q_work_2_recode or q_work_4_recode)=1 and q_work_3_recode=1; run;

	proc print data=wic2020_merged_fmt_nonmissonly;
	var respondent_id q_work_1_recode q_work_2_recode q_work_3_recode q_work_4_recode;
	where (q_work_1_recode or q_work_2_recode or q_work_3_recode)=1 and q_work_4_recode=1; run;
	SIX people answered this incorrectly >_<
	correct for the six
	data wic2020_merged_fmt_nonmissonly; set wic2020_merged_fmt_nonmissonly;
	if (q_work_2_recode or q_work_3_recode or q_work_4_recode)=1 and q_work_1_recode=1 then work_q_ex=1;
	if (q_work_1_recode or q_work_3_recode or q_work_4_recode)=1 and q_work_2_recode=1 then work_q_ex=1; run;*/

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table work_q_ex; run;


	proc freq data=wic2020_merged_fmt_nonmissonly;
	table anywork q_work_1_recode q_work_2_recode q_work_3_recode q_work_4_recode
	/nocum norow nocol missing list;
	title "How else do you support support your family -- All options (corrected)"; 
	where work_q_ex ne 1;
	run;

	/*any work
	data wic2020_merged_fmt_nonmissonly; set wic2020_merged_fmt_nonmissonly;
	if q_work_1_recode=1 then anywork=1;
	if q_work_2_recode=1 then anywork=1;
	if q_work_3_recode=1 then anywork=1; 
	if q_work_4_recode=1 then anywork=1; run;*/

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table q_snap_recode q_tanf_recode q_cash_recode social_support
	/nocum norow nocol missing list;
	Title "Social Support network"; run;

	/*data wic2020_merged_fmt_nonmissonly; set wic2020_merged_fmt_nonmissonly;
	if q_snap_recode=. then q_snap_recode=0;
	if q_tanf_recode=. then q_tanf_recode=0;
	if q_cash_recode=. then q_cash_recode=0; run;

	data wic2020_merged_fmt_nonmissonly; set wic2020_merged_fmt_nonmissonly;
	social_support=q_snap_recode + q_tanf_recode + q_cash_recode; run;*/

	/*data wic2020_merged_fmt_nonmissonly; set wic2020_merged_fmt_nonmissonly;
	if q18_1_recode=. then q18_1_recode=0;
	if q18_2_recode=. then q18_2_recode=0;
	if q18_3_recode=. then q18_3_recode=0;
	if q18_4_recode=. then q18_4_recode=0;
	if q18_5_recode=. then q18_5_recode=0;
	if q18_6_recode=. then q18_6_recode=0;
	if q18_7_recode=. then q18_7_recode=0;
	if q18_8_recode=. then q18_8_recode=0;
	if q18_9_recode=. then q18_9_recode=0;
	if q18_10_recode=. then q18_10_recode=0;
	if q18_11_recode=. then q18_11_recode=0; run;

	data wic2020_merged_fmt_nonmissonly; set wic2020_merged_fmt_nonmissonly;
	q18_any=q18_1_recode+q18_2_recode+q18_3_recode+
			q18_4_recode+q18_5_recode+q18_6_recode+
			q18_7_recode+q18_8_recode+q18_9_recode+
			q18_10_recode+q18_11_recode;
	run;*/
	 
	proc freq data=wic2020_merged_fmt_nonmissonly;
	table q18_any q18_1_recode q18_2_recode q18_3_recode
				  q18_4_recode q18_5_recode q18_6_recode
				  q18_7_recode q18_8_recode q18_9_recode
				  q18_10_recode q18_11_recode/nocum norow nocol missing list; 
	title "Question 18"; run;


	proc freq data=wic2020_merged_fmt_nonmissonly;
	table q19/nocum norow nocol missing list; 
	title "Would you recommend";
	run;

	ods excel close;

	/*How many children question adjusted*/
	proc sort data=wic2020_merged_fmt_nonmissonly;
	by q1; run;

	proc freq data=wic2020_merged_fmt_nonmissonly noobs;
	table (q3_0 q2 Q3_1 Q3_2 Q3_3 Q3_4)*q1/nocum norow nocol missing list;
	title "when participant selected 'Pregnant'";
	where q1=1; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table (q3_0 q2 Q3_1 Q3_2 Q3_3 Q3_4)*q1/nocum norow nocol missing list;
	title "When participant selected 'Breastfeeding'"; 
	where q1=2; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table language/missing;run;

	proc contents data=wic2020_merged_fmt_nonmissonly order=varnum; run;

	proc freq data=wic2020_merged_fmt_nonmissonly;
	table
	q_work_1_recode
	q_work_2_recode
	q_work_3_recode
	q_work_4_recode
	q_partner_support_recode
	q_child_support_recode
	q_other_family_recode/ missing; run;

