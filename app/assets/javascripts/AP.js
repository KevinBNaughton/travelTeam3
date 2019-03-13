$('.tabular.menu .item').tab();

$('.menu .item')
  .tab()
;

$('.ui.button')
  .on('click', function() {
    // programmatically activating tab
    $.tab('change tab', 'tab-name');
  })
;

$('.paths.example .menu .item')
  .tab({
    context: '.paths.example'
  })
;

console.log("Hi");