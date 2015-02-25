var sendSortRequestOfModel = function(model_name) {
  jQuery.ajax({
    type: 'post',
    data: jQuery('#index_table_' + model_name + ' tbody').sortable('serialize'),
    dataType: 'script',
    url: '/admin/' + model_name + '/sort'
  });
};

jQuery(document).ready(function(){
  jQuery('#index_table_menus tbody').sortable({
    axis: 'y',
    cursor: 'move',
    update: function(event, ui) {
      return sendSortRequestOfModel("menus");
    }
  });
});

