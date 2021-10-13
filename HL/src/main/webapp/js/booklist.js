/**
 * 
 */
$(function(){
	$("#search").on("propertychange change keyup paste input", function() {
		booksearch();
	});
}) 


function booksearch() {

	$.ajax({
		url: "searchBook",
		type: "post",
		data: { searchType: $("#searchType").val(), 
				search: $("#search").val() },
		success: function(result) {
			console.log(result);
			let dataLength = result.length; 
			console.log(dataLength);
			$('#booklist').empty();
			for(let i=0; i<dataLength; i++){
				let data = JSON.parse(JSON.stringify(result[i])); 
				console.log(data.book_Title);
				let $title = $(`<p>${data.book_Title}</p>`);
				let $Auth = $(`<p>${data.book_Auth}</p>`);
				let $Pub = $(`<p>${data.book_Pub}</p>`);
				let $Page = $(`<p>${data.book_Page}</p>`);
				let $Big = $(`<p>${data.book_Big}</p>`);
				let $small = $(`<p>${data.book_Small}</p>`);
				let $isbn = $(`<p>${data.book_ISBN}</p>`);
				let $aaa = $('<hr/>');
				$('#booklist').append($title);
				$('#booklist').append($Auth);
				$('#booklist').append($Pub);
				$('#booklist').append($Page);
				$('#booklist').append($Big);
				$('#booklist').append($small);
				$('#booklist').append($isbn);
				$('#booklist').append($aaa);
			}
			
			
		}
		
	})

}
	






	     