
	function checkValidate(form){
		let cnt = 0;
		for(let i=0; i<form.terms.length; i++){
			if(form.terms[i].checked === true)
				cnt++;
		}
		
		if(cnt>1){
			form.submit();
		}
		else{
			alert('네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.');
		}
	}
	
	// 비밀번호 === 재확인 
	// 인증번호 랜덤번호 인증
	// required 충족-  > 가입하기 = > joinPro 
	
	function check(form){
		console.log(form.required.length);
		
	}