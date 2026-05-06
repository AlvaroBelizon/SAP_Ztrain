@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'vista base bebidas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_BEBIDAS_08
  as select from zbebidas_08
{
     key codigo     as Codigo,
      nombre     as Nombre,
      tipo       as Tipo,
      origen     as Origen,
      graduacion as Graduacion,
      precio     as Precio
}
