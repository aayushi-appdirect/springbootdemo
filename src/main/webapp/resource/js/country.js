function abc() {
    debugger;
    $.ajax({
        async: true,
        type: 'GET',
        url: 'http://services.groupkt.com/country/get/all',
        // data: {
        //     countryId : countryId,
        // },
        error: function() {
            alert("Error");
        },
        success: function(stateDetails) {
            alert(stateDetails);
        }
    });
}
