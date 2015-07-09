# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.subSelectWithAjax = function() {
  var that = this;

  this.change(function() {
    $.post(that.attr('rel'), {id: that.val()}, null, "script");
  });
}

$("#widget_category").subSelectWithAjax();

$("#widget_subcategory").html('&lt;%= options_for_select(@subcategories.map {|sc| [sc.name, sc.id]}).gsub(/n/, '') %&gt;');

