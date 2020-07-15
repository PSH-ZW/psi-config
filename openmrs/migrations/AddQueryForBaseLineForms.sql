update global_property set property_value = ("
select DISTINCT test.person_id,
                test.obs_datetime,
                test.name,
                test.numbervalue,
                test.textvalue,
                test.codedvalue,
                test.conceptid,
                concept.datatype_id,
                conceptShortName,
                test.concept_name_type,
                encounterId,
                cn.name As ValueConcept,
                visitId
from (select DISTINCT o.person_id        as person_id,
                      o.obs_datetime     as obs_datetime,
                      cname.name         as name,
                      cname.concept_id   as conceptid,
                      cname.concept_name_type,
                      o.value_numeric    as numbervalue,
                      o.value_text       as textvalue,
                      o.value_coded      as codedvalue,
                      concept.short_name as conceptShortName,
                      o.encounter_id     as encounterId,
                      enc.visit_id       as visitId
      from obs o
               join concept_name cname
               join person_name pn
               join concept concept
               join encounter enc
      where o.concept_id = cname.concept_id
        and o.concept_id = concept.concept_id
        and o.person_id = (select person_id from person where person.uuid=${patientUuid})
        and enc.encounter_id = o.encounter_id
        and cname.name like '%NCD%'
        and Date(o.obs_datetime) = CURDATE()) as test
         left outer join concept concept on test.conceptid = concept.concept_id
         left outer join concept_name cn
                         on test.codedvalue = cn.concept_id and cn.locale = 'en' and cn.locale_preferred = 1
") where property= 'bahmni.sqlGet.getBaseLineFormInformation';