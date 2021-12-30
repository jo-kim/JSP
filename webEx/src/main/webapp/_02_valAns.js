function checkVal(form){
	const required = form.required;
	let check = required.length;
	let cnt = 0;
	
	for(let i=0; i<required.length; i++){
		if(required[i].checked === true)
		 	cnt++;
	}
	
	if(cnt === check){
		form.submit();
	}
	else{
		alert('네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.');
	}
}

function checkInfo(form){
	const id = form.id.value;
	const pw = form.pw.value;
	
	if(id === "" || pw === ""){
		alert('필수 항목을 채워주세요!');
	}
	else{
		form.submit();
	}
}