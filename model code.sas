
/**THIS IS THE MAIN ONE**/

proc freq data=work.Cmd_srs_setup_2;
table cum_cmc_cat_v2;
run;


%macro uni(var, name);
proc glm data=work.Cmd_srs_setup_2;
class &var (ref='0');
model srs_t_tot=&var/solution clparm;
title &name;
run; quit;

proc genmod data=work.Cmd_srs_setup_2;
class &var (ref='0') center (ref='7') mom_edu (ref='0') Income_binary (ref='0') 
momrace_binary (ref='0')/param=reference;
model srs_t_tot=&var Age_Yrs center mom_edu Income_binary momrace_binary;
title &name;
quit;
%mend;

%uni(prepreg_bmi_cat, "BMI categories");
%uni(prepreg_dm, "Prepregnancy DM");
%uni(GDM_any_confirmed, "GDM");
%uni(any_dm_confirmed, "Any confirmed DM through pregnancy");
%uni(prepreg_htn_1, "Prepregnancy HTN");
%uni(gestational_htn, "Gestational HTN"); /*this is the only one that is vaguely interesting*/
%uni(preeclampsia_with_super, "Any Preeclampsia");
%uni(htn_all, "Any HDP");
%uni(cumulative_cmc, "All CMCs");
%uni(cumulative_cmc_cat, "CMCs - 0, 1, 2 or more");
%uni(cum_cmc_cat_v2, "CMCs - 0, 1, 2, 3 or more");
%uni(cum_cmc_binary, "Binary CMCs (any or at least one)");
%uni(pp_cmc, "Prepreganncy CMC"); 
%uni(during_cmc, "CMC during Pregnancy");




%macro srs(subscale);
/*Boys*/
proc glm data=work.Cmd_srs_setup_2;
class cum_cmc_cat_v2 (ref='0');
model &subscale=cum_cmc_cat_v2/solution clparm;
title "Boys - Unadjusted";
where srs_sex=1;
run; quit;

proc genmod data=work.Cmd_srs_setup_2;
class cum_cmc_cat_v2 (ref='0') center (ref='7') mom_edu (ref='0') 
	  Income_binary (ref='0') momrace_binary (ref='0')/param=reference;
model &subscale=cum_cmc_cat_v2 Age_Yrs center mom_edu Income_binary momrace_binary;
title "Boys - Adjusted";
where srs_sex=1;
run; quit;

/*Girls*/
proc glm data=work.Cmd_srs_setup_2;
class cum_cmc_cat_v2 (ref='0');
model &subscale=cum_cmc_cat_v2/solution clparm;
title "Girls - Unadjusted";
where srs_sex=2;
run; quit;

proc genmod data=work.Cmd_srs_setup_2;
class cum_cmc_cat_v2 (ref='0') center (ref='7') mom_edu (ref='0') 
	  Income_binary(ref='0') momrace_binary (ref='0')/param=reference;
model &subscale=cum_cmc_cat_v2 Age_Yrs center mom_edu Income_binary momrace_binary;
title "Girls - Adjusted";
where srs_sex=2;
run; quit;

/*All*/
proc glm data=work.Cmd_srs_setup_2;
class cum_cmc_cat_v2 (ref="0");
model &subscale=cum_cmc_cat_v2/solution clparm;
Title "All - Unadjusted";
run; quit;

proc genmod data=work.Cmd_srs_setup_2;
class cum_cmc_cat_v2 (ref='0') center (ref='7') mom_edu (ref='0') 
	  Income_binary (ref='0') momrace_binary (ref='0')/param=reference;
model &subscale=cum_cmc_cat_v2 Age_Yrs center mom_edu Income_binary momrace_binary;
Title "All - Adjusted";
run; quit;
%mend;
ods pdf file="J:\PM\TIDES_Data\RESEARCH\Output data for analyses\Cardiometabolic disease and SRS\All models.pdf";
%srs(srs_t_awr);
%srs(rsrs_t_cog); 
%srs(srs_t_com);
%srs(srs_t_mot);
%srs(srs_t_rrb);
%srs(srs_t_sci);
%srs(srs_t_tot);
ods pdf close;
