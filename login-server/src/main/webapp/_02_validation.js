
	function checkValidate(form){
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
	
	// 비밀번호 === 재확인 
	// 인증번호 랜덤번호 인증
	// required 충족-  > 가입하기 = > joinPro 
	
	
	function check(form){
		let check  =0;
		for(let i=1;i<7; i++){
			const c = document.querySelector(`#check${i}`);
			if(i==1){
				if(checkNull(form.id.value)){
					check++;
				}
				else{
					c.innerText = "필수 정보입니다.";
				}
				
			}
			if(i==2){
				if(checkNull(form.pw.value)){
					check ++;
					
				}
				else{
					c.innerText = "필수 정보입니다.";
				}
				
			}
			if(i==3){
				if(checkNull(form.pw_confirm.value) && form.pw.value=== form.pw_confirm.value){
					check ++;
				}
				else{
					c.innerText = "비밀번호를 확인해 주세요.";
				}
				
			}
			if(i==4){
				if(checkNull(form.name.value)){
					check ++;
				}
				else{
					c.innerText = "필수 정보입니다.";
				}
			
			}
			if(i==5){
				if(checkNull(form.year.value) && checkNull(form.day.value) && checkYear(form.year.value) && checkMonth(form.month.value)&& checkDate(form.day.value)){
					
					check++;
				}
				else{
					c.innerText = "날짜를 확인해주세요.";
				}
				
			}
			if(i==6){
				if(checkNull(form.tel.value) && form.tel.value.length === 8)
					check++;
				else{
					c.innerText = "필수 정보입니다.";
				}
			}
			
		}
		
		if(check ==6){
			form.submit();
		}
		else{
			alert('failed');
		}
	}
	
	
	// id - 빈칸 중복값
	// pw - 빈칸
	// pw_confirm - 빈칸 || pw!== 
	// name - 빈칸
	// 생년 - 빈칸 || 연도수 초과   
	// 월 - 빈칸 || 월 선택  
	// 일 - 빈칸 || 1~31  초과
	// 전화 - 빈칸 || 8자리 초과  
	 

	// 빈칸 예외
	
	function checkNull(value){
		if(value!==""){
		return true;
		}
		return false;
	}
	
	function checkYear(value){
		const year = document.querySelector('#year').value;
		
		if(year>1900 && year<=2021){
			return true;
		}
		return false;	
		
	}
	
	function checkMonth(value){
		const month = document.querySelector('#month').value.valueOf();
		
		if(month>=1&& month<=12){
			return true;
		}
		return false;
	}
	
	function checkDate(value){
		const date = document.querySelector('#day').value;
		if(date>=1 && date<=31){
			return true;
		}
		return false;
	}
	
	
	// login
	function checkLogin(form){
		
		const id = form.id.value;
		const pw = form.pw.value;
		
		if(id==="" || pw ===""){
			alert('잘못된 정보입니다.');
		}
		else{
			form.submit();
		}
		
	}
	
	// updateForm
	function check(form){
		const title = form.title.value;
		const content = form.content.value;
		const pw = form.pw.value;
		
		if(title ==="" || content === "" || pw === "" ){
			alert("빈칸으로 두지 말아주세요");
		}
		else{
			form.submit();
		}
	}
	
	
