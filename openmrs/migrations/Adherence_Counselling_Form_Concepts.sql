set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;


call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'Adherence Counselling Form Template','Adherence Counselling %','N/A','Misc',true);

call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Adherence Counselling Details','Adherence Counselling Details','N/A','Misc',true);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, ARV Drugs','ARV Drug','Coded','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg + Efavirenz (EFV) 600mg','Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg + Efavirenz (EFV) 600mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg + Efavirenz (EFV) 400mg','Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg + Efavirenz (EFV) 400mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 300mg + Lamivudine (3TC) 150mg + Nevirapine (NVP) 200mg','Zidovudine (AZT) 300mg + Lamivudine (3TC) 150mg + Nevirapine (NVP) 200mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 60mg + Lamivudine (3TC) 30mg + Nevirapine (NVP) 50mg','Zidovudine (AZT) 60mg + Lamivudine (3TC) 30mg + Nevirapine (NVP) 50mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg','Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tenofovir (TDF) 300mg + Emtricitabine 200mg','Tenofovir (TDF) 300mg + Emtricitabine 200mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 300mg + Lamivudine (3TC) 150mg','Zidovudine (AZT) 300mg + Lamivudine (3TC) 150mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 60mg + Lamivudine (3TC) 30mg','Zidovudine (AZT) 60mg + Lamivudine (3TC) 30mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Abacavir 600mg / Lamivudine 300mg','Abacavir 600mg / Lamivudine 300mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Abacavir 60mg / Lamivudine 30mg','Abacavir 60mg / Lamivudine 30mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Atazanavir/Rtv 300/100 mg','Atazanavir/Rtv 300/100 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Lopinavir/Rtv 80/20 mg/ml','Lopinavir/Rtv 80/20 mg/ml','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Lopinavir/Rtv 100/25 mg','Lopinavir/Rtv 100/25 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Lopinavir/Rtv 200/50 mg','Lopinavir/Rtv 200/50 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Lamivudine (3TC) 150 mg','Lamivudine (3TC) 150 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Lamivudine (3TC) 50mg/5ml','Lamivudine (3TC) 50mg/5ml','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Efavirenz (EFV) 50 mg','Efavirenz (EFV) 50 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Efavirenz (EFV) 200 mg','Efavirenz (EFV) 200 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Efavirenz (EFV) 600 mg','Efavirenz (EFV) 600 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 300 mg','Zidovudine (AZT) 300 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 100mg','Zidovudine (AZT) 100mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Zidovudine (AZT) 50mg/5ml','Zidovudine (AZT) 50mg/5ml','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Abacavir (ABC) 20mg/ml','Abacavir (ABC) 20mg/ml','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Abacavir (ABC) 300 mg','Abacavir (ABC) 300 mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Abacavir (ABC) 60mg','Abacavir (ABC) 60mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Nevirapine (NVP) 50mg/5ml','Nevirapine (NVP) 50mg/5ml','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Nevirapine (NVP) 200mg','Nevirapine (NVP) 200mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Didanosine (ddl) 125mg','Didanosine (ddl) 125mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Didanosine (ddl) 200mg','Didanosine (ddl) 200mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Didanosine (ddl) 250mg','Didanosine (ddl) 250mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Didanosine (ddl) 25mg','Didanosine (ddl) 25mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Didanosine (ddl) 400mg','Didanosine (ddl) 400mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Emitricitabine 200mg','Emitricitabine 200mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tenofovir 300mg','Tenofovir 300mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Indinavir 400mg','Indinavir 400mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Saquinavir 200mg','Saquinavir 200mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg + Dolutegravia (DTG) 50mg','Tenofovir (TDF) 300mg + Lamivudine (3TC) 300mg + Dolutegravia (DTG) 50mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Dolutegravia (DTG) 50mg','Dolutegravia (DTG) 50mg','N/A','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Dolutegravia (DTG) 25mg','Dolutegravia (DTG) 25mg','N/A','Misc',false);

call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tablets remaining at last visit','Tablets remaining at last visit','Numeric','Misc',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Tablets supplied at last visit','Tablets supplied at last visit','Numeric','Computed',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Number of days since last visit','Number of days since last visit','Numeric','Computed',false);
call add_concept_psi(@concept_id,@concept_short_id,@concept_full_id,'AC Form, Adherence Counselling Percentage','Adherence Counselling %','Numeric','Computed',false);
