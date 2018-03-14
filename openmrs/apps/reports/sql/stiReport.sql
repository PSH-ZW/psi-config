select 
  piPrepOIIdentifier.identifier as "OI No.", 
  CONCAT(
    pnNameSurnameofPatient.given_name, 
    " ", 
    COALESCE(
      pnNameSurnameofPatient.middle_name, 
      ''
    )
  ) as "Name", 
  pnNameSurnameofPatient.family_name as "Surname", 
  case when perSexAge.gender = 'M' then 'Male' when perSexAge.gender = 'F' then 'Female' when perSexAge.gender = 'O' then 'Other' end as "Sex", 
  TIMESTAMPDIFF(
    YEAR, 
    perSexAge.birthdate, 
    CURDATE()
  ) as Age, 
  GROUP_CONCAT(
    DISTINCT (
      case when personAttributeTypeonRegistration.name = 'Population' then cv.concept_full_name else null end
    )
  ) as "Category", 
  ROUND(
    DATEDIFF(
      CURDATE(), 
      obsActiveArtProgram.value_datetime
    ) / 7, 
    0
  ) as "Wks on ART", 
  piUIC.identifier as "UIC", 
  GROUP_CONCAT(
    distinct (
      case when personAttributeTypeonRegistration.name = 'Mother\'s name' Then personAttributesonRegistration.value else null end
    )
  ) as "Mother's name", 
  GROUP_CONCAT(
    distinct (
      case when personAttributeTypeonRegistration.name = 'District of Birth' then cv.concept_full_name else null end
    )
  ) as "District of Birth", 
  GROUP_CONCAT(
    distinct (
      case when personAttributeTypeonRegistration.name = 'Telephone' then personAttributesonRegistration.value else null end
    )
  ) as "Telephone no", 
  GROUP_CONCAT(
    distinct (
      case when personAttributeTypeonRegistration.name = 'Referral source' then case when cv.concept_short_name is null then cv.concept_full_name else cv.concept_short_name end else null end
    )
  ) as "Referred from", 
  GROUP_CONCAT(
    distinct cnNameOfDiagnosisRecorded.name
  ) as "Diagnosis", 
  date(obsSTIDiagnosis.obs_datetime) as "Diagnosis Date" 
from 
  patient pat 
  join obs obsSTIDiagnosis on pat.patient_id = obsSTIDiagnosis.person_id 
  join concept_name cnNameofDiagnosis on obsSTIDiagnosis.concept_id = cnNameofDiagnosis.concept_id 
  join obs obsActiveArtProgram ON pat.patient_id = obsActiveArtProgram.person_id 
  join concept_name cnDateofARTProgram on obsActiveArtProgram.concept_id = cnDateofARTProgram.concept_id 
  JOIN concept_name cnNameOfDiagnosisRecorded on obsSTIDiagnosis.value_coded = cnNameOfDiagnosisRecorded.concept_id 
  LEFT join patient_identifier piPrepOIIdentifier on pat.patient_id = piPrepOIIdentifier.patient_id 
  and piPrepOIIdentifier.voided = 0 
  and piPrepOIIdentifier.identifier_type in (
    select 
      patient_identifier_type_id 
    from 
      patient_identifier_type 
    where 
      name = 'PREP/OI Identifier' 
      and retired = 0 
      and uniqueness_behavior = 'UNIQUE'
  ) 
  LEFT JOIN person_name pnNameSurnameofPatient on pat.patient_id = pnNameSurnameofPatient.person_id 
  lEFT JOIN person perSexAge on pat.patient_id = perSexAge.person_id 
  lEFT JOIN patient_identifier piUIC on pat.patient_id = piUIC.patient_id 
  and piUIC.identifier_type in (
    select 
      patient_identifier_type_id 
    from 
      patient_identifier_type 
    where 
      name = 'UIC' 
      and retired = 0
  ) 
  LEFT JOIN person_attribute personAttributesonRegistration on pat.patient_id = personAttributesonRegistration.person_id 
  LEFT JOIN person_attribute_type personAttributeTypeonRegistration on personAttributesonRegistration.person_attribute_type_id = personAttributeTypeonRegistration.person_attribute_type_id 
  left jOIN concept_view cv on personAttributesonRegistration.value = cv.concept_id 
  AND cv.retired = 0 
where 
  cnNameofDiagnosis.name = 'Coded Diagnosis' 
  and cnNameofDiagnosis.concept_name_type = 'FULLY_SPECIFIED' 
  and cnNameofDiagnosis.voided = 0 
  and obsSTIDiagnosis.value_coded IN (
    select 
      concept_id 
    from 
      concept_name 
    where 
      name IN (
        "Balanitis",
        "Candidiasis, vaginal",
        "Chancroid",
        "Chancroid contact",
        "Chlamydia",
        "Epididymo-orchotis",
        "Genital ulcer disease",
        "Genital warts",
        "Gonorrhea",
        "Gonorrhea Contact",
        "Granuloma inguinale",
        "Pelvic Inflammatory disease",
        "Syphilis",
        "Syphilis contact",
        "Trichomoniasis",
        "Trichomoniasis contact",
        "Urethral Discharge Syndrome",
        "Vaginal discharge syndrome",
        "Vaginosis, bacterial"
      ) 
      and concept_name_type = 'FULLY_SPECIFIED'
  ) 
  AND obsSTIDiagnosis.voided = 0 
  and cnDateofARTProgram.name = 'PR, Start date of ART program' 
  and cnDateofARTProgram.concept_name_type = 'FULLY_SPECIFIED' 
  and cnDateofARTProgram.voided = 0 
  and obsActiveArtProgram.voided = 0 
  and obsActiveArtProgram.person_id not in (
    select 
      obs.person_id 
    from 
      obs 
      INNER JOIN concept_view on obs.concept_id = concept_view.concept_id 
      and concept_view.concept_full_name = "PR, ART Program Stop Date" 
      and obs.voided = 0
  ) 
  and date(obsSTIDiagnosis.obs_datetime) between date('#startDate#') 
  and date('#endDate#') 
group by 
  pat.patient_id, 
  obsSTIDiagnosis.obs_datetime, 
  obsSTIDiagnosis.value_coded 
order by 
  obsSTIDiagnosis.obs_datetime;