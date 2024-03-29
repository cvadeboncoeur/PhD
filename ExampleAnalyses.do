#Analyses of PhD data - multiple regression of variables correlated with weight change

#Bringing in the data 
mydataT123Unis = read.csv("Data_0303_FinalSet.csv")  # read csv file 
summary(mydataT123Unis)

#calling in all variables into a dataset
myvarsT123Unis <- c("region","hu_member","WGainer","T3_T1WD_Wks_Inv","WLoser","tirt_totaln_students_size","tirt_ugpg_ratio","tirt_fyus_ft_female","tirt_n_totalfyus_1d_ft","tirt_fyus_1d_ft_uk_dom","tirt_rank_2014","wgt1", "age","nHPEnv3", "weeks", "SES_Mother1", "SES_Father1", "nEthinicity", "Participate1", "nFoodEnv3", "Sex", "T3_T2WD_Wks","T2_T1WD_Wks","T3_T1WD_Wks","T3_T1WD","MarketEnv3", "nSafety3", "nWalkabi3", "PublicTrans3", "FreeGym3", "GymAccess3", "QuantGreen3", "QualGreen3", "InterspecInvol2", "UnhealthInter2", "Eatfriends2", "Eatfruitfriends2", "NQStress2", "NQPASE2", "NQNSE2", "smoking_dict2", "Alcohol_dict2", "Eat_n_Catering_Dict2", "Eat_n_cook_dict2", "LivingTermtime2", "LivingTermTimeCampus2", "Sex", "Weighing2") 
completeT123Unis <- mydataT123Unis[myvarsT123Unis]
summary(completeT123Unis)
ls(newdataT123Unis)
str(newdataT123Unis)


#set data for analysis - ensuring all variables are in apporpriate format
completeT123Unis$region<- factor(completeT123Unis$region)
completeT123Unis$tirt_totaln_students_size <- factor(completeT123Unis$tirt_totaln_students_size)
completeT123Unis$tirt_fyus_ft_female  <- factor(completeT123Unis$tirt_fyus_ft_female)
completeT123Unis$tirt_fyus_1d_ft_uk_dom  <- factor(completeT123Unis$tirt_fyus_1d_ft_uk_dom)
completeT123Unis$tirt_rank_2014  <- factor(completeT123Unis$tirt_rank_2014)
completeT123Unis$tirt_ugpg_ratio  <- factor(completeT123Unis$tirt_ugpg_ratio)
completeT123Unis$tirt_n_totalfyus_1d_ft  <- factor(completeT123Unis$tirt_n_totalfyus_1d_ft)
completeT123Unis$nSafety3  <- factor(completeT123Unis$nSafety3)
completeT123Unis$nHPEnv3<- factor(completeT123Unis$nHPEnv3)
completeT123Unis$nFoodEnv3<- factor(completeT123Unis$nFoodEnv3)
#completeT123Unis$MarketEnv3<- factor(completeT123Unis$MarketEnv3)
completeT123Unis$nWalkabi3<- factor(completeT123Unis$nWalkabi3)
completeT123Unis$PublicTrans3<- factor(completeT123Unis$PublicTrans3)
completeT123Unis$FreeGym3 <- factor(completeT123Unis$FreeGym3 )
completeT123Unis$GymAccess3 <- factor(completeT123Unis$GymAccess3 )
completeT123Unis$QuantGreen3<- factor(completeT123Unis$QuantGreen3)
completeT123Unis$QualGreen3<- factor(completeT123Unis$QualGreen3)
completeT123Unis$InterspecInvol2 <- factor(completeT123Unis$InterspecInvol2 )
completeT123Unis$UnhealthInter2<- factor(completeT123Unis$UnhealthInter2)
#completeT123Unis$Eatfriends2<- factor(completeT123Unis$Eatfriends2)
#completeT123Unis$Eatfruitfriends2<- factor(completeT123Unis$Eatfruitfriends2)
completeT123Unis$NQStress2<- factor(completeT123Unis$NQStress2)
completeT123Unis$NQPASE2<- factor(completeT123Unis$NQPASE2)
completeT123Unis$NQNSE2<- factor(completeT123Unis$NQNSE2)
completeT123Unis$smoking_dict2<- factor(completeT123Unis$smoking_dict2)
completeT123Unis$Alcohol_dict2<- factor(completeT123Unis$Alcohol_dict2)
completeT123Unis$Eat_n_Catering_Dict2<- factor(completeT123Unis$Eat_n_Catering_Dict2)
completeT123Unis$Eat_n_cook_dict2<- factor(completeT123Unis$Eat_n_cook_dict2)
completeT123Unis$LivingTermtime2 <- factor(completeT123Unis$LivingTermtime2 )
completeT123Unis$LivingTermTimeCampus2<- factor(completeT123Unis$LivingTermTimeCampus2 )
completeT123Unis$Weighing2<- factor(completeT123Unis$Weighing2)
completeT123Unis$SES_Mother1<- factor(completeT123Unis$SES_Mother1)
completeT123Unis$SES_Father1<- factor(completeT123Unis$SES_Father1)
#completeT123Unis$nEthinicity<- factor(completeT123Unis$nEthinicity)






#Analysis 1 - Full academic year weight change - full data set
#Analysis 1A: Regression based based on descriptive stats and significant variables
fitT3_T1_Weeks_T123VarUnisAll <-lm (T3_T1WD_Wks~ QuantGreen3 + UnhealthInter2 + smoking_dict2 + wgt1 + hu_member + tirt_ugpg_ratio + Sex,data=completeT123Unis) 
summary(fitT3_T1_Weeks_T123VarUnisAll)
AIC(fitT3_T1_Weeks_T123VarUnisAll)

#Analysis 1B: Investigating a best fit model via stepwise AIC 
stepT123_T3_T1_Var_UnisAll <- stepAIC(fitT3_T1_Weeks_T123VarUnisAll, scope=list(lower=~Sex,upper=~ hu_member+ tirt_totaln_students_size+ tirt_ugpg_ratio+ tirt_fyus_ft_female+ tirt_n_totalfyus_1d_ft+ tirt_rank_2014+ tirt_fyus_1d_ft_uk_dom+nHPEnv3 +nFoodEnv3+ MarketEnv3+ nSafety3+ nWalkabi3+ PublicTrans3+ FreeGym3 +GymAccess3 +QuantGreen3+ QualGreen3+InterspecInvol2 + UnhealthInter2 + Eatfriends2 + Eatfruitfriends2+NQStress2 + NQPASE2+ NQNSE2 + smoking_dict2 +Alcohol_dict2+ Eat_n_Catering_Dict2+ Eat_n_cook_dict2 + LivingTermtime2 + LivingTermTimeCampus2 + Weighing2+age + Sex + wgt1 + nEthinicity + SES_Mother1 + SES_Father1),direction="both")
stepT123_T3_T1_Var_UnisAll$anova

#Analysis 1C: Taking the best model from 1B, naming it - and obtaining descriptive stats summary
fitT3_T1_Weeks_T123UnisBestAICAll <-lm (T3_T1WD_Wks~  QuantGreen3 + UnhealthInter2 + smoking_dict2 + 
                                          wgt1 + hu_member + tirt_ugpg_ratio + Sex + tirt_n_totalfyus_1d_ft + 
                                          SES_Mother1,data=completeT123Unis)
summary(fitT3_T1_Weeks_T123UnisBestAICAll)
AIC(fitT3_T1_Weeks_T123UnisBestAICAll)

#Analysis 2 - Full academic year - females only
#Creating a dataset for females 
completeT123Unis.df <- data.frame(completeT123Unis)
completeT123Unis.F <- completeT123Unis$Sex == 2
completeT123Unis.F <- completeT123Unis.df[completeT123Unis.df$Sex == 2, ]
summary(completeT123Unis.F)
str(completeT123Unis.F)

#Analysis 2A: Regression based based on descriptive stats and significant variables
fitT3_T1_Weeks_T123VarUnisAll.F <-lm (T3_T1WD_Wks~ tirt_ugpg_ratio+ smoking_dict2 + wgt1 + UnhealthInter2 + QuantGreen3,data=completeT123Unis.F) 
summary(fitT3_T1_Weeks_T123VarUnisAll.F)
AIC(fitT3_T1_Weeks_T123VarUnisAll.F)

#Analysis 2B: Investigating a best fit model via stepwise AIC 
stepT123_T3_T1_Var_UnisAll.F <- stepAIC(fitT3_T1_Weeks_T123VarUnisAll.F, scope=list(lower=~1,upper=~ hu_member+ tirt_totaln_students_size+ tirt_ugpg_ratio+ tirt_fyus_ft_female+ tirt_n_totalfyus_1d_ft+ tirt_rank_2014+ tirt_fyus_1d_ft_uk_dom+nHPEnv3 +nFoodEnv3+ MarketEnv3+ nSafety3+ nWalkabi3+ PublicTrans3+ FreeGym3 +GymAccess3 +QuantGreen3+ QualGreen3+InterspecInvol2 + UnhealthInter2 + Eatfriends2 + Eatfruitfriends2+NQStress2 + NQPASE2+ NQNSE2 + smoking_dict2 +Alcohol_dict2+ Eat_n_Catering_Dict2+ Eat_n_cook_dict2 + LivingTermtime2 + LivingTermTimeCampus2 + Weighing2+age + Sex + wgt1 + nEthinicity + SES_Mother1 + SES_Father1),direction="both")
stepT123_T3_T1_Var_UnisAll.F$anova
#Analysis 2C: Taking the best model from 1B, naming it - and obtaining descriptive stats summary
fitT3_T1_Weeks_T123UnisBestAICAll.F <-lm (T3_T1WD_Wks~tirt_ugpg_ratio + smoking_dict2 + wgt1 + UnhealthInter2 + 
                                            QuantGreen3 + tirt_n_totalfyus_1d_ft + hu_member + SES_Mother1,data=completeT123Unis.F)
summary(fitT3_T1_Weeks_T123UnisBestAICAll.F)
AIC(fitT3_T1_Weeks_T123UnisBestAICAll.F)

#Analysis 3 - Full academic year - males only
#Creating a dataset for males
completeT123Unis.df <- data.frame(completeT123Unis)
completeT123Unis.M <- completeT123Unis$Sex == 1
completeT123Unis.M <- completeT123Unis.df[completeT123Unis.df$Sex == 1, ]
summary(completeT123Unis.M)

#Analysis 3A: Regression based based on descriptive stats and significant variables
fitT3_T1_Weeks_T123VarUnisAll.M <-lm (T3_T1WD_Wks~ tirt_ugpg_ratio + hu_member+QuantGreen3 + UnhealthInter2 + SES_Father1 + QualGreen3 + 
                                        Eat_n_cook_dict2 + FreeGym3 + PublicTrans3,data=completeT123Unis.M) 
summary(fitT3_T1_Weeks_T123VarUnisAll.M)
AIC(fitT3_T1_Weeks_T123VarUnisAll.M)

#Analysis 3B: Investigating a best fit model via stepwise AIC 
stepT123_T3_T1_Var_UnisAll.M <- stepAIC(fitT3_T1_Weeks_T123VarUnisAll.M, scope=list(lower=~1,upper=~ hu_member+ tirt_totaln_students_size+ tirt_ugpg_ratio+ tirt_fyus_ft_female+ tirt_n_totalfyus_1d_ft+ tirt_rank_2014+ tirt_fyus_1d_ft_uk_dom+nHPEnv3 +nFoodEnv3+ MarketEnv3+ nSafety3+ nWalkabi3+ PublicTrans3+ FreeGym3 +GymAccess3 +QuantGreen3+ QualGreen3+InterspecInvol2 + UnhealthInter2 + Eatfriends2 + Eatfruitfriends2+NQStress2 + NQPASE2+ NQNSE2 + smoking_dict2 +Alcohol_dict2+ Eat_n_Catering_Dict2+ Eat_n_cook_dict2 + LivingTermtime2 + LivingTermTimeCampus2 + Weighing2+age + Sex + wgt1 + nEthinicity + SES_Mother1 + SES_Father1),direction="both")
stepT123_T3_T1_Var_UnisAll.M$anova

#Analysis 3C: Taking the best model from 1B, naming it - and obtaining descriptive stats summary
fitT3_T1_Weeks_T123UnisBestAICAll.M <-lm (T3_T1WD_Wks~tirt_ugpg_ratio + hu_member + QuantGreen3 + UnhealthInter2 + 
                                            SES_Father1 + QualGreen3 + Eat_n_cook_dict2 + FreeGym3 + 
                                            PublicTrans3 + tirt_totaln_students_size + InterspecInvol2 + 
                                            Weighing2 + nWalkabi3 + nFoodEnv3 + wgt1 + NQStress2 + tirt_n_totalfyus_1d_ft + 
                                            SES_Mother1 + LivingTermtime2 + NQPASE2
                                          ,data=completeT123Unis.M)
summary(fitT3_T1_Weeks_T123UnisBestAICAll.M)
AIC(fitT3_T1_Weeks_T123UnisBestAICAll.M)

#######################################
#Creating a data set for weight losers
completeT123Unis.df <- data.frame(completeT123Unis)
completeT123Unis.WL <- completeT123Unis$T3_T1WD < -0.5
completeT123Unis.WL <- completeT123Unis.df[completeT123Unis.df$T3_T1WD < -0.5, ]
summary(completeT123Unis.WL)
str(completeT123Unis.WL)


#Creating a data set for weight gainers
completeT123Unis.df <- data.frame(completeT123Unis)
completeT123Unis.WG <- completeT123Unis$T3_T1WD>0.5
completeT123Unis.WG <- completeT123Unis.df[completeT123Unis.df$T3_T1WD>0.5, ]
summary(completeT123Unis.WG)

'#########

#Weight losers
#Analysis 15B: Weight losers - best fit model
fitWL123UnisSEMbA <- stepAIC(fitWL123UnisSEMb, scope=list(lower=~Sex,upper=~ hu_member+ tirt_totaln_students_size+ tirt_ugpg_ratio+ tirt_fyus_ft_female+ tirt_n_totalfyus_1d_ft+ tirt_rank_2014+ tirt_fyus_1d_ft_uk_dom+nHPEnv3 +nFoodEnv3+ MarketEnv3+ nSafety3+ nWalkabi3+ PublicTrans3+ FreeGym3 +GymAccess3 +QuantGreen3+ QualGreen3+InterspecInvol2 + UnhealthInter2 + Eatfriends2 + Eatfruitfriends2+NQStress2 + NQPASE2+ NQNSE2 + smoking_dict2 +Alcohol_dict2+ Eat_n_Catering_Dict2+ Eat_n_cook_dict2 + LivingTermtime2 + LivingTermTimeCampus2 + Weighing2+age + Sex + wgt1 + nEthinicity + SES_Mother1 + SES_Father1),direction="both")
fitWL123UnisSEMbA$anova
fitWL123UnisSEMbAWL <-glm (WLoser~hu_member + Eatfruitfriends2 + Sex + wgt1 + Weighing2, family=binomial(link='logit'),data=completeT123Unis)
summary(fitWL123UnisSEMbAWL)
AIC(fitWL123UnisSEMbAWL)


#Weight gainers
#Analysis 16B: Weight losers - best fit model
fitWL123UnisSEMbAWL <-glm (WGainer~tirt_ugpg_ratio + GymAccess3 + Eatfruitfriends2 + Eat_n_cook_dict2 + 
                             Weighing2 + SES_Father1 + wgt1 + Sex + Eat_n_Catering_Dict2 + 
                             QuantGreen3 + QualGreen3, family=binomial(link='logit'),data=completeT123Unis)
summary(fitWL123UnisSEMbAWL)
AIC(fitWL123UnisSEMbAWL)
