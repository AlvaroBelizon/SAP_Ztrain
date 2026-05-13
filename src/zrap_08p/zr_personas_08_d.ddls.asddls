@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPERSONAS_08_D'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_PERSONAS_08_D
  as select from ZPERSONAS_08_D
{
  key personid as Personid,
  firstname as Firstname,
  lastname as Lastname,
  birthdate as Birthdate,
  gender as Gender,
  email as Email,
  phone as Phone,
  country as Country,
  street as Street,
  city as City,
  postalcode as Postalcode,
  isactive as Isactive,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.lastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
}
