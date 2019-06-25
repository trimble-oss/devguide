$(function() {
  $("article").on("click", "img", function() {
    window.open($(this).attr("src"));
  });

  $("pre code.json").each(function(i, block) {
    var str = $(this).html();
    var obj = JSON.parse(str);
    var pretty = JSON.stringify(obj, null, 4);
    $(this).html(pretty);
    hljs.highlightBlock(block);
  });

  $("body").on("click", ".swagger-method-link", function() {
    if (
      true ==
      $(this)
        .parent()
        .next()
        .is(":visible")
    ) {
      $(this)
        .parent()
        .next()
        .hide();
    } else {
      $(this)
        .parent()
        .next()
        .show();
    }
  });

  $("body").on("click", ".accordion div.trigger", function() {
    if (
      true ==
      $(this)
        .next()
        .is(":visible")
    ) {
      $(this)
        .addClass("collapsed")
        .removeClass("expanded");
      $(this)
        .next()
        .slideUp(300);
    } else {
      openAccordion($(this), true);
    }

    var idArr = [];
    $.each($(".expanded"), function(index, elem) {
      idArr.push($(elem).attr("id"));
    });
    var idCsv = idArr.join(",");
    var section = $("#section").val();
    window.localStorage.setItem("menu-" + section, idCsv);
  });

  function openActivePanel() {
    var section = $("#section").val();
    var idCsv = window.localStorage.getItem("menu-" + section);

    if (idCsv != undefined) {
      $.each(idCsv.split(","), function(index, elem) {
        openAccordion($("#" + elem), false);
      });
    }
  }

  function openAccordion($element, slide) {
    $element.addClass("expanded").removeClass("collapsed");
    if (slide == true) {
      $element.next().slideDown(300);
    } else {
      $element.next().show();
    }
  }

  openActivePanel();

  /* Highlight current section in primary menu */
  var section = $("#section").val();
  $(".primary-nav ." + section).addClass("active-section");

  $("main nav .expandcollapse").click(function() {
    if (
      true ==
      $(this)
        .next()
        .is(":visible")
    ) {
      $(this)
        .next()
        .slideUp(300);
      $(this)
        .children(".toggle")
        .html("&#x25BC;");
    } else {
      $(this)
        .next()
        .slideDown(300);
      $(this)
        .children(".toggle")
        .html("&#x25B2;");
    }
  });

  $(".burger-icon").click(function() {
    var nav = $(".primary-nav nav");
    if (true == nav.is(":visible")) {
      nav.slideUp(300);
    } else {
      nav.slideDown(300);
    }
  });
});
