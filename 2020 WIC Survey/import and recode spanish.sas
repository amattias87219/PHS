PROC IMPORT OUT= WORK.spanish 
            DATAFILE= "C:\Users\ariam\Documents\2020 WIC Pilot Survey\wicsurvey2020_SM_pilot_spanish.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;

proc contents data=spanish order=varnum; run;

data recoded_spanish; set spanish;
  if	q1_1="1" then q1=1;
  if	q1_2=2 	 then q1=2;
  if	q1_3=3 	 then q1=3;
  if	q1_4=4   then q1=4;
  if  	q3_nokid=1  then q3_0=1;
  if  	q3_infant=2 then q2=1;
  if	Q3_one=3   then	Q3_1=1;
  if	q3_two=4   then	Q3_2=1;
  if	Q3_three=5 then	Q3_3=1;
  if	q3_four=6   then	Q3_4=1;
  if	q4_group="1" then Q4=2;
  if	q4_inperson=2 then	Q4=1;
  if	q4_phone=3	   then	Q4=3;
  if	q4_nosession=4 then Q4=0;
  if	q5_longer="1"  then	Q5=0;
  if	q5_as="2"	   then Q5=1;
  if	q5_shorter=3   then Q5=2;
  if	q6_poor="1" 	then Q6=1;
  if	q6_fair="2"		then Q6=2;
  if	q6_average="3"	then Q6=3;
  if	q6_good=4		then Q6=4;
  if	q6_excellent=5	then Q6=5;
  if	q7_never="1"	 then Q7=0;
  if	q7_sometimes="2" then Q7=1;
  if	q7_usually=3 	 then Q7=2;
  if	q7_always=4		 then Q7=3;
  if	q8_never="1"	 then	Q8=0;
  if	q8_sometimes="2" then	Q8=1;
  if	q8_usually="3"	 then	Q8=2;
  if	q8_always=4	     then	Q8=3;
  if	q9_never="1"	 then	Q9=0;
  if	q9_sometimes="2" then	Q9=1;
  if	q9_usually="3"	 then	Q9=2;
  if	q9_always=4		 then	Q9=3;
  if	q10_stronglydisagree="1"	then	Q10=1;
  if	q10_disagree="2"			then	Q10=2;
  if	q10_unsure="3"				then	Q10=3;
  if	q10_agree=4					then	Q10=4;
  if	q10_strongly_agree=5 		then	Q10=5;
  if	q11_stronglydisagree="1"	then	Q11=1;
  if	q11_disagree="2"			then	Q11=2;
  if	q11_unsure="3"				then	Q11=3;
  if	q11_agree=4 then	Q11=4;
  if	q11_strongly_agree=5	then	Q11=5;
  if	q12_stronglydisagree="1"	then	Q12=1;
  if	q12_disagree="2"	 then	Q12=2;
  if	q12_unsure=3		 then	Q12=3;
  if	q12_agree=4 		 then	Q12=4;
  if	q12_strongly_agree=5 then	Q12=5;
  if	q13_stronglydisagree="1"	then	Q13=1;
  if	q13_disagree="2"	then	Q13=2;
  if	q13_unsure=3 then	Q13=3;
  if	q13_agree=4 then	Q13=4;
  if	q13_strongly_agree=5	then Q13=5;
  if	q16_stronglydisagree=	"1"	then	Q16=1;
  if	q16_disagree="2" 	 then			Q16=2;
  if	q16_unsure	=3		 then			Q16=3;
  if	q16_agree	=4		 then			Q16=4;
  if	q16_strongly_agree=5 then			Q16=5;
  if	qcovid_stronglydisagree=1	then	QCOVID=1;
  if	qcovid_disagree=2 			then	QCOVID=2;
  if	qcovid_unsure=3				then    QCOVID=3;
  if	qcovid_agree=4				then 	QCOVID=4;
  if	qcovid_strongly_agree=5		then	QCOVID=5;
  if	q_read	 =1 then q_read_recode=1;
  if	q_tv	 =2 then q_tv_recode=1;
  if	q_work_1 =1	then q_work_1_recode=1;
  if	q_work_2 =2 then q_work_2_recode=1;
  if	q_work_3 ="3" then q_work_3_recode=1;
  if	q_work_4 ="4" then q_work_4_recode=1;
  if	q_partner_support="5"	then	q_partner_support_recode=1;
  if	q_child_support=6		then	q_child_support_recode=1;
  if	q_other_family="7"		then	q_other_family_recode=1;
  if	q_snap=1 				then	q_snap_recode=1;
  if	q_tanf="2"				then	q_tanf_recode=1;
  if	q_cash="3"				then	q_cash_recode=1;
  if	q18_1="1"	then	q18_1_recode=1;
  if	q18_10=2 	then	q18_10_recode=1;
  if	q18_11=	"3"	then	q18_11_recode=1;
  if	q18_2=4		then	q18_2_recode=1;
  if	q18_3="5"	then	q18_3_recode=1;
  if	q18_4="6"	then	q18_4_recode=1;
  if	q18_5="7"	then	q18_5_recode=1;
  if	q18_6="8"	then	q18_6_recode=1;
  if	q18_9="9"	then	q18_9_recode=1;
  if	q18_7="1"	then	q18_7_recode=1;
  if	q18_8="11"	then	q18_8_recode=1;
  if	q19_y=1		then	q19	=	1;
  if	q19_n="2"	then	q19	=	0; run;

proc freq data=recoded_spanish;
table q1_1	q1
q1_2	
q1_3	
q1_4	
Q3_nokid	q3_0
q3_infant	q2
Q3_one	Q3_1
Q3_two	Q3_2
Q3_three	Q3_3
Q3_four	Q3_4
q4_group	Q4
q4_inperson	
q4_phone	
q4_nosession	
q5_longer	Q5
q5_as	
q5_shorter	
q6_poor	Q6
q6_fair	
q6_average	
q6_good	
q6_excellent	
q7_never	Q7
q7_sometimes	
q7_usually	
q7_always	
q8_never	Q8
q8_sometimes	
q8_usually	
q8_always	
q9_never	Q9
q9_sometimes	
q9_usually	
q9_always	
q10_stronglydisagree	Q10
q10_disagree	
q10_unsure	
q10_agree	
q10_strongly_agree	
q11_stronglydisagree	Q11
q11_disagree	
q11_unsure	
q11_agree	
q11_strongly_agree	
q12_stronglydisagree	Q12
q12_disagree	
q12_unsure	
q12_agree	
q12_strongly_agree	
q13_stronglydisagree	Q13
q13_disagree	
q13_unsure	
q13_agree	
q13_strongly_agree	
q16_stronglydisagree	Q16
q16_disagree	
q16_unsure	
q16_agree	
q16_strongly_agree	
qcovid_stronglydisagree	QCOVID
qcovid_disagree	
qcovid_unsure	
qcovid_agree	
qcovid_strongly_agree	
q_read	q_read_recode
q_tv	q_tv_recode
q_other	
q_work_1	q_work_1_recode
q_work_2	q_work_2_recode
q_work_3	q_work_3_recode
q_work_4	q_work_4_recode
q_partner_support	q_partner_support_recode
q_child_support	q_child_support_recode
q_other_family	q_other_family_recode
q_snap	q_snap_recode
q_tanf	q_tanf_recode
q_cash	q_cash_recode
q18_1	q18_1_recode
q18_10	q18_10_recode
q18_11	q18_11_recode
q18_2	q18_2_recode
q18_3	q18_3_recode
q18_4	q18_4_recode
q18_5	q18_5_recode
q18_6	q18_6_recode
q18_9	q18_9_recode
q18_7	q18_7_recode
q18_8	q18_8_recode
q19_y	q19/norow nopercent nocol nocum missing; run;

data recoded_spanish_1; set recoded_spanish;
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
		q20_2	
		;
run; 

  data recoded_spanish_1;
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
		q20_2	;
SET recoded_spanish_1;
run; 
