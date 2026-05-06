@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de consumo de bebidas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_BEBIDAS_08
  as projection on ZI_BEBIDAS_08
{
  @UI.lineItem: [{ position: 10, label: 'Código' }]
  key Codigo,

  @UI.selectionField: [{ position: 10 }]
  @UI.lineItem: [{ position: 20, label: 'Nombre' }]
  Nombre,

  @UI.selectionField: [{ position: 20 }]
  @UI.lineItem: [{ position: 30, label: 'Tipo' }]
  Tipo,

  @UI.selectionField: [{ position: 30 }]
  @UI.lineItem: [{ position: 40, label: 'Origen' }]
  Origen,

  @UI.lineItem: [{ position: 50, label: 'Graduación' }]
  Graduacion,

  @UI.lineItem: [{ position: 60, label: 'Precio' }]
  Precio
}
