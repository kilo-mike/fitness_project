;(function ($) {
    var d = new Date();

    const modalUniversal = $('#modalUniversal');

    $('#calendar1').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,basicWeek,basicDay'
        },
        defaultDate: d,
        navLinks: true, // can click day/week names to navigate views
        editable: true,
        eventLimit: true, // allow "more" link when too many events
        // events: [
        //     {
        //                     title: 'Long Event',
        //                     start: '2018-11-07',
        //                     end: '2018-11-10'
        //                 }
        // ]
        events: function (start, end, timezone, callback) {
            $.ajax({
                url: 'http://localhost:8080/sessions/user',
                dataType: 'json',
                type: 'GET',
                data: {
                    // our hypothetical feed requires UNIX timestamps
                    start: start.unix(),
                    end: end.unix()
                },
                success: function (doc) {
                    console.log(doc)
                    var events = [];
                    $(doc).each(function (index, item) {
                        console.log(item)
                        events.push({
                            title: item.type.name,
                            id: item.id,//$(this).attr('id'),
                            // url: 'http://localhost:8080/session/' + item.id,
                            type: {
                                id: item.type.id,//$(this).attr("id"),
                                name: item.type.name,//$(this).attr("name")
                            },
                            instructor: {
                                id: item.instructor.id,//$(this).attr("id"),
                                name: item.instructor.name,//$(this).attr("name")
                            },
                            // type: $(this).attr('type'),
                            // instructor: $(this).attr('instructor') ,
                            start: item.date,//$(this).attr('date')
                        });

                    });
                    callback(events);
                }

            })
        },
        eventClick: function (calEvent, jsEvent, view) {
            modalUniversal.find('.modal-event-instructor').text(calEvent.instructor.name);
            modalUniversal.find('.modal-event-name').text(calEvent.type.name);
            modalUniversal.find('.modal-event-date').text(calEvent.start.format("dddd, MMMM Do YYYY, h:mm:ss a"));
            modalUniversal.find('.modal-event-date').text(calEvent.start.format("dddd, MMMM Do YYYY, h:mm:ss a"));
            modalUniversal.find('.modal-event-register').attr('href','/unregister/'+calEvent.id);
            modalUniversal.find('.modal-event-button-type').text('wyrejstruj');


            modalUniversal.modal('show');
            // if (event.url) {
            //     window.open(event.url);
            //     return false;
            // }
            // console.log(calEvent);
            // console.log(jsEvent);
            // console.log(view);
            // alert('Event: ' + calEvent.title);
            // alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
            // alert('View: ' + view.name);

            // change the border color just for fun
            $(this).css('border-color', 'red');

        }

    });

})(jQuery);
