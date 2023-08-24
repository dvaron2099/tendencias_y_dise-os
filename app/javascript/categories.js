// app/javascript/categories.js
console.log("Script cargado");
import $ from 'jquery';
console.log("Script cargado");
document.addEventListener("turbo:load", function () {
  // Ocultar todas las categorías al cargar la página
  $('.category-fields').hide();

  // Manejar el cambio en la selección del género
  $('#product_gender_id').on('change', function () {
    var selectedGender = $(this).val();
    $('.category-fields').hide(); // Ocultar todas las categorías

    // Mostrar las categorías correspondientes al género seleccionado
    if (selectedGender == '1') { // ID de género para Dama
      $('.category-fields.lady').show(); // Mostrar categorías de Dama
      $('.category-fields.gentleman').hide(); // Ocultar categorías de Caballero
    } else if (selectedGender == '2') { // ID de género para Caballero
      $('.category-fields.lady').hide(); // Ocultar categorías de Dama
      $('.category-fields.gentleman').show(); // Mostrar categorías de Caballero
    }
  });
});
