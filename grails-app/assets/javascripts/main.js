
function setEditable(el){
    var currentId = $(el).attr('id');
    document.getElementById(currentId).readOnly = false;

}

function setReadOnly(id){
    var isReadOnly=document.getElementById(id);
    if(!isReadOnly.readOnly){
        console.log("in:"+isReadOnly.readOnly)
        isReadOnly.readOnly=true;
    }
    console.log("out:"+isReadOnly.readOnly)

}
