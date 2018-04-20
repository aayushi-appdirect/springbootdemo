
function edit_row(id)
{
    debugger;


    var name=document.getElementById("cat_name"+id).innerHTML;
    var parentid=document.getElementById("cat_parentid"+id).innerHTML;
    var createdon=document.getElementById("cat_createdon"+id).innerHTML;
    var updatedon=document.getElementById("cat_updatedon"+id).innerHTML;

    document.getElementById("cat_name"+id).innerHTML="<input type='text' id='name_text"+id+"' value='"+name+"'>";
    document.getElementById("cat_parentid"+id).innerHTML="<input type='number' id='parentid_text"+id+"' value='"+parentid+"'>";

    document.getElementById("edit_button"+id).style.display="none";
    document.getElementById("save_button"+id).style.display="block";
}

function save_row(id)
{   debugger;
    var name=document.getElementById("name_text"+id).value;
    var parentid=document.getElementById("parentid_text"+id).value;
    var createdon=document.getElementById("cat_createdon"+id).innerHTML;
    var updatedon=document.getElementById("cat_updatedon"+id).innerHTML;
    var category =
        {
            id:id,
            categoryName :name,
            parentId:parentid,
            createdOn:createdon,
            updatedOn:updatedon
        };
    $.ajax
    ({
        type:'POST',
        url:'/adminController/editCat',
        data:category,
        success:function(response) {
            if(response=="success")
            {
                document.getElementById("cat_name"+id).innerHTML=name;
                document.getElementById("cat_parentid"+id).innerHTML=parentid;
                document.getElementById("cat_createdon"+id).innerHTML=createdon;
                document.getElementById("cat_createdon"+id).innerHTML=updatedon;
                document.getElementById("edit_button"+id).style.display="block";
                document.getElementById("save_button"+id).style.display="none";
            }
        }
    });
    document.getElementById("cat_name"+id).innerHTML=name;
    document.getElementById("cat_parentid"+id).innerHTML=parentid;
    document.getElementById("edit_button"+id).style.display="block";
    document.getElementById("save_button"+id).style.display="none";

}
