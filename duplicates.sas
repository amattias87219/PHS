/*duplicate reconciliation*/
/*dup out exercise*/
data cmd_srs_merged_dupcheck; set cmd_srs.cmd_srs_merged; run;

proc sort data=work.cmd_srs_merged_dupcheck noduprec dupout=cmd_srs_truedups; by study_id; run;
/*true dups 6212 62231 6235 7015 8007*/

proc sort data=work.cmd_srs_merged_dupcheck nodupkey dupout=cmd_srs_possdups; by study_id; run;

proc print data=cmd_srs_possdups noobs; var study_id; run;

proc freq data=cmd_srs_possdups;
tables center /norow nocol nopercent nocum; run;


proc sort data=work.Cmd_srs_dupcheck_select; by study_id; run;
proc sort data=work.Cmd_srs_possdups; by study_id; run;

ods pdf file="J:\PM\TIDES_Data\RESEARCH\Output data for analyses\Cardiometabolic disease and SRS\dup comparison.pdf" startpage=never;
proc compare base=work.Cmd_srs_dupcheck_select compare=work.Cmd_srs_possdups; by study_id; run;
ods pdf close;


/*duplicate corrections to main dataset*/

/*true duplicates 6212 62231 6235 7015 8007 removed*/
proc sort data=cmd_srs.Cmd_srs_merged noduprec dupout=cmd_srs_truedupsmain; by study_id; run;

/*duplicate id for ROOST*/
data cmd_srs_dupcheck_select; set cmd_srs_merged_dupcheck;
if  study_id=6189 or study_id=6195	or
	study_id=6197 or study_id=6205	or
	study_id=6216 or study_id=6221	or
	study_id=6227 or study_id=6229	or
	study_id=6232 or study_id=7001	or
study_id=	7001	or
study_id=	7002	or
study_id=	7004	or
study_id=	7005	or
study_id=	7006	or
study_id=	7007	or
study_id=	7011	or
study_id=	7012	or
study_id=	7015	or
study_id=	7015	or
study_id=	7016	or
study_id=	7017	or
study_id=	7023	or
study_id=	7025	or
study_id=	7027	or
study_id=	7028	or
study_id=	7030	or
study_id=	7031	or
study_id=	7035	or
study_id=	7037	or
study_id=	7039	or
study_id=	7040	or
study_id=	7040	or
study_id=	7041	or
study_id=	7043	or
study_id=	7045	or
study_id=	7046	or
study_id=	7047	or
study_id=	7048	or
study_id=	7049	or
study_id=	7051	or
study_id=	7054	or
study_id=	7057	or
study_id=	7058	or
study_id=	7061	or
study_id=	7069	or
study_id=	7070	or
study_id=	7073	or
study_id=	7074	or
study_id=	7075	or
study_id=	7076	or
study_id=	7077	or
study_id=	7078	or
study_id=	7078	or
study_id=	7080	or
study_id=	7081	or
study_id=	7085	or
study_id=	7088	or
study_id=	7089	or
study_id=	7090	or
study_id=	7094	or
study_id=	7095	or
study_id=	7098	or
study_id=	7103	or
study_id=	7106	or
study_id=	7108	or
study_id=	7109	or
study_id=	7111	or
study_id=	7112	or
study_id=	7114	or
study_id=	7115	or
study_id=	7117	or
study_id=	7118	or
study_id=	7119	or
study_id=	7119	or
study_id=	7120	or
study_id=	7123	or
study_id=	7124	or
study_id=	7125	or
study_id=	7126	or
study_id=	7128	or
study_id=	7129	or
study_id=	7131	or
study_id=	7131	or
study_id=	7132	or
study_id=	7134	or
study_id=	7135	or
study_id=	7136	or
study_id=	7138	or
study_id=	7138	or
study_id=	7140	or
study_id=	7143	or
study_id=	7144	or
study_id=	7146	or
study_id=	7147	or
study_id=	7148	or
study_id=	7149	or
study_id=	7150	or
study_id=	7151	or
study_id=	7154	or
study_id=	7156	or
study_id=	7156	or
study_id=	7158	or
study_id=	7160	or
study_id=	7161	or
study_id=	7163	or
study_id=	7165	or
study_id=	7166	or
study_id=	7168	or
study_id=	7169	or
study_id=	7169	or
study_id=	7171	or
study_id=	7173	or
study_id=	7175	or
study_id=	7176	or
study_id=	7177	or
study_id=	7178	or
study_id=	7179	or
study_id=	7180	or
study_id=	7180	or
study_id=	7182	or
study_id=	7183	or
study_id=	7184	or
study_id=	7187	or
study_id=	7188	or
study_id=	7189	or
study_id=	7192	or
study_id=	7194	or
study_id=	7196	or
study_id=	7198	or
study_id=	7199	or
study_id=	7201	or
study_id=	7205	or
study_id=	7206	or
study_id=	7208	or
study_id=	7209	or
study_id=	7211	or
study_id=	7212	or
study_id=	7213	or
study_id=	7213	or
study_id=	7216	or
study_id=	7219	or
study_id=	7221	or
study_id=	7222	or
study_id=	7225	or
study_id=	7225	or
study_id=	7227	or
study_id=	7228	or
study_id=	7229	or
study_id=	7230	or
study_id=	7231	or
study_id=	7234	or
study_id=	7235	or
study_id=	7236	or
study_id=	7237	or
study_id=	7239	or
study_id=	7240	or
study_id=	8007	or
study_id=	8029	or
study_id=	8029	or
study_id=	8083	or
study_id=	8083	or
study_id=	8221	or
study_id=	8235	or
study_id=	8235	or
study_id=	9011	or
study_id=	9020	or
study_id=	9119	or
study_id=	9132	or
study_id=	9192	or
study_id=	9209;
run;

/*CORRECTIONS*/

/*****End of corrections*****/
