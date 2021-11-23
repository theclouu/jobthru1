document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    const rateForms = document.querySelectorAll('.rating'); /* 별점 선택 템플릿을 모두 선택 */
	rateForms.forEach(function(item){//클릭 이벤트 리스너 각각 등록
		item.addEventListener('click',function(e){
			let elem = e.target;
			if(elem.classList.contains('rate_radio')){
				rating.setRate(elem.parentElement, parseInt(elem.value)); // setRate() 에 ".rating" 요소를 첫 번째 파라메터로 넘김
			}
		})
	});

    //상품평 작성 글자수 초과 체크 이벤트 리스너
    document.querySelector('.review_textarea').addEventListener('keydown',function(){
        //리뷰 400자 초과 안되게 자동 자름
        let review = document.querySelector('.review_textarea');
        let lengthCheckEx = /^.{400,}$/;
        if(lengthCheckEx.test(review.value)){
            //400자 초과 컷
            review.value = review.value.substr(0,400);
        }
    });

    //저장 전송전 필드 체크 이벤트 리스너
    document.querySelector('#save').addEventListener('click', function(e){
        //별점 선택 안했으면 메시지 표시
        if(rating.rate == 0){
            rating.showMessage('rate');
            return false;
        }
        //리뷰 5자 미만이면 메시지 표시
        if(document.querySelector('.review_textarea').value.length < 5){
            rating.showMessage('review');
            return false;
        }
        //폼 서밋
		//실제로는 서버에 폼을 전송하고 완료 메시지가 표시되지만 저장된 것으로 간주하고 폼을 초기화 함.
		document.reviewform.submit();
		Swal.fire({
                                    icon: 'success',
                                    title: '리뷰 작성 완료',
                                    text: '성공적으로 리뷰 작성에 완료하였습니다.',
                                  })
		rating.setRate(null, 0);
		document.querySelector('.review_textarea').value = '';
			
    });
});


//별점 마킹 모듈 프로토타입으로 생성
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(rateobj, newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
	let checks = null;
	//요소가 파라메터로 넘어오면 별점 클릭, 없으면 저장 후 전체 초기화
	if(rateobj){
		rateobj.querySelector('.ratefill').style.width = parseInt(newrate * 60) + 'px'; // 현재 별점 갯수 채색
		checks = rateobj.querySelectorAll('.rate_radio'); // 넘어온 요소 하위의 라디오버튼만 선택
	}else{
		//전체 별점 채색 초기화
		const rateFills = document.querySelectorAll('.ratefill');
		rateFills.forEach(function(item){
			item.style.width = parseInt(newrate * 60) + 'px';
		});
		//전체 라디오 버튼 초기화
		checks = document.querySelectorAll('.rate_radio');
	}
	//별점 체크 라디오 버튼 처리
	if(checks){
		checks.forEach(function(item, idx){
			if(idx < newrate){
				item.checked = true;
			}else{
				item.checked = false;
			}
		});		
	}
}
Rating.prototype.showMessage = function(type){//경고메시지 표시
    switch(type){
        case 'rate':
            //안내메시지 표시
            document.querySelector('.review_rating .warning_msg').style.display = 'block';
            //지정된 시간 후 안내 메시지 감춤
            setTimeout(function(){
                document.querySelector('.review_rating .warning_msg').style.display = 'none';
            },1000);            
            break;
        case 'review':
            //안내메시지 표시
            document.querySelector('.review_contents .warning_msg').style.display = 'block';
            //지정된 시간 후 안내 메시지 감춤
            setTimeout(function(){
                document.querySelector('.review_contents .warning_msg').style.display = 'none';
            },1000);    
            break;
    }
}

let rating = new Rating();//별점 인스턴스 생성