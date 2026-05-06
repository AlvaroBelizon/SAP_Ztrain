//@AbapCatalog.sqlViewName: 'ZVUELO08'

//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS DE PRUEBA'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_VUELO_08 as select from /dmo/flight as vuelos
    join /dmo/carrier as aerolineas
      on vuelos.carrier_id = aerolineas.carrier_id
{
    
   
  key aerolineas.name  as nombre,
  vuelos.connection_id as conexion,
  vuelos.flight_date   as fecha,
//  vuelos.flight_price  as precio,
  vuelos.currency_code as moneda
    
    
    
    
}
