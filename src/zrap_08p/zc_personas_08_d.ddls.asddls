@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZPERSONAS_08_D'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_PERSONAS_08_D
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_PERSONAS_08_D
  association [1..1] to ZR_PERSONAS_08_D as _BaseEntity on $projection.PERSONID = _BaseEntity.PERSONID
{
  key Personid,
  Firstname,
  Lastname,
  Birthdate,
  Gender,
  Email,
  Phone,
  Country,
  Street,
  City,
  Postalcode,
  Isactive,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  Createdat,
  @Semantics: {
    User.Lastchangedby: true
  }
  Lastchangedby,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchangedat,
  Draftentitycreationdatetime,
  Draftentitylastchangedatetime,
  Draftadministrativedatauuid,
  Draftentityoperationcode,
  Hasactiveentity,
  Draftfieldchanges,
  _BaseEntity
}
