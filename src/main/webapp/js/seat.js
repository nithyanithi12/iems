function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
$(document).on("click", ".checkbox", function() {
    var boxid = $(this).data('id');
	$(".modal-body #boxid").val(boxid);
});