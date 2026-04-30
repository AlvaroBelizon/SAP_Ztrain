@AbapCatalog.sqlViewName: 'ZVUELO08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS DE PRUEBA'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_VUELO_08 
as select from /dmo/flight as f
    inner join /dmo/carrier as c
      on f.carrier_id = c.carrier_id
{
    
   
  c.name          as name,
  f.connection_id as connection_id,
  f.flight_date   as flight_date,
  f.price         as price
    
    
    
    
}
