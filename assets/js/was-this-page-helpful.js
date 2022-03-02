$(function () {
  $(".feedback").fadeIn("slow");
  $(".feedback").addClass("d-block");
  $(".btn-feedback").click(function () {
    $(".btn-feedback").addClass("img-grayscale");
    $(".btn-feedback").attr("disabled", "disabled");
    $(".feedback-thanks").fadeIn("slow");
    $(".feedback-thanks").addClass("d-block");
  });
  $(".btn-feedback-helpful").click(function () {
    $(".feedback-helpful").fadeIn("slow");
    $(".feedback-helpful").addClass("d-block");
  });
  $(".btn-feedback-not-helpful").click(function () {
    $(".feedback-not-helpful").fadeIn("slow");
    $(".feedback-not-helpful").addClass("d-block");
  });
});
