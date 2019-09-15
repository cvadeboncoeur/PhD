*Descriptive investigation of each variable of the main data set 
*Reshaping the dataset
reshape long  T3_T1WD T3_T2WD T2_T1WD  T3_T1BMI T3_T2BMI T2_T1BMI Weigth_ALLtrue YearStudy University Campus Email Ethinicity SES_Mother SES_Father Sex LivingTermtime LivingTermTimeCampus HealthStatus HeightMeters_All DescribeWeigth DotoWeigth Meds Weighing Pregnant PA_SE_A PA_SE_B PA_SE_C PA_SE_D PA_SE_E  PA_SE_F  PA_SE_G IPAQ_Vig_Days IPAQ_Vig_Hrs IPAQ_Vig_Min  IPAQ_VigTime IPAQVigMETS IPAQ_Vig_Dknow IPAQ_Mod_Days IPAQ_Mod_Hrs IPAQ_Mod_Min IPAQ_Mod_Time IPAQ_Vig_Dknow_A IPAQ_Walk_Hrs_A IPAQ_Walk_Min IPAQ_Walk_Time IPAQ_Walk_Dknow IPAQ_Sit_Hrs IPAQ_Sit_Min IPAQ_Sit_Total IPAQ_Sit_Dknow Eat_SE_A Eat_SE_B Eat_SE_C Eat_SE_D  Eat_SE_E Eat_InterpA Eat_InterpB  Eat_InterpC Eat_InterpD Eat_n_Catering Eat_n_cook Eat_n_Fruit Eat_n_Veg Eat_n_Coke Eat_n_Candy Eat_n_Fried Eat_n_Crisps Eat_n_Alcohol Eat_n_Day Eat_n_ndrinks Smoking Stress_A Stress_B Stress_C Stress_D Interpers_Invol Interpers_Comm Interpers_SportT Interpers_Invo_Total Env_FreeGym Env_QuantGree Env_QualGreen Env_PublicTrans Env_PedesZone Env_BikeLane Env_Gym Env_Walkability Env_Walkability_B Env_Walkability_C Env_Safety_A Env_Safety_B Env_Safety_C FoodEnv_A FoodEnv_B FoodEnv_C FoodEnv_D FoodEnv_E FoodEnv_F HPEnv_A HPEnv_B HPEnv_C Alcohol_dict Date BMI BMICategory Stress_A_Recoded Stress_D_Recoded Stress_B_RevRecoded Stress_C_RevRecoded Stress_Total PASE_Total NSE_Total IPAQ_VigMETS IPAQ_TotalMETS Eat_Dict_Fruit Eat_Dict_Veg Eat_Dict_Coke Eat_Dict_Candy Eat_Dict_Fried Eat_Dict_Crisps Eat_Dict_Healthy_Total Eat_Dict_UNHealthy_Total HPEnv_A_Dict HPEnv_B_Dict  HPEnv_C_Dict HPEnv_Total_Dict FoodEnv_A_Dict FoodEnv_B_Dict FoodEnv_C_Dict FoodEnv_D_Dict FoodEnv_E_Dict FoodEnv_F_Dict Env_Safety_A_Dict Env_Safety_B_Dict Env_Safety_C_Dict Env_Safety_total_Dict Env_walka_A_Dict Env_walka_B_Dict Env_walka_C_Dict Env_Gym_Dict Env_PedesZone_Dict  Env_BikeLane_Dict Env_PublicTrans_Dict Env_FreeGym_Dict Env_QualGreen_Dict Env_QuantGree_Dict Env_Walkability_total_Dict FoodEnv_Campus_Dict Interpers_Invol_Dic Eat_InterpA_Dict Eat_InterpB_Dict Eat_InterpC_Dict Eat_InterpD_Dict Eat_UnHleaty_InterpTotal Eat_n_Catering_Dict  Eat_n_cook_dict FeelWeightG FeelWeightL FeelWeightDK WeightChanALLKgTrue FeelWeightChange  IPAQ_Vig_Time IPAQ_Vig_METS IPAQ_Walk_METS IPAQ_Total_METS IPAQ_Mod_METS , i(ID1 ID_n) j(time) 
reshape long days wgt T3_T1WD T3_T2WD T2_T1WD  T3_T1BMI T3_T2BMI T2_T1BMI YearStudy doubleUniversityRealNam UniversityName University Campus Email Ethinicity SES_Mother SES_Father Sex LivingTermtime LivingTermTimeCampus HealthStatus HeightMeters_All DescribeWeigth DotoWeigth Meds Weighing Pregnant PA_SE_A PA_SE_B PA_SE_C PA_SE_D PA_SE_E  PA_SE_F  PA_SE_G IPAQ_Vig_Days IPAQ_Vig_Hrs IPAQ_Vig_Min  IPAQ_VigTime IPAQVigMETS IPAQ_Vig_Dknow IPAQ_Mod_Days IPAQ_Mod_Hrs IPAQ_Mod_Min IPAQ_Mod_Time IPAQ_Vig_Dknow_A IPAQ_Walk_Hrs_A IPAQ_Walk_Min IPAQ_Walk_Time IPAQ_Walk_Dknow IPAQ_Sit_Hrs IPAQ_Sit_Min IPAQ_Sit_Total IPAQ_Sit_Dknow Eat_SE_A Eat_SE_B Eat_SE_C Eat_SE_D  Eat_SE_E Eat_InterpA Eat_InterpB  Eat_InterpC Eat_InterpD Eat_n_Catering Eat_n_cook Eat_n_Fruit Eat_n_Veg Eat_n_Coke Eat_n_Candy Eat_n_Fried Eat_n_Crisps Eat_n_Alcohol Eat_n_Day Eat_n_ndrinks Smoking Stress_A Stress_B Stress_C Stress_D Interpers_Invol Interpers_Comm Interpers_SportT Interpers_Invo_Total Env_FreeGym Env_QuantGree Env_QualGreen Env_PublicTrans Env_PedesZone Env_BikeLane Env_Gym Env_Walkability Env_Walkability_B Env_Walkability_C Env_Safety_A Env_Safety_B Env_Safety_C FoodEnv_A FoodEnv_B FoodEnv_C FoodEnv_D FoodEnv_E FoodEnv_F HPEnv_A HPEnv_B HPEnv_C Alcohol_dict Date BMI BMICategory Stress_A_Recoded Stress_D_Recoded Stress_B_RevRecoded Stress_C_RevRecoded Stress_Total PASE_Total NSE_Total IPAQ_VigMETS IPAQ_TotalMETS Eat_Dict_Fruit Eat_Dict_Veg Eat_Dict_Coke Eat_Dict_Candy Eat_Dict_Fried Eat_Dict_Crisps Eat_Dict_Healthy_Total Eat_Dict_UNHealthy_Total HPEnv_A_Dict HPEnv_B_Dict  HPEnv_C_Dict HPEnv_Total_Dict FoodEnv_A_Dict FoodEnv_B_Dict FoodEnv_C_Dict FoodEnv_D_Dict FoodEnv_E_Dict FoodEnv_F_Dict Env_Safety_A_Dict Env_Safety_B_Dict Env_Safety_C_Dict Env_Safety_total_Dict Env_walka_A_Dict Env_walka_B_Dict Env_walka_C_Dict Env_Gym_Dict Env_PedesZone_Dict  Env_BikeLane_Dict Env_PublicTrans_Dict Env_FreeGym_Dict Env_QualGreen_Dict Env_QuantGree_Dict Env_Walkability_total_Dict FoodEnv_Campus_Dict Interpers_Invol_Dic Eat_InterpA_Dict Eat_InterpB_Dict Eat_InterpC_Dict Eat_InterpD_Dict Eat_UnHleaty_InterpTotal Eat_n_Catering_Dict  Eat_n_cook_dict FeelWeightG FeelWeightL FeelWeightDK WeightChanALLKgTrue FeelWeightChange  IPAQ_Vig_Time IPAQ_Vig_METS IPAQ_Walk_METS IPAQ_Total_METS IPAQ_Mod_METS, i(ID_n) j(time) 


*Descriptive stats for wgt & BMI 
by time, sort : tabstat wgt, statistics( mean semean sd count )
by time, sort : tabstat wgt if Sex==1, statistics( mean semean sd count )
by time, sort : tabstat wgt if Sex==2, statistics( mean semean sd count )
by time, sort : tabstat BMI, statistics( mean semean sd count )
by time, sort : tabstat BMI if Sex==1, statistics( mean semean sd count )
by time, sort : tabstat BMI if Sex==2, statistics( mean semean sd count )

*Analysis of wgt change at T1-T3 (Full academic year)
tabstat T3_T1WD if time==3, statistics( mean semean sd count )
tabstat T3_T1WD if time==3& T3_T1WD>0.5, statistics( mean semean sd count)
tabstat T3_T1WD if time==3& T3_T1WD<-0.5, statistics( mean semean sd count)

*Analysis of wgt change at T1-T2 (First academic term)
tabstat T2_T1WD if time==2, statistics( mean semean sd count )
tabstat T2_T1WD if time==2& T2_T1WD>0.5, statistics( mean semean sd count)
tabstat T2_T1WD if time==2& T2_T1WD<-0.5, statistics( mean semean sd count)

*Analysis of wgt change at T2-T3 (Second academic year)
tabstat T3_T2WD if Participate2==1, statistics( mean semean sd count )
tabstat T3_T2WD if Participate2==1& T3_T2WD>0.5, statistics( mean semean sd count)
tabstat T3_T2WD if Participate2==1& T3_T2WD<-0.5, statistics( mean semean sd count)


*Descriptive analysis of each variable- following dataset cleaning
*HP env*
by time, sort : tabulate HPEnv_Total_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(HPEnv_Total_Dict) by(time)
graph box T2MinusT1_ForAllDiff, over(HPEnv_Total_Dict) ytitle(Weight change (kg)) by(, title(Weight Change & Interpersonal)) by(time)

*Safety
by time, sort : tabulate Env_Safety_total_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(Env_Safety_total_Dict) ytitle(Weight change (kg)) by(, title(Weight Change & Interpersonal)) by(time)

*walkability - Env_Walkability_total_Dict
by time, sort : tabulate Env_Walkability_total_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(FoodEnv_Campus_Dict) ytitle(Weight change (kg)) by(, title(Weight Change & Interpersonal)) by(time)

*food env of campus
by time, sort : 
tabulate FoodEnv_Campus_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(FoodEnv_Campus_Dict) ytitle(Weight change (kg))

*quality of greens
by time, sort : tabulate Env_QualGreen_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(Env_QualGreen_Dict) ytitle(Weight change (kg)) by(, title(Weight Change & Quality Green Spaces)) by(time)
ttest wgtdiff, by(Env_QualGreen_Dict)

*quantity of greens
by time, sort : tabulate Env_QuantGree_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(Env_QuantGree_Dict) ytitle(Weight change (kg)) by(, title(Weight Change & Interpersonal)) by(time)
 
*free gym - Env_FreeGym_Dict*
 by time, sort : tabulate Env_QuantGree_Dict, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(Env_QuantGree_Dict) ytitle(Weight change (kg)) by(, title(Weight Change & Interpersonal)) by(time)
 
*Eat healthy
by time, sort : tabulate  Eat_Dict_Healthy_Total, summarize(T2MinusT1_ForAllDiff)
graph box T2MinusT1_ForAllDiff, over(Eat_Dict_Healthy_Total) ytitle(Weight change (kg)) by(, title(Weight Change & Healthy Eating)) by(time)

*Sex
by time, sort : tabulate  Sex, summarize(T2MinusT1_ForAllDiff)
ttest wgtdiff, by(Sex)
graph box T2MinusT1_ForAllDiff, over (Sex) ytitle(Weight change (kg)) by(, title(Weight Change & Sex)) by(time)

*Smoking
by time, sort : tabulate  smoking_dict, summarize(T2MinusT1_ForAllDiff)
ttest wgtdiff, by(smoking_dict)
graph box T2MinusT1_ForAllDiff, over (smoking_dict) ytitle(Weight change (kg)) by(, title(Weight Change & Smoking)) by(time)

*Alcohol
by time, sort : tabulate   Alcohol_dict, summarize(T2MinusT1_ForAllDiff)
ttest wgtdiff, by(Alcohol_dict)
graph box T2MinusT1_ForAllDiff, over ( Alcohol_dict) ytitle(Weight change (kg)) by(, title(Weight Change & Alcohol)) by(time)

*Stress
twoway (scatter T2MinusT1_ForAllDiff Stress_Total), by(time)

*PA SE
twoway (scatter T2MinusT1_ForAllDiff PASE_Total), by(time)
twoway (scatter T2MinusT1_ForAllDiff PASE_Total, sort), by(time Sex)

*Interpersonal 
by time, sort : tabulate  Interpers_Invol_Dic, summarize(T2MinusT1_ForAllDiff)
ttest wgtdiff, by(Interpers_Invol_Dic)
by time, sort : tabstat T2MinusT1_ForAllDiff, statistics( mean semean sd ) by(Interpers_Invol_Dic) columns(variables)

*Inter Unlthey&  Eat_UnHleaty_InterpTotal
by time, sort : tabulate  Eat_UnHleaty_InterpTotal, summarize(T2MinusT1_ForAllDiff)
ttest wgtdiff, by(Eat_UnHleaty_InterpTotal)

*cooking
 by time, sort : tabulate  Eat_n_cook_dict, summarize(T2MinusT1_ForAllDiff)
ttest wgtdiff, by(Eat_n_cook_dict)


*University attributes - transformed into quartiles - descriptive stats
*Quart_Rank_2014
graph box T2MinusT1_ForAllDiff, over(Quart_Rank_2014) ytitle(Weight change (kg)) title(Weight change by university quartile league ranking) legend(off)
tabstat T2MinusT1_Diff, statistics( mean count sd ) by(Quart_Rank_2014) columns(variables)

*HU_Member
graph box T2MinusT1_ForAllDiff, over(HU_Member) ytitle(Weight change (kg)) title(Weight change by Healthy University Membership) legend(off)

*Quart_N_TotalFYUS_1D_FT
graph box T2MinusT1_ForAllDiff, over(Quart_N_TotalFYUS_1D_FT) ytitle(Weight change (kg)) title(Weight change by Quartile Total number students of FYUS) legend(off)
tabstat T2MinusT1_Diff, statistics( mean count sd semean ) by(Quart_N_TotalFYUS_1D_FT) columns(variables)

*Quart_UGPG_Ratio
graph box T2MinusT1_ForAllDiff, over( Quart_UGPG_Ratio) ytitle(Weight change (kg)) title(Weight change by UG-PG ratio) legend(off)
tabstat T2MinusT1_ForAllDiff, statistics( mean count sd semean ) by(Quart_UGPG_Ratio) columns(variables)

*Quart_TotalN_student
graph box T2MinusT1_ForAllDiff, over( Quart_TotalN_student) ytitle(Weight change (kg)) title(Weight change by Quartile Total number students) legend(off)
tabstat T2MinusT1_ForAllDiff, statistics( mean count sd semean ) by( Quart_TotalN_student) columns(variables)



