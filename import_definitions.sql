INSERT INTO entity_definition (keyname, created, created_by) VALUES ('CMD', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('Header', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('Header-MdCreator', 'Header', 'MdCreator', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('Header-MdCreationDate', 'Header', 'MdCreationDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('Header-MdSelfLink', 'Header', 'MdSelfLink', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('Header-MdProfile', 'Header', 'MdProfile', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('Header-MdCollectionDisplayName', 'Header', 'MdCollectionDisplayName', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('Resources', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('ResourceProxyList', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('ResourceProxy', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('ResourceProxy-ResourceType', 'ResourceProxy', 'ResourceType', 'reference', 'ResourceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ResourceProxy-ResourceRef', 'ResourceProxy', 'ResourceRef', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('ResourceProxyList-ResourceProxy', 'ResourceProxyList', 'ResourceProxy', 'reference', 'ResourceProxy');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('JournalFileProxyList', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('JournalFileProxy', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('JournalFileProxy-JournalFileRef', 'JournalFileProxy', 'JournalFileRef', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('JournalFileProxyList-JournalFileProxy', 'JournalFileProxyList', 'JournalFileProxy', 'reference', 'JournalFileProxy');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('ResourceRelationList', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('ResourceRelation', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ResourceRelation-RelationType', 'ResourceRelation', 'RelationType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ResourceRelation-Res1', 'ResourceRelation', 'Res1', 'undefined');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ResourceRelation-Res2', 'ResourceRelation', 'Res2', 'undefined');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('ResourceRelationList-ResourceRelation', 'ResourceRelationList', 'ResourceRelation', 'reference', 'ResourceRelation');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('IsPartOfList', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('IsPartOfList-IsPartOf', 'IsPartOfList', 'IsPartOf', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('Resources-ResourceProxyList', 'Resources', 'ResourceProxyList', 'reference', 'ResourceProxyList');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('Resources-JournalFileProxyList', 'Resources', 'JournalFileProxyList', 'reference', 'JournalFileProxyList');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('Resources-ResourceRelationList', 'Resources', 'ResourceRelationList', 'reference', 'ResourceRelationList');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('Resources-IsPartOfList', 'Resources', 'IsPartOfList', 'reference', 'IsPartOfList');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('Components', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resourceInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('identificationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('identificationInfo-resourceName', 'identificationInfo', 'resourceName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('identificationInfo-description', 'identificationInfo', 'description', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('identificationInfo-resourceShortName', 'identificationInfo', 'resourceShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('identificationInfo-url', 'identificationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('identificationInfo-metaShareId', 'identificationInfo', 'metaShareId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('identificationInfo-identifier', 'identificationInfo', 'identifier', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('distributionInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('licenceInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('licensorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licensorPerson-role', 'licensorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licensorPerson-personInfo', 'licensorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('licensorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licensorOrganization-role', 'licensorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licensorOrganization-organizationInfo', 'licensorOrganization', 'organizationInfo', 'reference', 'organizationInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('distributionRightsHolderPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('distributionRightsHolderPerson-role', 'distributionRightsHolderPerson', 'role', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('distributionRightsHolderPerson-personInfo', 'distributionRightsHolderPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('distributionRightsHolderOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('distributionRightsHolderOrganization-role', 'distributionRightsHolderOrganization', 'role', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('distributionRightsHolderOrganization-organizationInfo', 'distributionRightsHolderOrganization', 'organizationInfo', 'reference', 'organizationInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('membershipInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('membershipInfo-member', 'membershipInfo', 'member', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('membershipInfo-membershipInstitution', 'membershipInfo', 'membershipInstitution', 'reference', 'membershipInstitution');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-licence', 'licenceInfo', 'licence', 'reference', 'licence');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-restrictionsOfUse', 'licenceInfo', 'restrictionsOfUse', 'reference', 'restrictionsOfUse');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-distributionAccessMedium', 'licenceInfo', 'distributionAccessMedium', 'reference', 'distributionAccessMedium');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-downloadLocation', 'licenceInfo', 'downloadLocation', 'reference', 'downloadLocation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-executionLocation', 'licenceInfo', 'executionLocation', 'reference', 'executionLocation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('licenceInfo-fee', 'licenceInfo', 'fee', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('licenceInfo-attributionText', 'licenceInfo', 'attributionText', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-userNature', 'licenceInfo', 'userNature', 'reference', 'userNature');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-licensorPerson', 'licenceInfo', 'licensorPerson', 'reference', 'licensorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-licensorOrganization', 'licenceInfo', 'licensorOrganization', 'reference', 'licensorOrganization');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-distributionRightsHolderPerson', 'licenceInfo', 'distributionRightsHolderPerson', 'reference', 'distributionRightsHolderPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-distributionRightsHolderOrganization', 'licenceInfo', 'distributionRightsHolderOrganization', 'reference', 'distributionRightsHolderOrganization');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('licenceInfo-membershipInfo', 'licenceInfo', 'membershipInfo', 'reference', 'membershipInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('iprHolderPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('iprHolderPerson-role', 'iprHolderPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('iprHolderPerson-personInfo', 'iprHolderPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('iprHolderOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('iprHolderOrganization-role', 'iprHolderOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('iprHolderOrganization-organizationInfo', 'iprHolderOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('distributionInfo-availability', 'distributionInfo', 'availability', 'reference', 'availability');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('distributionInfo-availabilityEndDate', 'distributionInfo', 'availabilityEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('distributionInfo-availabilityStartDate', 'distributionInfo', 'availabilityStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('distributionInfo-licenceInfo', 'distributionInfo', 'licenceInfo', 'reference', 'licenceInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('distributionInfo-iprHolderPerson', 'distributionInfo', 'iprHolderPerson', 'reference', 'iprHolderPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('distributionInfo-iprHolderOrganization', 'distributionInfo', 'iprHolderOrganization', 'reference', 'iprHolderOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('contactPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('contactPerson-role', 'contactPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('contactPerson-personInfo', 'contactPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('metadataInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('metadataCreator', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('metadataCreator-role', 'metadataCreator', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('metadataCreator-personInfo', 'metadataCreator', 'personInfo', 'reference', 'personInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-metadataCreationDate', 'metadataInfo', 'metadataCreationDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-source', 'metadataInfo', 'source', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-originalMetadataSchema', 'metadataInfo', 'originalMetadataSchema', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('metadataInfo-originalMetadataLink', 'metadataInfo', 'originalMetadataLink', 'reference', 'originalMetadataLink');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-metadataLanguageName', 'metadataInfo', 'metadataLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-metadataLanguageId', 'metadataInfo', 'metadataLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-metadataLastDateUpdated', 'metadataInfo', 'metadataLastDateUpdated', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('metadataInfo-revision', 'metadataInfo', 'revision', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('metadataInfo-metadataCreator', 'metadataInfo', 'metadataCreator', 'reference', 'metadataCreator');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('versionInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('versionInfo-version', 'versionInfo', 'version', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('versionInfo-revision', 'versionInfo', 'revision', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('versionInfo-lastDateUpdated', 'versionInfo', 'lastDateUpdated', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('versionInfo-updateFrequency', 'versionInfo', 'updateFrequency', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('validationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerValidation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerValidation-role', 'sizePerValidation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerValidation-sizeInfo', 'sizePerValidation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('validationReportStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationReportStructured-role', 'validationReportStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationReportStructured-documentInfo', 'validationReportStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('validationReportUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationReportUnstructured-role', 'validationReportUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('validationReportUnstructured-documentUnstructured', 'validationReportUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('validationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('validationTool-targetResourceNameURI', 'validationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('validatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validatorPerson-role', 'validatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validatorPerson-personInfo', 'validatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('validatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validatorOrganization-role', 'validatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validatorOrganization-organizationInfo', 'validatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('validationInfo-validated', 'validationInfo', 'validated', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validationType', 'validationInfo', 'validationType', 'reference', 'validationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validationMode', 'validationInfo', 'validationMode', 'reference', 'validationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('validationInfo-validationModeDetails', 'validationInfo', 'validationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validationExtent', 'validationInfo', 'validationExtent', 'reference', 'validationExtent');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('validationInfo-validationExtentDetails', 'validationInfo', 'validationExtentDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-sizePerValidation', 'validationInfo', 'sizePerValidation', 'reference', 'sizePerValidation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validationReportStructured', 'validationInfo', 'validationReportStructured', 'reference', 'validationReportStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validationReportUnstructured', 'validationInfo', 'validationReportUnstructured', 'reference', 'validationReportUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validationTool', 'validationInfo', 'validationTool', 'reference', 'validationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validatorPerson', 'validationInfo', 'validatorPerson', 'reference', 'validatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('validationInfo-validatorOrganization', 'validationInfo', 'validatorOrganization', 'reference', 'validatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('usageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('accessTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('accessTool-targetResourceNameURI', 'accessTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resourceAssociatedWith', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resourceAssociatedWith-targetResourceNameURI', 'resourceAssociatedWith', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('foreseenUseInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('foreseenUseInfo-foreseenUse', 'foreseenUseInfo', 'foreseenUse', 'reference', 'foreseenUse');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('foreseenUseInfo-useNLPSpecific', 'foreseenUseInfo', 'useNLPSpecific', 'reference', 'useNLPSpecific');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('actualUseInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('usageReportStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageReportStructured-role', 'usageReportStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageReportStructured-documentInfo', 'usageReportStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('usageReportUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageReportUnstructured-role', 'usageReportUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('usageReportUnstructured-documentUnstructured', 'usageReportUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('derivedResource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('derivedResource-targetResourceNameURI', 'derivedResource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('usageProject', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('projectInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectName', 'projectInfo', 'projectName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectShortName', 'projectInfo', 'projectShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectID', 'projectInfo', 'projectID', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('projectInfo-url', 'projectInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('projectInfo-fundingType', 'projectInfo', 'fundingType', 'reference', 'fundingType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-funder', 'projectInfo', 'funder', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-fundingCountry', 'projectInfo', 'fundingCountry', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectStartDate', 'projectInfo', 'projectStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectEndDate', 'projectInfo', 'projectEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageProject-role', 'usageProject', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageProject-projectInfo', 'usageProject', 'projectInfo', 'reference', 'projectInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('actualUseInfo-actualUse', 'actualUseInfo', 'actualUse', 'reference', 'actualUse');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('actualUseInfo-useNLPSpecific', 'actualUseInfo', 'useNLPSpecific', 'reference', 'useNLPSpecific');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('actualUseInfo-actualUseDetails', 'actualUseInfo', 'actualUseDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('actualUseInfo-usageReportStructured', 'actualUseInfo', 'usageReportStructured', 'reference', 'usageReportStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('actualUseInfo-usageReportUnstructured', 'actualUseInfo', 'usageReportUnstructured', 'reference', 'usageReportUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('actualUseInfo-derivedResource', 'actualUseInfo', 'derivedResource', 'reference', 'derivedResource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('actualUseInfo-usageProject', 'actualUseInfo', 'usageProject', 'reference', 'usageProject');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageInfo-accessTool', 'usageInfo', 'accessTool', 'reference', 'accessTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageInfo-resourceAssociatedWith', 'usageInfo', 'resourceAssociatedWith', 'reference', 'resourceAssociatedWith');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageInfo-foreseenUseInfo', 'usageInfo', 'foreseenUseInfo', 'reference', 'foreseenUseInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('usageInfo-actualUseInfo', 'usageInfo', 'actualUseInfo', 'reference', 'actualUseInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resourceDocumentationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentationUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentationUnstructured-role', 'documentationUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentationUnstructured-documentUnstructured', 'documentationUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentationStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentationStructured-role', 'documentationStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentationStructured-documentInfo', 'documentationStructured', 'documentInfo', 'reference', 'documentInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceDocumentationInfo-samplesLocation', 'resourceDocumentationInfo', 'samplesLocation', 'reference', 'samplesLocation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceDocumentationInfo-toolDocumentationType', 'resourceDocumentationInfo', 'toolDocumentationType', 'reference', 'toolDocumentationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceDocumentationInfo-documentationUnstructured', 'resourceDocumentationInfo', 'documentationUnstructured', 'reference', 'documentationUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceDocumentationInfo-documentationStructured', 'resourceDocumentationInfo', 'documentationStructured', 'reference', 'documentationStructured');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resourceCreationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resourceCreatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreatorPerson-role', 'resourceCreatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreatorPerson-personInfo', 'resourceCreatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resourceCreatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreatorOrganization-role', 'resourceCreatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreatorOrganization-organizationInfo', 'resourceCreatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('fundingProject', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('projectInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectName', 'projectInfo', 'projectName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectShortName', 'projectInfo', 'projectShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectID', 'projectInfo', 'projectID', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('projectInfo-url', 'projectInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('projectInfo-fundingType', 'projectInfo', 'fundingType', 'reference', 'fundingType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-funder', 'projectInfo', 'funder', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-fundingCountry', 'projectInfo', 'fundingCountry', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectStartDate', 'projectInfo', 'projectStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('projectInfo-projectEndDate', 'projectInfo', 'projectEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('fundingProject-role', 'fundingProject', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('fundingProject-projectInfo', 'fundingProject', 'projectInfo', 'reference', 'projectInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resourceCreationInfo-creationStartDate', 'resourceCreationInfo', 'creationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resourceCreationInfo-creationEndDate', 'resourceCreationInfo', 'creationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreationInfo-resourceCreatorPerson', 'resourceCreationInfo', 'resourceCreatorPerson', 'reference', 'resourceCreatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreationInfo-resourceCreatorOrganization', 'resourceCreationInfo', 'resourceCreatorOrganization', 'reference', 'resourceCreatorOrganization');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceCreationInfo-fundingProject', 'resourceCreationInfo', 'fundingProject', 'reference', 'fundingProject');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('relationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('relatedResource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('relatedResource-targetResourceNameURI', 'relatedResource', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('relationInfo-relationType', 'relationInfo', 'relationType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('relationInfo-relatedResource', 'relationInfo', 'relatedResource', 'reference', 'relatedResource');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusMediaType', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusTextInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('lingualityInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-lingualityType', 'lingualityInfo', 'lingualityType', 'reference', 'lingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-multilingualityType', 'lingualityInfo', 'multilingualityType', 'reference', 'multilingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('lingualityInfo-multilingualityTypeDetails', 'lingualityInfo', 'multilingualityTypeDetails', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-role', 'sizePerLanguage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-sizeInfo', 'sizePerLanguage', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageVarietyInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguageVariety', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-role', 'sizePerLanguageVariety', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-sizeInfo', 'sizePerLanguageVariety', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-languageVarietyType', 'languageVarietyInfo', 'languageVarietyType', 'reference', 'languageVarietyType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageVarietyInfo-languageVarietyName', 'languageVarietyInfo', 'languageVarietyName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-sizePerLanguageVariety', 'languageVarietyInfo', 'sizePerLanguageVariety', 'reference', 'sizePerLanguageVariety');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageId', 'languageInfo', 'languageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageName', 'languageInfo', 'languageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageScript', 'languageInfo', 'languageScript', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-sizePerLanguage', 'languageInfo', 'sizePerLanguage', 'reference', 'sizePerLanguage');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-languageVarietyInfo', 'languageInfo', 'languageVarietyInfo', 'reference', 'languageVarietyInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('modalityInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerModality', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-role', 'sizePerModality', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-sizeInfo', 'sizePerModality', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-modalityType', 'modalityInfo', 'modalityType', 'reference', 'modalityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('modalityInfo-modalityTypeDetails', 'modalityInfo', 'modalityTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-sizePerModality', 'modalityInfo', 'sizePerModality', 'reference', 'sizePerModality');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('textFormatInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTextFormat', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextFormat-role', 'sizePerTextFormat', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextFormat-sizeInfo', 'sizePerTextFormat', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textFormatInfo-mimeType', 'textFormatInfo', 'mimeType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textFormatInfo-sizePerTextFormat', 'textFormatInfo', 'sizePerTextFormat', 'reference', 'sizePerTextFormat');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('characterEncodingInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerCharacterEncoding', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerCharacterEncoding-role', 'sizePerCharacterEncoding', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerCharacterEncoding-sizeInfo', 'sizePerCharacterEncoding', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('characterEncodingInfo-characterEncoding', 'characterEncodingInfo', 'characterEncoding', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('characterEncodingInfo-sizePerCharacterEncoding', 'characterEncodingInfo', 'sizePerCharacterEncoding', 'reference', 'sizePerCharacterEncoding');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualUnstructured-role', 'annotationManualUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationManualUnstructured-documentUnstructured', 'annotationManualUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-role', 'annotationManualStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-documentInfo', 'annotationManualStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationTool-targetResourceNameURI', 'annotationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAnnotation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-role', 'sizePerAnnotation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-sizeInfo', 'sizePerAnnotation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-role', 'annotatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-personInfo', 'annotatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-role', 'annotatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-organizationInfo', 'annotatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationType', 'annotationInfo', 'annotationType', 'reference', 'annotationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatedElements', 'annotationInfo', 'annotatedElements', 'reference', 'annotatedElements');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStandoff', 'annotationInfo', 'annotationStandoff', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-segmentationLevel', 'annotationInfo', 'segmentationLevel', 'reference', 'segmentationLevel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationFormat', 'annotationInfo', 'annotationFormat', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagset', 'annotationInfo', 'tagset', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageId', 'annotationInfo', 'tagsetLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageName', 'annotationInfo', 'tagsetLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-conformanceToStandardsBestPractices', 'annotationInfo', 'conformanceToStandardsBestPractices', 'reference', 'conformanceToStandardsBestPractices');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-theoreticModel', 'annotationInfo', 'theoreticModel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationMode', 'annotationInfo', 'annotationMode', 'reference', 'annotationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationModeDetails', 'annotationInfo', 'annotationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStartDate', 'annotationInfo', 'annotationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationEndDate', 'annotationInfo', 'annotationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-interannotatorAgreement', 'annotationInfo', 'interannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-intraannotatorAgreement', 'annotationInfo', 'intraannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualUnstructured', 'annotationInfo', 'annotationManualUnstructured', 'reference', 'annotationManualUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualStructured', 'annotationInfo', 'annotationManualStructured', 'reference', 'annotationManualStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationTool', 'annotationInfo', 'annotationTool', 'reference', 'annotationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-sizePerAnnotation', 'annotationInfo', 'sizePerAnnotation', 'reference', 'sizePerAnnotation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorPerson', 'annotationInfo', 'annotatorPerson', 'reference', 'annotatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorOrganization', 'annotationInfo', 'annotatorOrganization', 'reference', 'annotatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('domainInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerDomain', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-role', 'sizePerDomain', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-sizeInfo', 'sizePerDomain', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('domainInfo-domain', 'domainInfo', 'domain', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-conformanceToClassificationScheme', 'domainInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-sizePerDomain', 'domainInfo', 'sizePerDomain', 'reference', 'sizePerDomain');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('textClassificationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTextClassification', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextClassification-role', 'sizePerTextClassification', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextClassification-sizeInfo', 'sizePerTextClassification', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-textGenre', 'textClassificationInfo', 'textGenre', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-textType', 'textClassificationInfo', 'textType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-register', 'textClassificationInfo', 'register', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-subject_topic', 'textClassificationInfo', 'subject_topic', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textClassificationInfo-conformanceToClassificationScheme', 'textClassificationInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textClassificationInfo-sizePerTextClassification', 'textClassificationInfo', 'sizePerTextClassification', 'reference', 'sizePerTextClassification');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('timeCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTimeCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-role', 'sizePerTimeCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-sizeInfo', 'sizePerTimeCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('timeCoverageInfo-timeCoverage', 'timeCoverageInfo', 'timeCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('timeCoverageInfo-sizePerTimeCoverage', 'timeCoverageInfo', 'sizePerTimeCoverage', 'reference', 'sizePerTimeCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('geographicCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerGeographicCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-role', 'sizePerGeographicCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-sizeInfo', 'sizePerGeographicCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('geographicCoverageInfo-geographicCoverage', 'geographicCoverageInfo', 'geographicCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('geographicCoverageInfo-sizePerGeographicCoverage', 'geographicCoverageInfo', 'sizePerGeographicCoverage', 'reference', 'sizePerGeographicCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('originalSource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('originalSource-targetResourceNameURI', 'originalSource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationTool-targetResourceNameURI', 'creationTool', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationMode', 'creationInfo', 'creationMode', 'reference', 'creationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationInfo-creationModeDetails', 'creationInfo', 'creationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-originalSource', 'creationInfo', 'originalSource', 'reference', 'originalSource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationTool', 'creationInfo', 'creationTool', 'reference', 'creationTool');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('linkToOtherMediaInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('linkToOtherMediaInfo-otherMedia', 'linkToOtherMediaInfo', 'otherMedia', 'reference', 'otherMedia');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-mediaTypeDetails', 'linkToOtherMediaInfo', 'mediaTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithText', 'linkToOtherMediaInfo', 'synchronizedWithText', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithAudio', 'linkToOtherMediaInfo', 'synchronizedWithAudio', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithVideo', 'linkToOtherMediaInfo', 'synchronizedWithVideo', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-sycnhronizedWithImage', 'linkToOtherMediaInfo', 'sycnhronizedWithImage', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithTextNumerical', 'linkToOtherMediaInfo', 'synchronizedWithTextNumerical', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-mediaType', 'corpusTextInfo', 'mediaType', 'reference', 'mediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-lingualityInfo', 'corpusTextInfo', 'lingualityInfo', 'reference', 'lingualityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-languageInfo', 'corpusTextInfo', 'languageInfo', 'reference', 'languageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-modalityInfo', 'corpusTextInfo', 'modalityInfo', 'reference', 'modalityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-sizeInfo', 'corpusTextInfo', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-textFormatInfo', 'corpusTextInfo', 'textFormatInfo', 'reference', 'textFormatInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-characterEncodingInfo', 'corpusTextInfo', 'characterEncodingInfo', 'reference', 'characterEncodingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-annotationInfo', 'corpusTextInfo', 'annotationInfo', 'reference', 'annotationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-domainInfo', 'corpusTextInfo', 'domainInfo', 'reference', 'domainInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-textClassificationInfo', 'corpusTextInfo', 'textClassificationInfo', 'reference', 'textClassificationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-timeCoverageInfo', 'corpusTextInfo', 'timeCoverageInfo', 'reference', 'timeCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-geographicCoverageInfo', 'corpusTextInfo', 'geographicCoverageInfo', 'reference', 'geographicCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-creationInfo', 'corpusTextInfo', 'creationInfo', 'reference', 'creationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextInfo-linkToOtherMediaInfo', 'corpusTextInfo', 'linkToOtherMediaInfo', 'reference', 'linkToOtherMediaInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusAudioInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('lingualityInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-lingualityType', 'lingualityInfo', 'lingualityType', 'reference', 'lingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-multilingualityType', 'lingualityInfo', 'multilingualityType', 'reference', 'multilingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('lingualityInfo-multilingualityTypeDetails', 'lingualityInfo', 'multilingualityTypeDetails', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-role', 'sizePerLanguage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-sizeInfo', 'sizePerLanguage', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageVarietyInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguageVariety', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-role', 'sizePerLanguageVariety', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-sizeInfo', 'sizePerLanguageVariety', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-languageVarietyType', 'languageVarietyInfo', 'languageVarietyType', 'reference', 'languageVarietyType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageVarietyInfo-languageVarietyName', 'languageVarietyInfo', 'languageVarietyName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-sizePerLanguageVariety', 'languageVarietyInfo', 'sizePerLanguageVariety', 'reference', 'sizePerLanguageVariety');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageId', 'languageInfo', 'languageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageName', 'languageInfo', 'languageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageScript', 'languageInfo', 'languageScript', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-sizePerLanguage', 'languageInfo', 'sizePerLanguage', 'reference', 'sizePerLanguage');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-languageVarietyInfo', 'languageInfo', 'languageVarietyInfo', 'reference', 'languageVarietyInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('modalityInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerModality', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-role', 'sizePerModality', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-sizeInfo', 'sizePerModality', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-modalityType', 'modalityInfo', 'modalityType', 'reference', 'modalityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('modalityInfo-modalityTypeDetails', 'modalityInfo', 'modalityTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-sizePerModality', 'modalityInfo', 'sizePerModality', 'reference', 'sizePerModality');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('audioSizeInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('durationOfEffectiveSpeechInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('durationOfEffectiveSpeechInfo-size', 'durationOfEffectiveSpeechInfo', 'size', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('durationOfEffectiveSpeechInfo-durationUnit', 'durationOfEffectiveSpeechInfo', 'durationUnit', 'reference', 'durationUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('durationOfAudioInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('durationOfAudioInfo-size', 'durationOfAudioInfo', 'size', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('durationOfAudioInfo-durationUnit', 'durationOfAudioInfo', 'durationUnit', 'reference', 'durationUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioSizeInfo-sizeInfo', 'audioSizeInfo', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioSizeInfo-durationOfEffectiveSpeechInfo', 'audioSizeInfo', 'durationOfEffectiveSpeechInfo', 'reference', 'durationOfEffectiveSpeechInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioSizeInfo-durationOfAudioInfo', 'audioSizeInfo', 'durationOfAudioInfo', 'reference', 'durationOfAudioInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('audioContentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioContentInfo-speechItems', 'audioContentInfo', 'speechItems', 'reference', 'speechItems');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioContentInfo-nonSpeechItems', 'audioContentInfo', 'nonSpeechItems', 'reference', 'nonSpeechItems');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('audioContentInfo-textualDescription', 'audioContentInfo', 'textualDescription', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioContentInfo-noiseLevel', 'audioContentInfo', 'noiseLevel', 'reference', 'noiseLevel');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('settingInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-naturality', 'settingInfo', 'naturality', 'reference', 'naturality');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-conversationalType', 'settingInfo', 'conversationalType', 'reference', 'conversationalType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-scenarioType', 'settingInfo', 'scenarioType', 'reference', 'scenarioType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-audience', 'settingInfo', 'audience', 'reference', 'audience');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-interactivity', 'settingInfo', 'interactivity', 'reference', 'interactivity');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('settingInfo-interaction', 'settingInfo', 'interaction', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('audioFormatInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('compressionInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('compressionInfo-compression', 'compressionInfo', 'compression', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('compressionInfo-compressionName', 'compressionInfo', 'compressionName', 'reference', 'compressionName');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('compressionInfo-compressionLoss', 'compressionInfo', 'compressionLoss', 'boolean');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAudioFormat', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAudioFormat-role', 'sizePerAudioFormat', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAudioFormat-sizeInfo', 'sizePerAudioFormat', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('audioFormatInfo-mimeType', 'audioFormatInfo', 'mimeType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-signalEncoding', 'audioFormatInfo', 'signalEncoding', 'reference', 'signalEncoding');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('audioFormatInfo-samplingRate', 'audioFormatInfo', 'samplingRate', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-quantization', 'audioFormatInfo', 'quantization', 'reference', 'quantization');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-byteOrder', 'audioFormatInfo', 'byteOrder', 'reference', 'byteOrder');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-signConvention', 'audioFormatInfo', 'signConvention', 'reference', 'signConvention');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-audioQualityMeasuresIncluded', 'audioFormatInfo', 'audioQualityMeasuresIncluded', 'reference', 'audioQualityMeasuresIncluded');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-numberOfTracks', 'audioFormatInfo', 'numberOfTracks', 'reference', 'numberOfTracks');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-recordingQuality', 'audioFormatInfo', 'recordingQuality', 'reference', 'recordingQuality');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-compressionInfo', 'audioFormatInfo', 'compressionInfo', 'reference', 'compressionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioFormatInfo-sizePerAudioFormat', 'audioFormatInfo', 'sizePerAudioFormat', 'reference', 'sizePerAudioFormat');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualUnstructured-role', 'annotationManualUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationManualUnstructured-documentUnstructured', 'annotationManualUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-role', 'annotationManualStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-documentInfo', 'annotationManualStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationTool-targetResourceNameURI', 'annotationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAnnotation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-role', 'sizePerAnnotation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-sizeInfo', 'sizePerAnnotation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-role', 'annotatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-personInfo', 'annotatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-role', 'annotatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-organizationInfo', 'annotatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationType', 'annotationInfo', 'annotationType', 'reference', 'annotationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatedElements', 'annotationInfo', 'annotatedElements', 'reference', 'annotatedElements');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStandoff', 'annotationInfo', 'annotationStandoff', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-segmentationLevel', 'annotationInfo', 'segmentationLevel', 'reference', 'segmentationLevel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationFormat', 'annotationInfo', 'annotationFormat', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagset', 'annotationInfo', 'tagset', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageId', 'annotationInfo', 'tagsetLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageName', 'annotationInfo', 'tagsetLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-conformanceToStandardsBestPractices', 'annotationInfo', 'conformanceToStandardsBestPractices', 'reference', 'conformanceToStandardsBestPractices');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-theoreticModel', 'annotationInfo', 'theoreticModel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationMode', 'annotationInfo', 'annotationMode', 'reference', 'annotationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationModeDetails', 'annotationInfo', 'annotationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStartDate', 'annotationInfo', 'annotationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationEndDate', 'annotationInfo', 'annotationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-interannotatorAgreement', 'annotationInfo', 'interannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-intraannotatorAgreement', 'annotationInfo', 'intraannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualUnstructured', 'annotationInfo', 'annotationManualUnstructured', 'reference', 'annotationManualUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualStructured', 'annotationInfo', 'annotationManualStructured', 'reference', 'annotationManualStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationTool', 'annotationInfo', 'annotationTool', 'reference', 'annotationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-sizePerAnnotation', 'annotationInfo', 'sizePerAnnotation', 'reference', 'sizePerAnnotation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorPerson', 'annotationInfo', 'annotatorPerson', 'reference', 'annotatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorOrganization', 'annotationInfo', 'annotatorOrganization', 'reference', 'annotatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('domainInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerDomain', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-role', 'sizePerDomain', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-sizeInfo', 'sizePerDomain', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('domainInfo-domain', 'domainInfo', 'domain', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-conformanceToClassificationScheme', 'domainInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-sizePerDomain', 'domainInfo', 'sizePerDomain', 'reference', 'sizePerDomain');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('timeCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTimeCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-role', 'sizePerTimeCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-sizeInfo', 'sizePerTimeCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('timeCoverageInfo-timeCoverage', 'timeCoverageInfo', 'timeCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('timeCoverageInfo-sizePerTimeCoverage', 'timeCoverageInfo', 'sizePerTimeCoverage', 'reference', 'sizePerTimeCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('geographicCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerGeographicCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-role', 'sizePerGeographicCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-sizeInfo', 'sizePerGeographicCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('geographicCoverageInfo-geographicCoverage', 'geographicCoverageInfo', 'geographicCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('geographicCoverageInfo-sizePerGeographicCoverage', 'geographicCoverageInfo', 'sizePerGeographicCoverage', 'reference', 'sizePerGeographicCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('audioClassificationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAudioClassification', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAudioClassification-role', 'sizePerAudioClassification', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAudioClassification-sizeInfo', 'sizePerAudioClassification', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioClassificationInfo-audioGenre', 'audioClassificationInfo', 'audioGenre', 'reference', 'audioGenre');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioClassificationInfo-speechGenre', 'audioClassificationInfo', 'speechGenre', 'reference', 'speechGenre');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('audioClassificationInfo-subject_topic', 'audioClassificationInfo', 'subject_topic', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('audioClassificationInfo-register', 'audioClassificationInfo', 'register', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioClassificationInfo-conformanceToClassificationScheme', 'audioClassificationInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('audioClassificationInfo-sizePerAudioClassification', 'audioClassificationInfo', 'sizePerAudioClassification', 'reference', 'sizePerAudioClassification');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recordingInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recorderPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderPerson-role', 'recorderPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderPerson-personInfo', 'recorderPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recorderOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderOrganization-role', 'recorderOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderOrganization-organizationInfo', 'recorderOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recordingDeviceType', 'recordingInfo', 'recordingDeviceType', 'reference', 'recordingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-recordingDeviceTypeDetails', 'recordingInfo', 'recordingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-recordingPlatformSoftware', 'recordingInfo', 'recordingPlatformSoftware', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recordingEnvironment', 'recordingInfo', 'recordingEnvironment', 'reference', 'recordingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-sourceChannel', 'recordingInfo', 'sourceChannel', 'reference', 'sourceChannel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-sourceChannelType', 'recordingInfo', 'sourceChannelType', 'reference', 'sourceChannelType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-sourceChannelName', 'recordingInfo', 'sourceChannelName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-sourceChannelDetails', 'recordingInfo', 'sourceChannelDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recorderPerson', 'recordingInfo', 'recorderPerson', 'reference', 'recorderPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recorderOrganization', 'recordingInfo', 'recorderOrganization', 'reference', 'recorderOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('captureInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personSourceSetInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('participantInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-alias', 'participantInfo', 'alias', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-ageGroup', 'participantInfo', 'ageGroup', 'reference', 'ageGroup');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-age', 'participantInfo', 'age', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-sex', 'participantInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-origin', 'participantInfo', 'origin', 'reference', 'origin');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfLiving', 'participantInfo', 'placeOfLiving', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfBirth', 'participantInfo', 'placeOfBirth', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfChildhood', 'participantInfo', 'placeOfChildhood', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-dialectAccent', 'participantInfo', 'dialectAccent', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-speakingImpairment', 'participantInfo', 'speakingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-hearingImpairment', 'participantInfo', 'hearingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-smokingHabits', 'participantInfo', 'smokingHabits', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-vocalTractConditions', 'participantInfo', 'vocalTractConditions', 'reference', 'vocalTractConditions');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-profession', 'participantInfo', 'profession', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-height', 'participantInfo', 'height', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-weight', 'participantInfo', 'weight', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-trainedSpeaker', 'participantInfo', 'trainedSpeaker', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfSecondEducation', 'participantInfo', 'placeOfSecondEducation', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-educationLevel', 'participantInfo', 'educationLevel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfPersons', 'personSourceSetInfo', 'numberOfPersons', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-ageOfPersons', 'personSourceSetInfo', 'ageOfPersons', 'reference', 'ageOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeStart', 'personSourceSetInfo', 'ageRangeStart', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeEnd', 'personSourceSetInfo', 'ageRangeEnd', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-sexOfPersons', 'personSourceSetInfo', 'sexOfPersons', 'reference', 'sexOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-originOfPersons', 'personSourceSetInfo', 'originOfPersons', 'reference', 'originOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-dialectAccentOfPersons', 'personSourceSetInfo', 'dialectAccentOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-geographicDistributionOfPersons', 'personSourceSetInfo', 'geographicDistributionOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-hearingImpairmentOfPersons', 'personSourceSetInfo', 'hearingImpairmentOfPersons', 'reference', 'hearingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speakingImpairmentOfPersons', 'personSourceSetInfo', 'speakingImpairmentOfPersons', 'reference', 'speakingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfTrainedSpeakers', 'personSourceSetInfo', 'numberOfTrainedSpeakers', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speechInfluences', 'personSourceSetInfo', 'speechInfluences', 'reference', 'speechInfluences');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-participantInfo', 'personSourceSetInfo', 'participantInfo', 'reference', 'participantInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingDeviceType', 'captureInfo', 'capturingDeviceType', 'reference', 'capturingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDeviceTypeDetails', 'captureInfo', 'capturingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDetails', 'captureInfo', 'capturingDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingEnvironment', 'captureInfo', 'capturingEnvironment', 'reference', 'capturingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-sensorTechnology', 'captureInfo', 'sensorTechnology', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-sceneIllumination', 'captureInfo', 'sceneIllumination', 'reference', 'sceneIllumination');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-personSourceSetInfo', 'captureInfo', 'personSourceSetInfo', 'reference', 'personSourceSetInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('originalSource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('originalSource-targetResourceNameURI', 'originalSource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationTool-targetResourceNameURI', 'creationTool', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationMode', 'creationInfo', 'creationMode', 'reference', 'creationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationInfo-creationModeDetails', 'creationInfo', 'creationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-originalSource', 'creationInfo', 'originalSource', 'reference', 'originalSource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationTool', 'creationInfo', 'creationTool', 'reference', 'creationTool');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('linkToOtherMediaInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('linkToOtherMediaInfo-otherMedia', 'linkToOtherMediaInfo', 'otherMedia', 'reference', 'otherMedia');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-mediaTypeDetails', 'linkToOtherMediaInfo', 'mediaTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithText', 'linkToOtherMediaInfo', 'synchronizedWithText', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithAudio', 'linkToOtherMediaInfo', 'synchronizedWithAudio', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithVideo', 'linkToOtherMediaInfo', 'synchronizedWithVideo', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-sycnhronizedWithImage', 'linkToOtherMediaInfo', 'sycnhronizedWithImage', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithTextNumerical', 'linkToOtherMediaInfo', 'synchronizedWithTextNumerical', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-mediaType', 'corpusAudioInfo', 'mediaType', 'reference', 'mediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-lingualityInfo', 'corpusAudioInfo', 'lingualityInfo', 'reference', 'lingualityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-languageInfo', 'corpusAudioInfo', 'languageInfo', 'reference', 'languageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-modalityInfo', 'corpusAudioInfo', 'modalityInfo', 'reference', 'modalityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-audioSizeInfo', 'corpusAudioInfo', 'audioSizeInfo', 'reference', 'audioSizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-audioContentInfo', 'corpusAudioInfo', 'audioContentInfo', 'reference', 'audioContentInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-settingInfo', 'corpusAudioInfo', 'settingInfo', 'reference', 'settingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-audioFormatInfo', 'corpusAudioInfo', 'audioFormatInfo', 'reference', 'audioFormatInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-annotationInfo', 'corpusAudioInfo', 'annotationInfo', 'reference', 'annotationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-domainInfo', 'corpusAudioInfo', 'domainInfo', 'reference', 'domainInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-timeCoverageInfo', 'corpusAudioInfo', 'timeCoverageInfo', 'reference', 'timeCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-geographicCoverageInfo', 'corpusAudioInfo', 'geographicCoverageInfo', 'reference', 'geographicCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-audioClassificationInfo', 'corpusAudioInfo', 'audioClassificationInfo', 'reference', 'audioClassificationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-recordingInfo', 'corpusAudioInfo', 'recordingInfo', 'reference', 'recordingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-captureInfo', 'corpusAudioInfo', 'captureInfo', 'reference', 'captureInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-creationInfo', 'corpusAudioInfo', 'creationInfo', 'reference', 'creationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusAudioInfo-linkToOtherMediaInfo', 'corpusAudioInfo', 'linkToOtherMediaInfo', 'reference', 'linkToOtherMediaInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusVideoInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('lingualityInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-lingualityType', 'lingualityInfo', 'lingualityType', 'reference', 'lingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-multilingualityType', 'lingualityInfo', 'multilingualityType', 'reference', 'multilingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('lingualityInfo-multilingualityTypeDetails', 'lingualityInfo', 'multilingualityTypeDetails', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-role', 'sizePerLanguage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-sizeInfo', 'sizePerLanguage', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageVarietyInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguageVariety', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-role', 'sizePerLanguageVariety', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-sizeInfo', 'sizePerLanguageVariety', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-languageVarietyType', 'languageVarietyInfo', 'languageVarietyType', 'reference', 'languageVarietyType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageVarietyInfo-languageVarietyName', 'languageVarietyInfo', 'languageVarietyName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-sizePerLanguageVariety', 'languageVarietyInfo', 'sizePerLanguageVariety', 'reference', 'sizePerLanguageVariety');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageId', 'languageInfo', 'languageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageName', 'languageInfo', 'languageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageScript', 'languageInfo', 'languageScript', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-sizePerLanguage', 'languageInfo', 'sizePerLanguage', 'reference', 'sizePerLanguage');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-languageVarietyInfo', 'languageInfo', 'languageVarietyInfo', 'reference', 'languageVarietyInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('modalityInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerModality', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-role', 'sizePerModality', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-sizeInfo', 'sizePerModality', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-modalityType', 'modalityInfo', 'modalityType', 'reference', 'modalityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('modalityInfo-modalityTypeDetails', 'modalityInfo', 'modalityTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-sizePerModality', 'modalityInfo', 'sizePerModality', 'reference', 'sizePerModality');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('videoContentInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('dynamicElementInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-typeOfElement', 'dynamicElementInfo', 'typeOfElement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('dynamicElementInfo-bodyParts', 'dynamicElementInfo', 'bodyParts', 'reference', 'bodyParts');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-distractors', 'dynamicElementInfo', 'distractors', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-interactiveMedia', 'dynamicElementInfo', 'interactiveMedia', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-faceViews', 'dynamicElementInfo', 'faceViews', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-faceExpressions', 'dynamicElementInfo', 'faceExpressions', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-bodyMovement', 'dynamicElementInfo', 'bodyMovement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-gestures', 'dynamicElementInfo', 'gestures', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-handArmMovement', 'dynamicElementInfo', 'handArmMovement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-handManipulation', 'dynamicElementInfo', 'handManipulation', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-headMovement', 'dynamicElementInfo', 'headMovement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-eyeMovement', 'dynamicElementInfo', 'eyeMovement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('dynamicElementInfo-posesPerSubject', 'dynamicElementInfo', 'posesPerSubject', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoContentInfo-typeOfVideoContent', 'videoContentInfo', 'typeOfVideoContent', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoContentInfo-textIncludedInVideo', 'videoContentInfo', 'textIncludedInVideo', 'reference', 'textIncludedInVideo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoContentInfo-dynamicElementInfo', 'videoContentInfo', 'dynamicElementInfo', 'reference', 'dynamicElementInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('settingInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-naturality', 'settingInfo', 'naturality', 'reference', 'naturality');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-conversationalType', 'settingInfo', 'conversationalType', 'reference', 'conversationalType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-scenarioType', 'settingInfo', 'scenarioType', 'reference', 'scenarioType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-audience', 'settingInfo', 'audience', 'reference', 'audience');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('settingInfo-interactivity', 'settingInfo', 'interactivity', 'reference', 'interactivity');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('settingInfo-interaction', 'settingInfo', 'interaction', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('videoFormatInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resolutionInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resolutionInfo-sizeWidth', 'resolutionInfo', 'sizeWidth', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resolutionInfo-sizeHeight', 'resolutionInfo', 'sizeHeight', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resolutionInfo-resolutionStandard', 'resolutionInfo', 'resolutionStandard', 'reference', 'resolutionStandard');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('compressionInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('compressionInfo-compression', 'compressionInfo', 'compression', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('compressionInfo-compressionName', 'compressionInfo', 'compressionName', 'reference', 'compressionName');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('compressionInfo-compressionLoss', 'compressionInfo', 'compressionLoss', 'boolean');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerVideoFormat', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerVideoFormat-role', 'sizePerVideoFormat', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerVideoFormat-sizeInfo', 'sizePerVideoFormat', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoFormatInfo-mimeType', 'videoFormatInfo', 'mimeType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoFormatInfo-colourSpace', 'videoFormatInfo', 'colourSpace', 'reference', 'colourSpace');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoFormatInfo-colourDepth', 'videoFormatInfo', 'colourDepth', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoFormatInfo-frameRate', 'videoFormatInfo', 'frameRate', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoFormatInfo-visualModelling', 'videoFormatInfo', 'visualModelling', 'reference', 'visualModelling');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoFormatInfo-fidelity', 'videoFormatInfo', 'fidelity', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoFormatInfo-resolutionInfo', 'videoFormatInfo', 'resolutionInfo', 'reference', 'resolutionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoFormatInfo-compressionInfo', 'videoFormatInfo', 'compressionInfo', 'reference', 'compressionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoFormatInfo-sizePerVideoFormat', 'videoFormatInfo', 'sizePerVideoFormat', 'reference', 'sizePerVideoFormat');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualUnstructured-role', 'annotationManualUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationManualUnstructured-documentUnstructured', 'annotationManualUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-role', 'annotationManualStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-documentInfo', 'annotationManualStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationTool-targetResourceNameURI', 'annotationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAnnotation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-role', 'sizePerAnnotation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-sizeInfo', 'sizePerAnnotation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-role', 'annotatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-personInfo', 'annotatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-role', 'annotatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-organizationInfo', 'annotatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationType', 'annotationInfo', 'annotationType', 'reference', 'annotationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatedElements', 'annotationInfo', 'annotatedElements', 'reference', 'annotatedElements');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStandoff', 'annotationInfo', 'annotationStandoff', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-segmentationLevel', 'annotationInfo', 'segmentationLevel', 'reference', 'segmentationLevel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationFormat', 'annotationInfo', 'annotationFormat', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagset', 'annotationInfo', 'tagset', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageId', 'annotationInfo', 'tagsetLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageName', 'annotationInfo', 'tagsetLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-conformanceToStandardsBestPractices', 'annotationInfo', 'conformanceToStandardsBestPractices', 'reference', 'conformanceToStandardsBestPractices');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-theoreticModel', 'annotationInfo', 'theoreticModel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationMode', 'annotationInfo', 'annotationMode', 'reference', 'annotationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationModeDetails', 'annotationInfo', 'annotationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStartDate', 'annotationInfo', 'annotationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationEndDate', 'annotationInfo', 'annotationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-interannotatorAgreement', 'annotationInfo', 'interannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-intraannotatorAgreement', 'annotationInfo', 'intraannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualUnstructured', 'annotationInfo', 'annotationManualUnstructured', 'reference', 'annotationManualUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualStructured', 'annotationInfo', 'annotationManualStructured', 'reference', 'annotationManualStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationTool', 'annotationInfo', 'annotationTool', 'reference', 'annotationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-sizePerAnnotation', 'annotationInfo', 'sizePerAnnotation', 'reference', 'sizePerAnnotation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorPerson', 'annotationInfo', 'annotatorPerson', 'reference', 'annotatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorOrganization', 'annotationInfo', 'annotatorOrganization', 'reference', 'annotatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('domainInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerDomain', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-role', 'sizePerDomain', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-sizeInfo', 'sizePerDomain', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('domainInfo-domain', 'domainInfo', 'domain', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-conformanceToClassificationScheme', 'domainInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-sizePerDomain', 'domainInfo', 'sizePerDomain', 'reference', 'sizePerDomain');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('timeCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTimeCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-role', 'sizePerTimeCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-sizeInfo', 'sizePerTimeCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('timeCoverageInfo-timeCoverage', 'timeCoverageInfo', 'timeCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('timeCoverageInfo-sizePerTimeCoverage', 'timeCoverageInfo', 'sizePerTimeCoverage', 'reference', 'sizePerTimeCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('geographicCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerGeographicCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-role', 'sizePerGeographicCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-sizeInfo', 'sizePerGeographicCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('geographicCoverageInfo-geographicCoverage', 'geographicCoverageInfo', 'geographicCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('geographicCoverageInfo-sizePerGeographicCoverage', 'geographicCoverageInfo', 'sizePerGeographicCoverage', 'reference', 'sizePerGeographicCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('videoClassificationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerVideoClassification', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerVideoClassification-role', 'sizePerVideoClassification', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerVideoClassification-sizeInfo', 'sizePerVideoClassification', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoClassificationInfo-videoGenre', 'videoClassificationInfo', 'videoGenre', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('videoClassificationInfo-subject_topic', 'videoClassificationInfo', 'subject_topic', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoClassificationInfo-conformanceToClassificationScheme', 'videoClassificationInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('videoClassificationInfo-sizePerVideoClassification', 'videoClassificationInfo', 'sizePerVideoClassification', 'reference', 'sizePerVideoClassification');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recordingInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recorderPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderPerson-role', 'recorderPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderPerson-personInfo', 'recorderPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recorderOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderOrganization-role', 'recorderOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderOrganization-organizationInfo', 'recorderOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recordingDeviceType', 'recordingInfo', 'recordingDeviceType', 'reference', 'recordingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-recordingDeviceTypeDetails', 'recordingInfo', 'recordingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-recordingPlatformSoftware', 'recordingInfo', 'recordingPlatformSoftware', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recordingEnvironment', 'recordingInfo', 'recordingEnvironment', 'reference', 'recordingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-sourceChannel', 'recordingInfo', 'sourceChannel', 'reference', 'sourceChannel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-sourceChannelType', 'recordingInfo', 'sourceChannelType', 'reference', 'sourceChannelType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-sourceChannelName', 'recordingInfo', 'sourceChannelName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-sourceChannelDetails', 'recordingInfo', 'sourceChannelDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recorderPerson', 'recordingInfo', 'recorderPerson', 'reference', 'recorderPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recorderOrganization', 'recordingInfo', 'recorderOrganization', 'reference', 'recorderOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('captureInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personSourceSetInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('participantInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-alias', 'participantInfo', 'alias', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-ageGroup', 'participantInfo', 'ageGroup', 'reference', 'ageGroup');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-age', 'participantInfo', 'age', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-sex', 'participantInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-origin', 'participantInfo', 'origin', 'reference', 'origin');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfLiving', 'participantInfo', 'placeOfLiving', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfBirth', 'participantInfo', 'placeOfBirth', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfChildhood', 'participantInfo', 'placeOfChildhood', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-dialectAccent', 'participantInfo', 'dialectAccent', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-speakingImpairment', 'participantInfo', 'speakingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-hearingImpairment', 'participantInfo', 'hearingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-smokingHabits', 'participantInfo', 'smokingHabits', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-vocalTractConditions', 'participantInfo', 'vocalTractConditions', 'reference', 'vocalTractConditions');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-profession', 'participantInfo', 'profession', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-height', 'participantInfo', 'height', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-weight', 'participantInfo', 'weight', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-trainedSpeaker', 'participantInfo', 'trainedSpeaker', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfSecondEducation', 'participantInfo', 'placeOfSecondEducation', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-educationLevel', 'participantInfo', 'educationLevel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfPersons', 'personSourceSetInfo', 'numberOfPersons', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-ageOfPersons', 'personSourceSetInfo', 'ageOfPersons', 'reference', 'ageOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeStart', 'personSourceSetInfo', 'ageRangeStart', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeEnd', 'personSourceSetInfo', 'ageRangeEnd', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-sexOfPersons', 'personSourceSetInfo', 'sexOfPersons', 'reference', 'sexOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-originOfPersons', 'personSourceSetInfo', 'originOfPersons', 'reference', 'originOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-dialectAccentOfPersons', 'personSourceSetInfo', 'dialectAccentOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-geographicDistributionOfPersons', 'personSourceSetInfo', 'geographicDistributionOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-hearingImpairmentOfPersons', 'personSourceSetInfo', 'hearingImpairmentOfPersons', 'reference', 'hearingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speakingImpairmentOfPersons', 'personSourceSetInfo', 'speakingImpairmentOfPersons', 'reference', 'speakingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfTrainedSpeakers', 'personSourceSetInfo', 'numberOfTrainedSpeakers', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speechInfluences', 'personSourceSetInfo', 'speechInfluences', 'reference', 'speechInfluences');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-participantInfo', 'personSourceSetInfo', 'participantInfo', 'reference', 'participantInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingDeviceType', 'captureInfo', 'capturingDeviceType', 'reference', 'capturingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDeviceTypeDetails', 'captureInfo', 'capturingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDetails', 'captureInfo', 'capturingDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingEnvironment', 'captureInfo', 'capturingEnvironment', 'reference', 'capturingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-sensorTechnology', 'captureInfo', 'sensorTechnology', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-sceneIllumination', 'captureInfo', 'sceneIllumination', 'reference', 'sceneIllumination');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-personSourceSetInfo', 'captureInfo', 'personSourceSetInfo', 'reference', 'personSourceSetInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('originalSource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('originalSource-targetResourceNameURI', 'originalSource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationTool-targetResourceNameURI', 'creationTool', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationMode', 'creationInfo', 'creationMode', 'reference', 'creationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationInfo-creationModeDetails', 'creationInfo', 'creationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-originalSource', 'creationInfo', 'originalSource', 'reference', 'originalSource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationTool', 'creationInfo', 'creationTool', 'reference', 'creationTool');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('linkToOtherMediaInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('linkToOtherMediaInfo-otherMedia', 'linkToOtherMediaInfo', 'otherMedia', 'reference', 'otherMedia');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-mediaTypeDetails', 'linkToOtherMediaInfo', 'mediaTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithText', 'linkToOtherMediaInfo', 'synchronizedWithText', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithAudio', 'linkToOtherMediaInfo', 'synchronizedWithAudio', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithVideo', 'linkToOtherMediaInfo', 'synchronizedWithVideo', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-sycnhronizedWithImage', 'linkToOtherMediaInfo', 'sycnhronizedWithImage', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithTextNumerical', 'linkToOtherMediaInfo', 'synchronizedWithTextNumerical', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-mediaType', 'corpusVideoInfo', 'mediaType', 'reference', 'mediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-lingualityInfo', 'corpusVideoInfo', 'lingualityInfo', 'reference', 'lingualityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-languageInfo', 'corpusVideoInfo', 'languageInfo', 'reference', 'languageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-modalityInfo', 'corpusVideoInfo', 'modalityInfo', 'reference', 'modalityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-sizeInfo', 'corpusVideoInfo', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-videoContentInfo', 'corpusVideoInfo', 'videoContentInfo', 'reference', 'videoContentInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-settingInfo', 'corpusVideoInfo', 'settingInfo', 'reference', 'settingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-videoFormatInfo', 'corpusVideoInfo', 'videoFormatInfo', 'reference', 'videoFormatInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-annotationInfo', 'corpusVideoInfo', 'annotationInfo', 'reference', 'annotationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-domainInfo', 'corpusVideoInfo', 'domainInfo', 'reference', 'domainInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-timeCoverageInfo', 'corpusVideoInfo', 'timeCoverageInfo', 'reference', 'timeCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-geographicCoverageInfo', 'corpusVideoInfo', 'geographicCoverageInfo', 'reference', 'geographicCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-videoClassificationInfo', 'corpusVideoInfo', 'videoClassificationInfo', 'reference', 'videoClassificationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-recordingInfo', 'corpusVideoInfo', 'recordingInfo', 'reference', 'recordingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-captureInfo', 'corpusVideoInfo', 'captureInfo', 'reference', 'captureInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-creationInfo', 'corpusVideoInfo', 'creationInfo', 'reference', 'creationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusVideoInfo-linkToOtherMediaInfo', 'corpusVideoInfo', 'linkToOtherMediaInfo', 'reference', 'linkToOtherMediaInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusImageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('modalityInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerModality', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-role', 'sizePerModality', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-sizeInfo', 'sizePerModality', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-modalityType', 'modalityInfo', 'modalityType', 'reference', 'modalityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('modalityInfo-modalityTypeDetails', 'modalityInfo', 'modalityTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-sizePerModality', 'modalityInfo', 'sizePerModality', 'reference', 'sizePerModality');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('lingualityInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-lingualityType', 'lingualityInfo', 'lingualityType', 'reference', 'lingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-multilingualityType', 'lingualityInfo', 'multilingualityType', 'reference', 'multilingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('lingualityInfo-multilingualityTypeDetails', 'lingualityInfo', 'multilingualityTypeDetails', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-role', 'sizePerLanguage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-sizeInfo', 'sizePerLanguage', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageVarietyInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguageVariety', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-role', 'sizePerLanguageVariety', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-sizeInfo', 'sizePerLanguageVariety', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-languageVarietyType', 'languageVarietyInfo', 'languageVarietyType', 'reference', 'languageVarietyType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageVarietyInfo-languageVarietyName', 'languageVarietyInfo', 'languageVarietyName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-sizePerLanguageVariety', 'languageVarietyInfo', 'sizePerLanguageVariety', 'reference', 'sizePerLanguageVariety');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageId', 'languageInfo', 'languageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageName', 'languageInfo', 'languageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageScript', 'languageInfo', 'languageScript', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-sizePerLanguage', 'languageInfo', 'sizePerLanguage', 'reference', 'sizePerLanguage');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-languageVarietyInfo', 'languageInfo', 'languageVarietyInfo', 'reference', 'languageVarietyInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('imageContentInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('staticElementInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-typeOfElement', 'staticElementInfo', 'typeOfElement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('staticElementInfo-bodyParts', 'staticElementInfo', 'bodyParts', 'reference', 'bodyParts');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-faceViews', 'staticElementInfo', 'faceViews', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-faceExpressions', 'staticElementInfo', 'faceExpressions', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-artifactParts', 'staticElementInfo', 'artifactParts', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-landscapeParts', 'staticElementInfo', 'landscapeParts', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-personDescription', 'staticElementInfo', 'personDescription', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-thingDescription', 'staticElementInfo', 'thingDescription', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-organizationDescription', 'staticElementInfo', 'organizationDescription', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('staticElementInfo-eventDescription', 'staticElementInfo', 'eventDescription', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('imageContentInfo-typeOfImageContent', 'imageContentInfo', 'typeOfImageContent', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageContentInfo-textIncludedInImage', 'imageContentInfo', 'textIncludedInImage', 'reference', 'textIncludedInImage');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageContentInfo-staticElementInfo', 'imageContentInfo', 'staticElementInfo', 'reference', 'staticElementInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('imageFormatInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('compressionInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('compressionInfo-compression', 'compressionInfo', 'compression', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('compressionInfo-compressionName', 'compressionInfo', 'compressionName', 'reference', 'compressionName');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('compressionInfo-compressionLoss', 'compressionInfo', 'compressionLoss', 'boolean');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('resolutionInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resolutionInfo-sizeWidth', 'resolutionInfo', 'sizeWidth', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('resolutionInfo-sizeHeight', 'resolutionInfo', 'sizeHeight', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resolutionInfo-resolutionStandard', 'resolutionInfo', 'resolutionStandard', 'reference', 'resolutionStandard');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerImageFormat', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerImageFormat-role', 'sizePerImageFormat', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerImageFormat-sizeInfo', 'sizePerImageFormat', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('imageFormatInfo-mimeType', 'imageFormatInfo', 'mimeType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-colourSpace', 'imageFormatInfo', 'colourSpace', 'reference', 'colourSpace');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('imageFormatInfo-colourDepth', 'imageFormatInfo', 'colourDepth', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-visualModelling', 'imageFormatInfo', 'visualModelling', 'reference', 'visualModelling');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-rasterOrVectorGraphics', 'imageFormatInfo', 'rasterOrVectorGraphics', 'reference', 'rasterOrVectorGraphics');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-quality', 'imageFormatInfo', 'quality', 'reference', 'quality');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-compressionInfo', 'imageFormatInfo', 'compressionInfo', 'reference', 'compressionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-resolutionInfo', 'imageFormatInfo', 'resolutionInfo', 'reference', 'resolutionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageFormatInfo-sizePerImageFormat', 'imageFormatInfo', 'sizePerImageFormat', 'reference', 'sizePerImageFormat');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualUnstructured-role', 'annotationManualUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationManualUnstructured-documentUnstructured', 'annotationManualUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-role', 'annotationManualStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-documentInfo', 'annotationManualStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationTool-targetResourceNameURI', 'annotationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAnnotation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-role', 'sizePerAnnotation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-sizeInfo', 'sizePerAnnotation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-role', 'annotatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-personInfo', 'annotatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-role', 'annotatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-organizationInfo', 'annotatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationType', 'annotationInfo', 'annotationType', 'reference', 'annotationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatedElements', 'annotationInfo', 'annotatedElements', 'reference', 'annotatedElements');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStandoff', 'annotationInfo', 'annotationStandoff', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-segmentationLevel', 'annotationInfo', 'segmentationLevel', 'reference', 'segmentationLevel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationFormat', 'annotationInfo', 'annotationFormat', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagset', 'annotationInfo', 'tagset', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageId', 'annotationInfo', 'tagsetLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageName', 'annotationInfo', 'tagsetLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-conformanceToStandardsBestPractices', 'annotationInfo', 'conformanceToStandardsBestPractices', 'reference', 'conformanceToStandardsBestPractices');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-theoreticModel', 'annotationInfo', 'theoreticModel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationMode', 'annotationInfo', 'annotationMode', 'reference', 'annotationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationModeDetails', 'annotationInfo', 'annotationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStartDate', 'annotationInfo', 'annotationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationEndDate', 'annotationInfo', 'annotationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-interannotatorAgreement', 'annotationInfo', 'interannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-intraannotatorAgreement', 'annotationInfo', 'intraannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualUnstructured', 'annotationInfo', 'annotationManualUnstructured', 'reference', 'annotationManualUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualStructured', 'annotationInfo', 'annotationManualStructured', 'reference', 'annotationManualStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationTool', 'annotationInfo', 'annotationTool', 'reference', 'annotationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-sizePerAnnotation', 'annotationInfo', 'sizePerAnnotation', 'reference', 'sizePerAnnotation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorPerson', 'annotationInfo', 'annotatorPerson', 'reference', 'annotatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorOrganization', 'annotationInfo', 'annotatorOrganization', 'reference', 'annotatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('domainInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerDomain', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-role', 'sizePerDomain', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-sizeInfo', 'sizePerDomain', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('domainInfo-domain', 'domainInfo', 'domain', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-conformanceToClassificationScheme', 'domainInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-sizePerDomain', 'domainInfo', 'sizePerDomain', 'reference', 'sizePerDomain');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('timeCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTimeCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-role', 'sizePerTimeCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-sizeInfo', 'sizePerTimeCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('timeCoverageInfo-timeCoverage', 'timeCoverageInfo', 'timeCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('timeCoverageInfo-sizePerTimeCoverage', 'timeCoverageInfo', 'sizePerTimeCoverage', 'reference', 'sizePerTimeCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('geographicCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerGeographicCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-role', 'sizePerGeographicCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-sizeInfo', 'sizePerGeographicCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('geographicCoverageInfo-geographicCoverage', 'geographicCoverageInfo', 'geographicCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('geographicCoverageInfo-sizePerGeographicCoverage', 'geographicCoverageInfo', 'sizePerGeographicCoverage', 'reference', 'sizePerGeographicCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('imageClassificationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerImageClassification', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerImageClassification-role', 'sizePerImageClassification', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerImageClassification-sizeInfo', 'sizePerImageClassification', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('imageClassificationInfo-imageGenre', 'imageClassificationInfo', 'imageGenre', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('imageClassificationInfo-subject_topic', 'imageClassificationInfo', 'subject_topic', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageClassificationInfo-conformanceToClassificationScheme', 'imageClassificationInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('imageClassificationInfo-sizePerImageClassification', 'imageClassificationInfo', 'sizePerImageClassification', 'reference', 'sizePerImageClassification');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('captureInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personSourceSetInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('participantInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-alias', 'participantInfo', 'alias', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-ageGroup', 'participantInfo', 'ageGroup', 'reference', 'ageGroup');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-age', 'participantInfo', 'age', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-sex', 'participantInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-origin', 'participantInfo', 'origin', 'reference', 'origin');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfLiving', 'participantInfo', 'placeOfLiving', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfBirth', 'participantInfo', 'placeOfBirth', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfChildhood', 'participantInfo', 'placeOfChildhood', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-dialectAccent', 'participantInfo', 'dialectAccent', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-speakingImpairment', 'participantInfo', 'speakingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-hearingImpairment', 'participantInfo', 'hearingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-smokingHabits', 'participantInfo', 'smokingHabits', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-vocalTractConditions', 'participantInfo', 'vocalTractConditions', 'reference', 'vocalTractConditions');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-profession', 'participantInfo', 'profession', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-height', 'participantInfo', 'height', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-weight', 'participantInfo', 'weight', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-trainedSpeaker', 'participantInfo', 'trainedSpeaker', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfSecondEducation', 'participantInfo', 'placeOfSecondEducation', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-educationLevel', 'participantInfo', 'educationLevel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfPersons', 'personSourceSetInfo', 'numberOfPersons', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-ageOfPersons', 'personSourceSetInfo', 'ageOfPersons', 'reference', 'ageOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeStart', 'personSourceSetInfo', 'ageRangeStart', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeEnd', 'personSourceSetInfo', 'ageRangeEnd', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-sexOfPersons', 'personSourceSetInfo', 'sexOfPersons', 'reference', 'sexOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-originOfPersons', 'personSourceSetInfo', 'originOfPersons', 'reference', 'originOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-dialectAccentOfPersons', 'personSourceSetInfo', 'dialectAccentOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-geographicDistributionOfPersons', 'personSourceSetInfo', 'geographicDistributionOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-hearingImpairmentOfPersons', 'personSourceSetInfo', 'hearingImpairmentOfPersons', 'reference', 'hearingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speakingImpairmentOfPersons', 'personSourceSetInfo', 'speakingImpairmentOfPersons', 'reference', 'speakingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfTrainedSpeakers', 'personSourceSetInfo', 'numberOfTrainedSpeakers', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speechInfluences', 'personSourceSetInfo', 'speechInfluences', 'reference', 'speechInfluences');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-participantInfo', 'personSourceSetInfo', 'participantInfo', 'reference', 'participantInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingDeviceType', 'captureInfo', 'capturingDeviceType', 'reference', 'capturingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDeviceTypeDetails', 'captureInfo', 'capturingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDetails', 'captureInfo', 'capturingDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingEnvironment', 'captureInfo', 'capturingEnvironment', 'reference', 'capturingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-sensorTechnology', 'captureInfo', 'sensorTechnology', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-sceneIllumination', 'captureInfo', 'sceneIllumination', 'reference', 'sceneIllumination');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-personSourceSetInfo', 'captureInfo', 'personSourceSetInfo', 'reference', 'personSourceSetInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('originalSource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('originalSource-targetResourceNameURI', 'originalSource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationTool-targetResourceNameURI', 'creationTool', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationMode', 'creationInfo', 'creationMode', 'reference', 'creationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationInfo-creationModeDetails', 'creationInfo', 'creationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-originalSource', 'creationInfo', 'originalSource', 'reference', 'originalSource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationTool', 'creationInfo', 'creationTool', 'reference', 'creationTool');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('linkToOtherMediaInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('linkToOtherMediaInfo-otherMedia', 'linkToOtherMediaInfo', 'otherMedia', 'reference', 'otherMedia');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-mediaTypeDetails', 'linkToOtherMediaInfo', 'mediaTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithText', 'linkToOtherMediaInfo', 'synchronizedWithText', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithAudio', 'linkToOtherMediaInfo', 'synchronizedWithAudio', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithVideo', 'linkToOtherMediaInfo', 'synchronizedWithVideo', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-sycnhronizedWithImage', 'linkToOtherMediaInfo', 'sycnhronizedWithImage', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithTextNumerical', 'linkToOtherMediaInfo', 'synchronizedWithTextNumerical', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-mediaType', 'corpusImageInfo', 'mediaType', 'reference', 'mediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-modalityInfo', 'corpusImageInfo', 'modalityInfo', 'reference', 'modalityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-lingualityInfo', 'corpusImageInfo', 'lingualityInfo', 'reference', 'lingualityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-languageInfo', 'corpusImageInfo', 'languageInfo', 'reference', 'languageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-sizeInfo', 'corpusImageInfo', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-imageContentInfo', 'corpusImageInfo', 'imageContentInfo', 'reference', 'imageContentInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-imageFormatInfo', 'corpusImageInfo', 'imageFormatInfo', 'reference', 'imageFormatInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-annotationInfo', 'corpusImageInfo', 'annotationInfo', 'reference', 'annotationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-domainInfo', 'corpusImageInfo', 'domainInfo', 'reference', 'domainInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-timeCoverageInfo', 'corpusImageInfo', 'timeCoverageInfo', 'reference', 'timeCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-geographicCoverageInfo', 'corpusImageInfo', 'geographicCoverageInfo', 'reference', 'geographicCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-imageClassificationInfo', 'corpusImageInfo', 'imageClassificationInfo', 'reference', 'imageClassificationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-captureInfo', 'corpusImageInfo', 'captureInfo', 'reference', 'captureInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-creationInfo', 'corpusImageInfo', 'creationInfo', 'reference', 'creationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusImageInfo-linkToOtherMediaInfo', 'corpusImageInfo', 'linkToOtherMediaInfo', 'reference', 'linkToOtherMediaInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusTextNumericalInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('modalityInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerModality', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-role', 'sizePerModality', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-sizeInfo', 'sizePerModality', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-modalityType', 'modalityInfo', 'modalityType', 'reference', 'modalityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('modalityInfo-modalityTypeDetails', 'modalityInfo', 'modalityTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-sizePerModality', 'modalityInfo', 'sizePerModality', 'reference', 'sizePerModality');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('textNumericalContentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textNumericalContentInfo-typeOfTextNumericalContent', 'textNumericalContentInfo', 'typeOfTextNumericalContent', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('textNumericalFormatInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTextNumericalFormat', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextNumericalFormat-role', 'sizePerTextNumericalFormat', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextNumericalFormat-sizeInfo', 'sizePerTextNumericalFormat', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textNumericalFormatInfo-mimeType', 'textNumericalFormatInfo', 'mimeType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textNumericalFormatInfo-sizePerTextNumericalFormat', 'textNumericalFormatInfo', 'sizePerTextNumericalFormat', 'reference', 'sizePerTextNumericalFormat');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recordingInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recorderPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderPerson-role', 'recorderPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderPerson-personInfo', 'recorderPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('recorderOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderOrganization-role', 'recorderOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recorderOrganization-organizationInfo', 'recorderOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recordingDeviceType', 'recordingInfo', 'recordingDeviceType', 'reference', 'recordingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-recordingDeviceTypeDetails', 'recordingInfo', 'recordingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-recordingPlatformSoftware', 'recordingInfo', 'recordingPlatformSoftware', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recordingEnvironment', 'recordingInfo', 'recordingEnvironment', 'reference', 'recordingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-sourceChannel', 'recordingInfo', 'sourceChannel', 'reference', 'sourceChannel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-sourceChannelType', 'recordingInfo', 'sourceChannelType', 'reference', 'sourceChannelType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-sourceChannelName', 'recordingInfo', 'sourceChannelName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('recordingInfo-sourceChannelDetails', 'recordingInfo', 'sourceChannelDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recorderPerson', 'recordingInfo', 'recorderPerson', 'reference', 'recorderPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('recordingInfo-recorderOrganization', 'recordingInfo', 'recorderOrganization', 'reference', 'recorderOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('captureInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personSourceSetInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('participantInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-alias', 'participantInfo', 'alias', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-ageGroup', 'participantInfo', 'ageGroup', 'reference', 'ageGroup');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-age', 'participantInfo', 'age', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-sex', 'participantInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-origin', 'participantInfo', 'origin', 'reference', 'origin');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfLiving', 'participantInfo', 'placeOfLiving', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfBirth', 'participantInfo', 'placeOfBirth', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfChildhood', 'participantInfo', 'placeOfChildhood', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-dialectAccent', 'participantInfo', 'dialectAccent', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-speakingImpairment', 'participantInfo', 'speakingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-hearingImpairment', 'participantInfo', 'hearingImpairment', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-smokingHabits', 'participantInfo', 'smokingHabits', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('participantInfo-vocalTractConditions', 'participantInfo', 'vocalTractConditions', 'reference', 'vocalTractConditions');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-profession', 'participantInfo', 'profession', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-height', 'participantInfo', 'height', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-weight', 'participantInfo', 'weight', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-trainedSpeaker', 'participantInfo', 'trainedSpeaker', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-placeOfSecondEducation', 'participantInfo', 'placeOfSecondEducation', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('participantInfo-educationLevel', 'participantInfo', 'educationLevel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfPersons', 'personSourceSetInfo', 'numberOfPersons', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-ageOfPersons', 'personSourceSetInfo', 'ageOfPersons', 'reference', 'ageOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeStart', 'personSourceSetInfo', 'ageRangeStart', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-ageRangeEnd', 'personSourceSetInfo', 'ageRangeEnd', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-sexOfPersons', 'personSourceSetInfo', 'sexOfPersons', 'reference', 'sexOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-originOfPersons', 'personSourceSetInfo', 'originOfPersons', 'reference', 'originOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-dialectAccentOfPersons', 'personSourceSetInfo', 'dialectAccentOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-geographicDistributionOfPersons', 'personSourceSetInfo', 'geographicDistributionOfPersons', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-hearingImpairmentOfPersons', 'personSourceSetInfo', 'hearingImpairmentOfPersons', 'reference', 'hearingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speakingImpairmentOfPersons', 'personSourceSetInfo', 'speakingImpairmentOfPersons', 'reference', 'speakingImpairmentOfPersons');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personSourceSetInfo-numberOfTrainedSpeakers', 'personSourceSetInfo', 'numberOfTrainedSpeakers', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-speechInfluences', 'personSourceSetInfo', 'speechInfluences', 'reference', 'speechInfluences');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personSourceSetInfo-participantInfo', 'personSourceSetInfo', 'participantInfo', 'reference', 'participantInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingDeviceType', 'captureInfo', 'capturingDeviceType', 'reference', 'capturingDeviceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDeviceTypeDetails', 'captureInfo', 'capturingDeviceTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-capturingDetails', 'captureInfo', 'capturingDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-capturingEnvironment', 'captureInfo', 'capturingEnvironment', 'reference', 'capturingEnvironment');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('captureInfo-sensorTechnology', 'captureInfo', 'sensorTechnology', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-sceneIllumination', 'captureInfo', 'sceneIllumination', 'reference', 'sceneIllumination');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('captureInfo-personSourceSetInfo', 'captureInfo', 'personSourceSetInfo', 'reference', 'personSourceSetInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('originalSource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('originalSource-targetResourceNameURI', 'originalSource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationTool-targetResourceNameURI', 'creationTool', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationMode', 'creationInfo', 'creationMode', 'reference', 'creationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationInfo-creationModeDetails', 'creationInfo', 'creationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-originalSource', 'creationInfo', 'originalSource', 'reference', 'originalSource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationTool', 'creationInfo', 'creationTool', 'reference', 'creationTool');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualUnstructured-role', 'annotationManualUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationManualUnstructured-documentUnstructured', 'annotationManualUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-role', 'annotationManualStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-documentInfo', 'annotationManualStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationTool-targetResourceNameURI', 'annotationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAnnotation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-role', 'sizePerAnnotation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-sizeInfo', 'sizePerAnnotation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-role', 'annotatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-personInfo', 'annotatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-role', 'annotatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-organizationInfo', 'annotatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationType', 'annotationInfo', 'annotationType', 'reference', 'annotationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatedElements', 'annotationInfo', 'annotatedElements', 'reference', 'annotatedElements');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStandoff', 'annotationInfo', 'annotationStandoff', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-segmentationLevel', 'annotationInfo', 'segmentationLevel', 'reference', 'segmentationLevel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationFormat', 'annotationInfo', 'annotationFormat', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagset', 'annotationInfo', 'tagset', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageId', 'annotationInfo', 'tagsetLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageName', 'annotationInfo', 'tagsetLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-conformanceToStandardsBestPractices', 'annotationInfo', 'conformanceToStandardsBestPractices', 'reference', 'conformanceToStandardsBestPractices');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-theoreticModel', 'annotationInfo', 'theoreticModel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationMode', 'annotationInfo', 'annotationMode', 'reference', 'annotationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationModeDetails', 'annotationInfo', 'annotationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStartDate', 'annotationInfo', 'annotationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationEndDate', 'annotationInfo', 'annotationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-interannotatorAgreement', 'annotationInfo', 'interannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-intraannotatorAgreement', 'annotationInfo', 'intraannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualUnstructured', 'annotationInfo', 'annotationManualUnstructured', 'reference', 'annotationManualUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualStructured', 'annotationInfo', 'annotationManualStructured', 'reference', 'annotationManualStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationTool', 'annotationInfo', 'annotationTool', 'reference', 'annotationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-sizePerAnnotation', 'annotationInfo', 'sizePerAnnotation', 'reference', 'sizePerAnnotation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorPerson', 'annotationInfo', 'annotatorPerson', 'reference', 'annotatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorOrganization', 'annotationInfo', 'annotatorOrganization', 'reference', 'annotatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('linkToOtherMediaInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('linkToOtherMediaInfo-otherMedia', 'linkToOtherMediaInfo', 'otherMedia', 'reference', 'otherMedia');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-mediaTypeDetails', 'linkToOtherMediaInfo', 'mediaTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithText', 'linkToOtherMediaInfo', 'synchronizedWithText', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithAudio', 'linkToOtherMediaInfo', 'synchronizedWithAudio', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithVideo', 'linkToOtherMediaInfo', 'synchronizedWithVideo', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-sycnhronizedWithImage', 'linkToOtherMediaInfo', 'sycnhronizedWithImage', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('linkToOtherMediaInfo-synchronizedWithTextNumerical', 'linkToOtherMediaInfo', 'synchronizedWithTextNumerical', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-mediaType', 'corpusTextNumericalInfo', 'mediaType', 'reference', 'mediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-modalityInfo', 'corpusTextNumericalInfo', 'modalityInfo', 'reference', 'modalityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-sizeInfo', 'corpusTextNumericalInfo', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-textNumericalContentInfo', 'corpusTextNumericalInfo', 'textNumericalContentInfo', 'reference', 'textNumericalContentInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-textNumericalFormatInfo', 'corpusTextNumericalInfo', 'textNumericalFormatInfo', 'reference', 'textNumericalFormatInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-recordingInfo', 'corpusTextNumericalInfo', 'recordingInfo', 'reference', 'recordingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-captureInfo', 'corpusTextNumericalInfo', 'captureInfo', 'reference', 'captureInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-creationInfo', 'corpusTextNumericalInfo', 'creationInfo', 'reference', 'creationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-annotationInfo', 'corpusTextNumericalInfo', 'annotationInfo', 'reference', 'annotationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNumericalInfo-linkToOtherMediaInfo', 'corpusTextNumericalInfo', 'linkToOtherMediaInfo', 'reference', 'linkToOtherMediaInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('corpusTextNgramInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('ngramInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('ngramInfo-baseItem', 'ngramInfo', 'baseItem', 'reference', 'baseItem');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ngramInfo-order', 'ngramInfo', 'order', 'integer');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ngramInfo-perplexity', 'ngramInfo', 'perplexity', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ngramInfo-isFactored', 'ngramInfo', 'isFactored', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ngramInfo-factors', 'ngramInfo', 'factors', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ngramInfo-smoothing', 'ngramInfo', 'smoothing', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('ngramInfo-interpolated', 'ngramInfo', 'interpolated', 'boolean');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('lingualityInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-lingualityType', 'lingualityInfo', 'lingualityType', 'reference', 'lingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('lingualityInfo-multilingualityType', 'lingualityInfo', 'multilingualityType', 'reference', 'multilingualityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('lingualityInfo-multilingualityTypeDetails', 'lingualityInfo', 'multilingualityTypeDetails', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-role', 'sizePerLanguage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguage-sizeInfo', 'sizePerLanguage', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('languageVarietyInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerLanguageVariety', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-role', 'sizePerLanguageVariety', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerLanguageVariety-sizeInfo', 'sizePerLanguageVariety', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-languageVarietyType', 'languageVarietyInfo', 'languageVarietyType', 'reference', 'languageVarietyType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageVarietyInfo-languageVarietyName', 'languageVarietyInfo', 'languageVarietyName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageVarietyInfo-sizePerLanguageVariety', 'languageVarietyInfo', 'sizePerLanguageVariety', 'reference', 'sizePerLanguageVariety');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageId', 'languageInfo', 'languageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageName', 'languageInfo', 'languageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('languageInfo-languageScript', 'languageInfo', 'languageScript', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-sizePerLanguage', 'languageInfo', 'sizePerLanguage', 'reference', 'sizePerLanguage');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('languageInfo-languageVarietyInfo', 'languageInfo', 'languageVarietyInfo', 'reference', 'languageVarietyInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('modalityInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerModality', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-role', 'sizePerModality', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerModality-sizeInfo', 'sizePerModality', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-modalityType', 'modalityInfo', 'modalityType', 'reference', 'modalityType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('modalityInfo-modalityTypeDetails', 'modalityInfo', 'modalityTypeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('modalityInfo-sizePerModality', 'modalityInfo', 'sizePerModality', 'reference', 'sizePerModality');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('textFormatInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTextFormat', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextFormat-role', 'sizePerTextFormat', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextFormat-sizeInfo', 'sizePerTextFormat', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textFormatInfo-mimeType', 'textFormatInfo', 'mimeType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textFormatInfo-sizePerTextFormat', 'textFormatInfo', 'sizePerTextFormat', 'reference', 'sizePerTextFormat');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('characterEncodingInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerCharacterEncoding', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerCharacterEncoding-role', 'sizePerCharacterEncoding', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerCharacterEncoding-sizeInfo', 'sizePerCharacterEncoding', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('characterEncodingInfo-characterEncoding', 'characterEncodingInfo', 'characterEncoding', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('characterEncodingInfo-sizePerCharacterEncoding', 'characterEncodingInfo', 'sizePerCharacterEncoding', 'reference', 'sizePerCharacterEncoding');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualUnstructured', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualUnstructured-role', 'annotationManualUnstructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationManualUnstructured-documentUnstructured', 'annotationManualUnstructured', 'documentUnstructured', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationManualStructured', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('documentInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-documentType', 'documentInfo', 'documentType', 'reference', 'documentType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-title', 'documentInfo', 'title', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-author', 'documentInfo', 'author', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-editor', 'documentInfo', 'editor', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-year', 'documentInfo', 'year', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-publisher', 'documentInfo', 'publisher', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-bookTitle', 'documentInfo', 'bookTitle', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-journal', 'documentInfo', 'journal', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-volume', 'documentInfo', 'volume', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-series', 'documentInfo', 'series', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-pages', 'documentInfo', 'pages', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-edition', 'documentInfo', 'edition', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-conference', 'documentInfo', 'conference', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-doi', 'documentInfo', 'doi', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('documentInfo-url', 'documentInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISSN', 'documentInfo', 'ISSN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-ISBN', 'documentInfo', 'ISBN', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-keywords', 'documentInfo', 'keywords', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageName', 'documentInfo', 'documentLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('documentInfo-documentLanguageId', 'documentInfo', 'documentLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-role', 'annotationManualStructured', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationManualStructured-documentInfo', 'annotationManualStructured', 'documentInfo', 'reference', 'documentInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationTool-targetResourceNameURI', 'annotationTool', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerAnnotation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-role', 'sizePerAnnotation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerAnnotation-sizeInfo', 'sizePerAnnotation', 'sizeInfo', 'reference', 'sizeInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorPerson', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('personInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('affiliation', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-role', 'affiliation', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('affiliation-organizationInfo', 'affiliation', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-surname', 'personInfo', 'surname', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-givenName', 'personInfo', 'givenName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-sex', 'personInfo', 'sex', 'reference', 'sex');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('personInfo-position', 'personInfo', 'position', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-communicationInfo', 'personInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('personInfo-affiliation', 'personInfo', 'affiliation', 'reference', 'affiliation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-role', 'annotatorPerson', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorPerson-personInfo', 'annotatorPerson', 'personInfo', 'reference', 'personInfo');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('annotatorOrganization', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('organizationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('communicationInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-email', 'communicationInfo', 'email', 'reference', 'email');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('communicationInfo-url', 'communicationInfo', 'url', 'reference', 'url');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-address', 'communicationInfo', 'address', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-zipCode', 'communicationInfo', 'zipCode', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-city', 'communicationInfo', 'city', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-region', 'communicationInfo', 'region', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-country', 'communicationInfo', 'country', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-telephoneNumber', 'communicationInfo', 'telephoneNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('communicationInfo-faxNumber', 'communicationInfo', 'faxNumber', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationName', 'organizationInfo', 'organizationName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-organizationShortName', 'organizationInfo', 'organizationShortName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('organizationInfo-departmentName', 'organizationInfo', 'departmentName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('organizationInfo-communicationInfo', 'organizationInfo', 'communicationInfo', 'reference', 'communicationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-role', 'annotatorOrganization', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotatorOrganization-organizationInfo', 'annotatorOrganization', 'organizationInfo', 'reference', 'organizationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationType', 'annotationInfo', 'annotationType', 'reference', 'annotationType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatedElements', 'annotationInfo', 'annotatedElements', 'reference', 'annotatedElements');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStandoff', 'annotationInfo', 'annotationStandoff', 'boolean');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-segmentationLevel', 'annotationInfo', 'segmentationLevel', 'reference', 'segmentationLevel');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationFormat', 'annotationInfo', 'annotationFormat', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagset', 'annotationInfo', 'tagset', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageId', 'annotationInfo', 'tagsetLanguageId', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-tagsetLanguageName', 'annotationInfo', 'tagsetLanguageName', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-conformanceToStandardsBestPractices', 'annotationInfo', 'conformanceToStandardsBestPractices', 'reference', 'conformanceToStandardsBestPractices');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-theoreticModel', 'annotationInfo', 'theoreticModel', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationMode', 'annotationInfo', 'annotationMode', 'reference', 'annotationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationModeDetails', 'annotationInfo', 'annotationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationStartDate', 'annotationInfo', 'annotationStartDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-annotationEndDate', 'annotationInfo', 'annotationEndDate', 'datetime');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-interannotatorAgreement', 'annotationInfo', 'interannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('annotationInfo-intraannotatorAgreement', 'annotationInfo', 'intraannotatorAgreement', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualUnstructured', 'annotationInfo', 'annotationManualUnstructured', 'reference', 'annotationManualUnstructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationManualStructured', 'annotationInfo', 'annotationManualStructured', 'reference', 'annotationManualStructured');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotationTool', 'annotationInfo', 'annotationTool', 'reference', 'annotationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-sizePerAnnotation', 'annotationInfo', 'sizePerAnnotation', 'reference', 'sizePerAnnotation');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorPerson', 'annotationInfo', 'annotatorPerson', 'reference', 'annotatorPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('annotationInfo-annotatorOrganization', 'annotationInfo', 'annotatorOrganization', 'reference', 'annotatorOrganization');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('domainInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerDomain', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-role', 'sizePerDomain', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerDomain-sizeInfo', 'sizePerDomain', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('domainInfo-domain', 'domainInfo', 'domain', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-conformanceToClassificationScheme', 'domainInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('domainInfo-sizePerDomain', 'domainInfo', 'sizePerDomain', 'reference', 'sizePerDomain');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('textClassificationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTextClassification', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextClassification-role', 'sizePerTextClassification', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTextClassification-sizeInfo', 'sizePerTextClassification', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-textGenre', 'textClassificationInfo', 'textGenre', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-textType', 'textClassificationInfo', 'textType', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-register', 'textClassificationInfo', 'register', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('textClassificationInfo-subject_topic', 'textClassificationInfo', 'subject_topic', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textClassificationInfo-conformanceToClassificationScheme', 'textClassificationInfo', 'conformanceToClassificationScheme', 'reference', 'conformanceToClassificationScheme');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('textClassificationInfo-sizePerTextClassification', 'textClassificationInfo', 'sizePerTextClassification', 'reference', 'sizePerTextClassification');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('timeCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerTimeCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-role', 'sizePerTimeCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerTimeCoverage-sizeInfo', 'sizePerTimeCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('timeCoverageInfo-timeCoverage', 'timeCoverageInfo', 'timeCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('timeCoverageInfo-sizePerTimeCoverage', 'timeCoverageInfo', 'sizePerTimeCoverage', 'reference', 'sizePerTimeCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('geographicCoverageInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizePerGeographicCoverage', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('sizeInfo', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('sizeInfo-size', 'sizeInfo', 'size', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizeInfo-sizeUnit', 'sizeInfo', 'sizeUnit', 'reference', 'sizeUnit');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-role', 'sizePerGeographicCoverage', 'role', 'reference', 'role');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('sizePerGeographicCoverage-sizeInfo', 'sizePerGeographicCoverage', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('geographicCoverageInfo-geographicCoverage', 'geographicCoverageInfo', 'geographicCoverage', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('geographicCoverageInfo-sizePerGeographicCoverage', 'geographicCoverageInfo', 'sizePerGeographicCoverage', 'reference', 'sizePerGeographicCoverage');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationInfo', now(), 'definition_import');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('originalSource', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('originalSource-targetResourceNameURI', 'originalSource', 'targetResourceNameURI', 'string');

INSERT INTO entity_definition (keyname, created, created_by) VALUES ('creationTool', now(), 'definition_import');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationTool-targetResourceNameURI', 'creationTool', 'targetResourceNameURI', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationMode', 'creationInfo', 'creationMode', 'reference', 'creationMode');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype) VALUES ('creationInfo-creationModeDetails', 'creationInfo', 'creationModeDetails', 'string');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-originalSource', 'creationInfo', 'originalSource', 'reference', 'originalSource');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('creationInfo-creationTool', 'creationInfo', 'creationTool', 'reference', 'creationTool');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-mediaType', 'corpusTextNgramInfo', 'mediaType', 'reference', 'mediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-ngramInfo', 'corpusTextNgramInfo', 'ngramInfo', 'reference', 'ngramInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-lingualityInfo', 'corpusTextNgramInfo', 'lingualityInfo', 'reference', 'lingualityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-languageInfo', 'corpusTextNgramInfo', 'languageInfo', 'reference', 'languageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-modalityInfo', 'corpusTextNgramInfo', 'modalityInfo', 'reference', 'modalityInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-sizeInfo', 'corpusTextNgramInfo', 'sizeInfo', 'reference', 'sizeInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-textFormatInfo', 'corpusTextNgramInfo', 'textFormatInfo', 'reference', 'textFormatInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-characterEncodingInfo', 'corpusTextNgramInfo', 'characterEncodingInfo', 'reference', 'characterEncodingInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-annotationInfo', 'corpusTextNgramInfo', 'annotationInfo', 'reference', 'annotationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-domainInfo', 'corpusTextNgramInfo', 'domainInfo', 'reference', 'domainInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-textClassificationInfo', 'corpusTextNgramInfo', 'textClassificationInfo', 'reference', 'textClassificationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-timeCoverageInfo', 'corpusTextNgramInfo', 'timeCoverageInfo', 'reference', 'timeCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-geographicCoverageInfo', 'corpusTextNgramInfo', 'geographicCoverageInfo', 'reference', 'geographicCoverageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusTextNgramInfo-creationInfo', 'corpusTextNgramInfo', 'creationInfo', 'reference', 'creationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusMediaType-corpusTextInfo', 'corpusMediaType', 'corpusTextInfo', 'reference', 'corpusTextInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusMediaType-corpusAudioInfo', 'corpusMediaType', 'corpusAudioInfo', 'reference', 'corpusAudioInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusMediaType-corpusVideoInfo', 'corpusMediaType', 'corpusVideoInfo', 'reference', 'corpusVideoInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusMediaType-corpusImageInfo', 'corpusMediaType', 'corpusImageInfo', 'reference', 'corpusImageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusMediaType-corpusTextNumericalInfo', 'corpusMediaType', 'corpusTextNumericalInfo', 'reference', 'corpusTextNumericalInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusMediaType-corpusTextNgramInfo', 'corpusMediaType', 'corpusTextNgramInfo', 'reference', 'corpusTextNgramInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusInfo-resourceType', 'corpusInfo', 'resourceType', 'reference', 'resourceType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('corpusInfo-corpusMediaType', 'corpusInfo', 'corpusMediaType', 'reference', 'corpusMediaType');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-identificationInfo', 'resourceInfo', 'identificationInfo', 'reference', 'identificationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-distributionInfo', 'resourceInfo', 'distributionInfo', 'reference', 'distributionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-contactPerson', 'resourceInfo', 'contactPerson', 'reference', 'contactPerson');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-metadataInfo', 'resourceInfo', 'metadataInfo', 'reference', 'metadataInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-versionInfo', 'resourceInfo', 'versionInfo', 'reference', 'versionInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-validationInfo', 'resourceInfo', 'validationInfo', 'reference', 'validationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-usageInfo', 'resourceInfo', 'usageInfo', 'reference', 'usageInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-resourceDocumentationInfo', 'resourceInfo', 'resourceDocumentationInfo', 'reference', 'resourceDocumentationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-resourceCreationInfo', 'resourceInfo', 'resourceCreationInfo', 'reference', 'resourceCreationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-relationInfo', 'resourceInfo', 'relationInfo', 'reference', 'relationInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('resourceInfo-corpusInfo', 'resourceInfo', 'corpusInfo', 'reference', 'corpusInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('Components-resourceInfo', 'Components', 'resourceInfo', 'reference', 'resourceInfo');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('CMD-Header', 'CMD', 'Header', 'reference', 'Header');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('CMD-Resources', 'CMD', 'Resources', 'reference', 'Resources');
INSERT INTO property_definition (keyname, entity_definition_keyname, dataproperty, datatype, classifying_entity_definition) VALUES ('CMD-Components', 'CMD', 'Components', 'reference', 'Components');