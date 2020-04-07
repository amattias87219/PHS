/*cardiometabolic disease and SRS*/
libname cmd_srs "J:\PM\TIDES_Data\RESEARCH\Output data for analyses\Cardiometabolic disease and SRS"; run;

proc contents data=cmd_srs.Roost_prenatal_abstraction order=varnum; run;

/*edit roost study_id*/
/*excel*/
/*Move ROOST data to lib*/

data cmd_srs.Roost_prenatal_abstraction; set cmd_srs.Roost_prenatal_abstraction;
run;

/*proc means of maternal weight as US dates*/

/*identifying variables for analysis*/
proc contents data=cmd_srs.roost order=varnum; run;
ods excel file="J:\PM\TIDES_Data\TIDES I Data\ROOST\contents.xlsx";
proc contents data=cmd_srs._all_ order=varnum; run;
ods excel close;


/*T1 Variables*/
data cmd_srs.q1_20190514_1; set cmd_srs.q1_20190514;
keep study_id
subject_id
T1_Q46_DOB Age_Months Age_Yrs
T1_Q48_Race T1_Q47_Ethnic
Center
T1_Q2_HT_CM T1_Q2_HT_FT
T1_Q2_HT_IN T1_Q2_WT_KG
T1_Q2_WT_LBS T1_Q3_WT_LBS T1_Q3_WT_KG
T1_Q2_ht_in_Recode T1_Q2_wt_lbs_Recode T1_Q3_wt_lbs_Recode MomBMI
T1_Q4
T1_Q6A1_E_OTC T1_Q6A1_E_SCRIPT T1_Q6A1_E_YN
T1_Q6A1_F_OTC T1_Q6A1_F_SCRIPT T1_Q6A1_F_YN
T1_Q6A1_I_OTC T1_Q6A1_I_SCRIPT T1_Q6A1_I_YN
T1_Q9
T1_Q12 T1_Q12A_D T1_Q12A_E
T1_Q30a_week_Recode
T1_Q45 T1_Q45A
T1_Q48A T1_Q48B T1_Q48C T1_Q48D T1_Q48E T1_Q48F
T1_Q49 T1_Q50 T1_Q51 T1_Q52 T1_Q53;
run;

/*T2* Variables*/
data cmd_srs.q2_22119_1; set cmd_srs.q2_22119;
keep study_id T2_PAPERDT
T2_Q2_WT_LBS T2_Q2_WT_KG T2_Q1_wks_recode T2_Q2_wt_lbs_Recode 
T2_Q4A 
T2_Q4A1_E_SCRIPT T2_Q4A1_E_YN T2_Q4A1_E_OTC
T2_Q4A1_F_SCRIPT T2_Q4A1_F_YN T2_Q4A1_F_OTC
T2_Q4A1_I_SCRIPT T2_Q4A1_I_YN T2_Q4A1_I_OTC
T2_Q6C_YN T2_Q6C_DRUGS T2_Q6C_SURG T2_Q6C_OTHER
T2_Q6D_YN T2_Q6D_DRUGS T2_Q6D_SURG T2_Q6D_OTHER
T2_Q6G_YN T2_Q6G_DRUGS T2_Q6G_SURG T2_Q6G_OTHER
T2_Q14 T2_Q14A_2 T2_Q14A_6 T2_Q14A_7
T2_Q20A_WKS_Recode
T2_Q26	T2_Q27	T2_Q28	T2_Q29	T2_Q30	T2_Q31	T2_Q32
T2_Q33	T2_Q34	T2_Q35	T2_Q36	T2_Q37	T2_Q38	T2_Q39
T2_Q40	T2_Q41	T2_Q42	T2_Q43	T2_Q44	T2_Q45	T2_Q46
T2_Q48	T2_Q49	T2_Q50	T2_Q51	T2_Q52	T2_Q53	T2_Q53A; run;

/*T3*/
data cmd_srs.q3_22119_1; set cmd_srs.q3_22119;
keep study_id T3_Q3_Date T3_PAPERDT
T3_Q1_wks_recode
T3_Q2_WT_KG T3_Q2_WT_LBS
T3_Q2_wt_lbs_Recode T3_Q3_ht_in_Recode
T3_Q3_HEIGHT_CM T3_Q3_HEIGHT_FT T3_Q3_HEIGHT_IN
T3_Q4
T3_Q5A1_E_OTC T3_Q5A1_E_SCRIPT t3_Q5A1_E_YN
T3_Q5A1_F_OTC t3_Q5A1_F_SCRIPT t3_Q5A1_F_YN
T3_Q5A1_I_OTC t3_Q5A1_I_SCRIPT t3_Q5A1_I_YN
T3_Q7 T3_Q7A_3 T3_Q7A_6 t3_Q7A_11 t3_Q7A_13
T3_Q19A_WKS_Recode
T3_Q26 T3_Q27_DAD_HEIGHT_FT t3_Q27_DAD_HEIGHT_IN T3_Q27_DAD_WEIGHT_LBS T3_Q27_dad_height_recode
T3_Q28 T3_Q29 T3_Q30 
T3_Q31_YN T3_Q31A T3_Q31B
T3_Q32 T3_Q33 T3_Q34 T3_Q35
T3_Q36 
T3_Q37_T1 T3_Q37_T2 T3_Q37_T3
T3_Q37_YN T3_Q38_T1 T3_Q38_T2 T3_Q38_T3
T3_Q38_YN T3_Q39_T1 T3_Q39_T2 T3_Q39_T3
T3_Q39_YN T3_Q40_T1 T3_Q40_T2 T3_Q40_T3
T3_Q40_YN T3_Q41_T1 T3_Q41_T2 T3_Q41_T3
T3_Q41_YN
T3_Q42_SPECIFY T3_Q42_T1 T3_Q42_T2 T3_Q42_T3 T3_Q42_YN; 
run;

/*ROOST Data*/
data cmd_srs.Roost_1; set cmd_srs.Roost_prenatal_abstraction;
keep study_id
study_id
bp_date_v1 sbp_v1 dbp_v1
weight_kg_v1 weight_lb_v1
bp_date_v2 sbp_v2 dbp_v2
weight_kg_v2 weight_lb_v2
bp_date_v3 sbp_v3 dbp_v3
weight_kg_v3 weight_lb_v3
complic_icd9___38 complic_icd9___39 complic_icd9___40
complic_icd9___41 complic_icd9___42 complic_icd9___43
complic_icd9___44 complic_icd9___45
complic_icd9_642_date complic_icd9_642_1_date
complic_icd9_642_2_date complic_icd9_642_3_date
complic_icd9_642_4_date complic_icd9_642_5_date
complic_icd9_642_6_date complic_icd9_642_7_date
complic_icd10___26 complic_icd10___27 complic_icd10___28
complic_icd10___29 complic_icd10___30
complic_icd10___31 complic_icd10___32
complic_icd10___34 complic_icd10___37
complic_icd10___38 complic_icd10_o10_date
complic_icd10_o11_date complic_icd10_o12_date
complic_icd10_o13_date complic_icd10_o14_date
complic_icd10_o15_date complic_icd10_o16_date
complic_icd10_o21_date complic_icd10_o24_date complic_icd10_o25_date
us_1_mat_weight 
us_1_mat_weight_lb 
us_2_mat_weight 
us_2_mat_weight_lb 
us_3_mat_weight 
us_3_mat_weight_lb 
us_4_mat_weight 
us_4_mat_weight_lb 
us_5_mat_weight 
us_5_mat_weight_lb 
us_6_mat_weight 
us_6_mat_weight_lb 
us_7_mat_weight 
;
run;

%macro sort(set);

proc sort data=&set; by study_id; run;

%mend;

%sort(cmd_srs.Q1_20190514_1);
%sort(cmd_srs.Q2_22119_1);
%sort(cmd_srs.Q3_22119_1);
%sort(cmd_srs.Roost_1);
%sort(cmd_srs.Tii_4_bascsrs_2019411_srsonly);

/*merge*/

data cmd_srs.cmd_srs_merged; merge cmd_srs.Tii_4_bascsrs_2019411_srsonly (in=a) cmd_srs.Q1_20190514_1 cmd_srs.Q2_22119_1 cmd_srs.Q3_22119_1 cmd_srs.Roost_1; 
by study_id; if a=1; run;

proc means data=cmd_srs.cmd_srs_merged;
run;

data cmd_srs.cmd_srs_merged; set cmd_srs.cmd_srs_merged;
drop record_id
tidesii_v1_basc_data_sheet_compl
tidesii_v1_srs_data_sheet_comple
T1_Q6A1_E_OTC
T1_Q6A1_F_OTC
T1_Q6A1_I_OTC
T2_Q4A1_I_OTC
T2_Q4A1_E_OTC
T2_Q4A1_F_OTC
T3_Q5A1_E_OTC
T3_Q5A1_F_OTC
T3_Q5A1_I_OTC;
run;

data cmd_srs.cmd_srs_merged;
format
study_id									
subject_id									
T1_Q46_DOB									
Age_Months									
Age_Yrs									
T1_Q48_Race									
T1_Q47_Ethnic									
Center									
T1_Q2_HT_CM									
T1_Q2_HT_FT									
T1_Q2_HT_IN									
T1_Q2_WT_KG									
T1_Q2_WT_LBS									
T1_Q3_WT_LBS									
T1_Q3_WT_KG									
T1_Q2_ht_in_Recode									
T1_Q2_wt_lbs_Recode									
T1_Q3_wt_lbs_Recode									
MomBMI									
T1_Q4									
T1_Q6A1_E_YN									
T1_Q6A1_E_SCRIPT									
T1_Q6A1_F_YN									
T1_Q6A1_F_SCRIPT									
T1_Q6A1_I_YN									
T1_Q6A1_I_SCRIPT									
T1_Q9									
T1_Q12									
T1_Q12A_D									
T1_Q12A_E									
T1_Q30a_week_Recode									
T1_Q45									
T1_Q45A									
T1_Q48A	T1_Q48B	T1_Q48C	T1_Q48D	T1_Q48E	T1_Q48F				
T1_Q49	T1_Q50	T1_Q51	T1_Q52						
T1_Q53									
T2_PAPERDT									
T2_Q2_WT_KG	T2_Q2_WT_LBS	T2_Q1_wks_recode	T2_Q2_wt_lbs_Recode						
T2_Q4A									
T2_Q4A1_E_YN	T2_Q4A1_E_SCRIPT								
T2_Q4A1_F_YN	T2_Q4A1_F_SCRIPT								
T2_Q4A1_I_YN	T2_Q4A1_I_SCRIPT								
T2_Q6C_YN	T2_Q6C_DRUGS	T2_Q6C_SURG	T2_Q6C_OTHER						
T2_Q6D_YN	T2_Q6D_DRUGS	T2_Q6D_SURG	T2_Q6D_OTHER						
T2_Q6G_YN	T2_Q6G_DRUGS	T2_Q6G_SURG	T2_Q6G_OTHER						
T2_Q14									
T2_Q14A_2									
T2_Q14A_6									
T2_Q14A_7									
T2_Q20A_WKS_Recode									
T2_Q26	T2_Q27	T2_Q28	T2_Q29	T2_Q30	T2_Q31	T2_Q32	T2_Q33	T2_Q34	T2_Q35
T2_Q36	T2_Q37	T2_Q38	T2_Q39	T2_Q40	T2_Q41	T2_Q42	T2_Q43		
T2_Q44	T2_Q45	T2_Q46	T2_Q48	T2_Q49	T2_Q50	T2_Q51	T2_Q52	T2_Q53	T2_Q53A
T3_PAPERDT									
T3_Q3_Date									
T3_Q1_wks_recode									
T3_Q2_WT_KG									
T3_Q2_WT_LBS									
T3_Q2_wt_lbs_Recode									
T3_Q3_ht_in_Recode									
T3_Q3_HEIGHT_CM									
T3_Q3_HEIGHT_FT									
T3_Q3_HEIGHT_IN									
T3_Q4									
T3_Q5A1_E_YN									
T3_Q5A1_E_SCRIPT									
T3_Q5A1_F_YN									
T3_Q5A1_F_SCRIPT									
T3_Q5A1_I_YN									
T3_Q5A1_I_SCRIPT									
T3_Q7									
T3_Q7A_3									
T3_Q7A_6									
T3_Q7A_11									
T3_Q7A_13									
T3_Q19A_WKS_Recode									
T3_Q26									
T3_Q27_DAD_HEIGHT_FT									
T3_Q27_DAD_HEIGHT_IN									
T3_Q27_DAD_WEIGHT_LBS									
T3_Q27_dad_height_recode									
T3_Q28									
T3_Q29									
T3_Q30									
T3_Q31A									
T3_Q31B									
T3_Q31_YN									
T3_Q32									
T3_Q33									
T3_Q34									
T3_Q35									
T3_Q36									
T3_Q37_YN	T3_Q37_T1	T3_Q37_T2	T3_Q37_T3						
T3_Q38_YN	T3_Q38_T1	T3_Q38_T2	T3_Q38_T3						
T3_Q39_YN	T3_Q39_T1	T3_Q39_T2	T3_Q39_T3						
T3_Q40_YN	T3_Q40_T1	T3_Q40_T2	T3_Q40_T3						
T3_Q41_YN	T3_Q41_T1	T3_Q41_T2	T3_Q41_T3						
T3_Q42_YN	T3_Q42_T1	T3_Q42_T2	T3_Q42_T3						
bp_date_v1									
sbp_v1									
dbp_v1									
weight_kg_v1									
weight_lb_v1									
bp_date_v2									
sbp_v2									
dbp_v2									
weight_kg_v2									
weight_lb_v2									
bp_date_v3									
sbp_v3									
dbp_v3									
weight_kg_v3									
weight_lb_v3									
complic_icd9___38	complic_icd9_642_date								
complic_icd9___39	complic_icd9_642_1_date								
complic_icd9___40	complic_icd9_642_2_date								
complic_icd9___41	complic_icd9_642_3_date								
complic_icd9___42	complic_icd9_642_4_date								
complic_icd9___43	complic_icd9_642_5_date								
complic_icd9___44	complic_icd9_642_6_date								
complic_icd9___45	complic_icd9_642_7_date								
complic_icd10___26	complic_icd10_o10_date								
complic_icd10___27	complic_icd10_o11_date								
complic_icd10___28	complic_icd10_o12_date								
complic_icd10___29	complic_icd10_o13_date								
complic_icd10___30	complic_icd10_o14_date								
complic_icd10___31	complic_icd10_o15_date								
complic_icd10___32	complic_icd10_o16_date								
complic_icd10___34	complic_icd10_o21_date								
complic_icd10___37	complic_icd10_o24_date								
complic_icd10___38	complic_icd10_o25_date								
us_1_mat_weight									
us_1_mat_weight_lb									
us_2_mat_weight									
us_2_mat_weight_lb									
us_3_mat_weight									
us_3_mat_weight_lb									
us_4_mat_weight									
us_4_mat_weight_lb									
us_5_mat_weight									
us_5_mat_weight_lb									
us_6_mat_weight									
us_6_mat_weight_lb									
us_7_mat_weight									
basc_id									
basc_v1date									
basc_sex									
basc_dob									
srs_id									
srs_v1date									
srs_sex									
srs_dob									
srs_raw_awr	rsrs_raw_cog srs_raw_com srs_raw_mot srs_raw_rrb srs_raw_sci srs_raw_tot									
srs_t_tot srs_t_awr	rsrs_t_cog srs_t_com srs_t_mot srs_t_sci srs_t_rrb;									
set cmd_srs.cmd_srs_merged; run;

proc freq data=cmd_srs.cmd_srs_merged;
tables 
/norow nocum; run;




data cmd_srs.cmd_srs_merged; set cmd_srs.cmd_srs_merged;
drop /*complic_icd10___28*/ complic_icd10___34 complic_icd10___38; run;


/*Key variables*/
proc means data=cmd_srs.cmd_srs_merged;
run;



/*SRS*/
proc means data=cmd_srs.cmd_srs_merged;
var
srs_t_tot srs_t_awr rsrs_t_cog
srs_t_com srs_t_mot srs_t_sci srs_t_rrb;

run;

/*rename mombmi*/
data cmd_srs.cmd_srs_merged_1; set cmd_srs.cmd_srs_merged;
rename mombmi=t1_mombmi; run;



/*derive variables*/
/*BMI at third trimester*/

/*categorial BMI*/
/*underweight (BMI<18.5), normal (18.5?BMI<25), overweight (25?BMI<30) and obese (BMI?30)*/

/*categorical smoking*/

/*all pre-ecclampsia*/


/*categorical SRS*/
/*=<76 severe social deficits
/*66=< <76 moderate social deficits
/*60=< <66 mild
/*<=59

/*derive Increased maternal gestational weight gain*/
proc freq data=cmd_srs.cmd_srs_merged_1;
tables T1_Q6A1_F_YN
T1_Q6A1_F_SCRIPT
T1_Q6A1_I_YN
T1_Q6A1_I_SCRIPT
T2_Q4A1_F_YN
T2_Q4A1_F_SCRIPT
T2_Q4A1_I_YN
T2_Q4A1_I_SCRIPT
T3_Q2_wt_lbs_Recode
T3_Q3_ht_in_Recode
T3_Q5A1_F_YN
T3_Q5A1_F_SCRIPT
T3_Q5A1_I_YN
T3_Q5A1_I_SCRIPT
T3_Q7A_6
T3_Q7A_11
T3_Q7A_13
complic_icd9___38
complic_icd9___39
complic_icd9___40
complic_icd9___41
complic_icd9___42
complic_icd9___43
complic_icd9___44
complic_icd9___45
complic_icd10___26
complic_icd10___27
complic_icd10___28
complic_icd10___29
complic_icd10___30
complic_icd10___31
complic_icd10___32
complic_icd10___37;
label	T1_Q6A1_F_YN	 ="	Diabetes meds, yes/no	";
label	T1_Q6A1_F_SCRIPT	 ="	Diabetes meds, prescription	";
label	T1_Q6A1_I_YN	 ="	High BP meds, yes/no	";
label	T1_Q6A1_I_SCRIPT	 ="	High BP meds, prescription	";
label	T2_Q4A1_F_YN	 ="	Diabetes meds, yes/no	";
label	T2_Q4A1_F_SCRIPT	 ="	Diabetes meds, prescription	";
label	T2_Q4A1_I_YN	 ="	High BP meds, yes/no	";
label	T2_Q4A1_I_SCRIPT	 ="	High BP meds, prescription	";
label	T3_Q2_wt_lbs_Recode	 ="	Current weight, recoded as pounds	";
label	T3_Q3_ht_in_Recode	 ="	Current height, recoded in inches	";
label	T3_Q5A1_F_YN	 ="	Diabetes meds, yes/no	";
label	T3_Q5A1_F_SCRIPT	 ="	Diabetes meds, prescription	";
label	T3_Q5A1_I_YN	 ="	High BP meds, yes/no	";
label	T3_Q5A1_I_SCRIPT	 ="	High BP meds, prescription	";
label	T3_Q7A_6	 ="	Preeclampsia	";
label	T3_Q7A_11	 ="	Gestational Diabetes	";
label	T3_Q7A_13	 ="	Hypertension	";
label	complic_icd9___38	 ="	choice=642.0: Benign essential hypertension.	";
label	complic_icd9___39	 ="	choice=642.1: Hypertension secondary to renal disease.	";
label	complic_icd9___40	 ="	choice=642.2: Other pre-existing hypertension.	";
label	complic_icd9___41	 ="	choice=642.3: Transient hypertension of pregnancy.	";
label	complic_icd9___42	 ="	choice=642.4: Mild or unspecified pre-eclampsia.	";
label	complic_icd9___43	 ="	choice=642.5: Severe pre-eclampsia.	";
label	complic_icd9___44	 ="	choice=642.6: Eclampsia, unspecified.	";
label	complic_icd9___45	 ="	choice=642.7: Superimposed pre-eclampsia or eclampsia.	";
label	complic_icd10___26	 ="	choice=O10: Pre-existing hypertension.	";
label	complic_icd10___27	 ="	choice=O11: Pre-eclampsia superimposed.	";
label	complic_icd10___28	 ="	choice=O12: Gestational edema/proteinuria without hypertension.	";
label	complic_icd10___29	 ="	choice=O13: Gestational hypertension	";
label	complic_icd10___30	 ="	choice=O14: Pre-eclampsia.	";
label	complic_icd10___31	 ="	choice=O15: Eclampsia	";
label	complic_icd10___32	 ="	choice=O16: Unspecified maternal hypertension.	";
label	complic_icd10___37	 ="	choice=O24: Diabetes mellitus in pregnancy.	"; run;
