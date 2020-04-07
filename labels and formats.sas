/*Labels and formats*/
data work.Cmd_srs_setup_2; set work.Cmd_srs_setup_2;
label	srs_t_tot='Total SRS T Score';
label	srs_t_awr='Social Awareness';
label	rsrs_t_cog='Social Cognition';
label	srs_t_com='Social Communication';
label	srs_t_mot='Social Motivation';
label	srs_t_sci='Social Communication and Interaction';
label	srs_t_rrb='Restricted Interests and Repetitive Behavior';
label	complic_icd9___38	 ="Benign essential hypertension";
label	complic_icd9___39	 ="Hypertension secondary to renal disease";
label	complic_icd9___40	 ="Other pre-existing hypertension";
label	complic_icd9___41	 ="Transient hypertension of pregnancy";
label	complic_icd9___42	 ="Mild or unspecified pre-eclampsia";
label	complic_icd9___43	 ="Severe pre-eclampsia";
label	complic_icd9___44	 ="Eclampsia, unspecified";
label	complic_icd9___45	 ="Superimposed pre-eclampsia or eclampsia";
label	complic_icd10___26	 ="Pre-existing hypertension";
label	complic_icd10___28	 ="Gestational edema/proteinuria without hypertension";
label	complic_icd10___29	 ="Gestational hypertension	";
label	complic_icd10___30	 ="Pre-eclampsia";
label	complic_icd10___31	 ="Eclampsia";
label	complic_icd10___32	 ="Unspecified maternal hypertension";
label	complic_icd10___37	 ="Diabetes mellitus in pregnancy";
run;


proc format;
    value cnt 
	            6='UCSF'
				7='UMN'
				8='URMC'
				9='UW';
	value Q6a1_e_yn_fmt
				. = "No"
				1 = "Yes";
	value Q6a1_e_script_fmt
				. = "No"
				1 = "Yes";
	value Q6a1_f_yn_fmt
				. = "No"
				1 = "Yes";
	value Q6a1_i_script_fmt
				. = "No"
				1 = "Yes";
	value Q6a1_i_script_fmt
				. = "No"
				1 = "Yes";
	value yesno
				0 = "No"
				1 = "Yes";
    value Q48_Race_fmt
                1='Black or African-American' 
			    2='Asian' 
	            4='American Indian or Alaska Native'
				5='Native Hawaiian or Pacific Islan'
				6='White'
				7='More than one race'
				8='Other'
	            9='Unknown';
	value Q49_fmt
				1 = "8th Grade or Lower"
				2 = "Some High School"
				3 = "High School Grad"
				4 = "Some College or Tech School"
				5 = "College Grad"
				6 = "Some Grad Work or Beyond";
	value Q51_fmt
				1 = "< $15000"
				2 = "$15000 - 25000"
				3 = "$25001 - 45000"
				4 = "$45001 - 55000"
				5 = "$55001 - 65000"
				6 = "$65001 - 75000"
				7 = "> $75000";
	value Q47_Ethnic_fmt
	            . = "Unknown"
				1 = "Hispanic/Latino"
				2 = "Not Hispanic/Latino";
	value any_cmc_fmt
				0="No CMC present during pregnancy"
				1="CMC present during pregnancy";
	value smoking_fmt
				. = "No"
				1 = "Yes";
	value bmi_cat
				0="underweight (BMI<18.5)"
				1="normal (18.5<BMI<25)"
				2="overweight (25<BMI<30)"
				3="obese (BMI<30");
	value srs_cat
				0="No social deficits (<=59)"
				1="Mild social deficits (60=< <66 mild)"
				2="Moderate social deficits (66=< <76)"
				3="Severe social deficits (>=76)";
	value Q45_fmt
				1 = "Married"
				2 = "Living as Married"
				3 = "Separated"
				4 = "Divorced"
				5 = "Widowed"
				6 = "Single";
	value momrace_eth_recat 
				0="White non-Hispanic"
				1="Black non-Hispanic"
				2="Hispanic (all races)"
				3="Asian"
				4="Native American/Hawaiian/Alaskan or Pacific Islander"
				5="Multi-race/ethnicity"
				6="Other or Unknown";
	value inc_fmt 
				0="Less than $45,000"
				1="Between $45,000 and $75,000"
				2="Greater than $75,000";
	value mom_edu_fmt
				0="Less than College Degree"
				1="College and more";
	value momrace_eth_recat 
				0="White non-Hispanic"
				1="Black non-Hispanic"
				2="Hispanic (all races)"
				3="Asian"
				4="Native American/Hawaiian/Alaskan or Pacific Islander"
				5="Multi-race/ethnicity"
				6="Other or Unknown";
	value inc_fmt 
				0="Less than $45,000"
				1="Between $45,000 and $75,000"
				2="Greater than $75,000";
	value mom_edu_fmt
				0="Less than College Degree"
				1="College and more";
	value cum_cmc_fmt 
				0="No CMC"
				1="One CMC"
				2="Two or more CMCs"; 
	value obese_fmt 
				0="BMI less than 30"
				1="BMI of 30 or more";
	value cum_cmcv2_fmt 
				0="No CMC during pregnancy"
				1="One CMC during pregnancy"
				2="Two CMCs during pregnancy"
				3="Three or more CMCs during pregnancy";
	value pp_dm_fmt   
				0="No history of DM prior to pregnancy"
				1="DM prior to pregnancy";
	value gdm_fmt 	  
				0="Did not develop GDM"
				1="Developed GDM";

	value pp_htn_fmt  
				0="No HTN"
				1="HTN prior to Pregnancy";

	value ges_htn_fmt 
				0="Did not develop Gestational HTN"
				1="Developed Gestational HTN";

	value preec_fmt	  
				0="Did not develop Pre-eclampsia"
				1="Developed Pre-eclampsia";

	value cum_cmc_fmt 
				0="No CMC during pregnancy"
				1="One CMC during pregnancy"
				2="Two CMCs during pregnancy"
				3="Three CMCs during pregnancy"
				4="Four CMCs during pregnancy";

	value cumcmcbin_fmt 
				0="No CMC present during pregnancy"
				1="At least one CMC during pregnancy";

	value pp_cmc_fmt  	
				0="No CMC before pregnancy"
				1="Had CMC before pregnancy";

	value dur_cmc_fmt   
				0="Did not develop CMC during pregnancy"
				1="Developed CMC during pregnancy";

run;



