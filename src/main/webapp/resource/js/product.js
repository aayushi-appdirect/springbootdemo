function edit_row(id)
{
    debugger;

var str="pro_name"+id;
    var name=document.getElementById(str).innerHTML;
    var price=document.getElementById("pro_price"+id).innerHTML;
    var descr=document.getElementById("pro_descr"+id).innerHTML;


    document.getElementById("pro_name"+id).innerHTML="<input type='text' id='name_text"+id+"' value='"+name+"'>";
    document.getElementById("pro_price"+id).innerHTML="<input type='number' id='price_text"+id+"' value='"+price+"'>";
    document.getElementById("pro_descr"+id).innerHTML="<input type='text' id='descr_text"+id+"' value='"+descr+"'>";

    document.getElementById("edit_button"+id).style.display="none";
    document.getElementById("save_button"+id).style.display="block";
}


function save_row(id)
{   debugger;
    var name=document.getElementById("name_text"+id).value;
    var price=document.getElementById("price_text"+id).value;
    var descr=document.getElementById("descr_text"+id).value;
    var product =
        {
            id:id,
            prodName :name,
            prodPrice:price,
            prodDescription:descr

        };

    $.ajax
    ({
        type:'POST',
        url:'/adminController/editProduct',
        data:product,
        success:function(response) {
            if(response.String=="success") {
                document.getElementById("pro_name"+id).innerHTML = name;
                document.getElementById("pro_price"+id).innerHTML = price;
                document.getElementById("pro_descr"+id).innerHTML = descr;

                document.getElementById("edit_button"+id).style.display = "block";
                document.getElementById("save_button"+id).style.display = "none";
            }
        }
    });
    document.getElementById("pro_name"+id).innerHTML = name;
    document.getElementById("pro_price"+id).innerHTML = price;
    document.getElementById("pro_descr"+id).innerHTML = descr;

    document.getElementById("edit_button"+id).style.display = "block";
    document.getElementById("save_button"+id).style.display = "none";


}

function delete_row(id)
{   debugger;
    $.ajax
    ({
        type:'post',
        url:'/adminController/deleteProduct',
        data:{
            delete_row:'delete_row',
            id:id
        },
        success:function(response) {
            if(response=="success")
            {
                var row=document.getElementById("pro_row"+id);
                row.parentNode.removeChild(row);
            }
        }
    });
    var row=document.getElementById("pro_row"+id);
    row.parentNode.removeChild(row);
}
