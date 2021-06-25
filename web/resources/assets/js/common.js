/**
 * 
 */

function goCollection(collectionName) {
	let user_id = $("#craw_id").val();
	let locationAddress = "/loarc/Collection/" + collectionName + "?user_id=" + user_id
	if ("" != user_id) {
		location.href = locationAddress;
	} else {
		alert("아이디를 먼저 검색해 주세요.");
		return false;
	}
}