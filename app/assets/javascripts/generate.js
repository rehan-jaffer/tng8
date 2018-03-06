class GenerateButton {

  constructor() {
    this.el = $(".generate-snippet-button");
  }

  init() {
    this.el.click(function() {
      $(".generate-output").html("<img src='/assets/tenor.gif' />");
      fetch("http://localhost:4567/script/4")
        .then((response) => response.text()).then(function(response) {
          $(".generate-output").html(response);
          $("#snippet_content").val(response);
        }).catch(function(err) {
          alert(err);
        });
    });
  }

}

$(document).ready(function() {
  
  var button = new GenerateButton;
  button.init();

});
