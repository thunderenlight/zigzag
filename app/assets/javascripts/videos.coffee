jQuery(document).on 'turbolinks:load', ->
  ZiggeoApi.Events.on "upload_progress", ( uploaded, total, data ) ->
    $('progress').removeClass('hidden-xs-up').attr 'value', (uploaded / total) * 100


    ZiggeoApi.Events.on("submitted", function(data) {
    	alert("Submitted a new video with token '" + data.video.token + "'!");
    	});
