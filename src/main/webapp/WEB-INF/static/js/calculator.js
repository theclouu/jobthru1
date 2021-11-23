
//alert(hourPrice);    
//alert(document.day_work[0].value);


function calcButton() {
    var hourPrice = document.getElementById("hour").value;                          /*hourPrice=시급*/

    var dayWork = document.getElementById("day_work");                                /*dayWork=일일 근무시간*/
    var idx = dayWork.options[dayWork.selectedIndex].value;
    var dayPrice = hourPrice * idx;                                                 /*dayPrice=일급*/

    /*var txt = document.createTextNode(dayPrice);*/
    /* document.getElementById("result").innerText = "일급은"+dayPrice+"원 입니다.";
    /*var result = document.getElementById("result");*/

    var weekWork = document.getElementById("week_work");                              /*weekWokr=주 근무시간*/
    var idx = weekWork.options[weekWork.selectedIndex].value;
    var weekPrice = dayPrice * idx;                                                   /*weekPrice=주급*/

    var weekOvertime = document.getElementById("week_overtime");                     /*weekOvertime=주 연장 근무 시간*/
    var idx = weekOvertime.options[weekOvertime.selectedIndex].value;
    var overPrice = (hourPrice * idx) * 1.5;                                            /*overPrice = (연장 근무 시간*계약시급)*1.5 */

    var tax = document.getElementById("tax");
    var idx = tax.options[tax.selectedIndex].value;
    var taxPrice =0;

    if(tax.options[tax.selectedIndex].value ==0) {
        taxPrice = 0;
        
    } else{
        taxPrice =  weekPrice * 0.033;
       
    }
    var total=  (weekPrice + overPrice) - taxPrice;
    document.getElementById("result").innerText = "예상 일급 : " + dayPrice + "원 입니다.";
    document.getElementById("result_2").innerText = "예상 주급 : " + weekPrice + "원 입니다.";
    document.getElementById("result_3").innerText = "예상 주 연장 수당 : " + overPrice + "원 입니다.";
    document.getElementById("result_4").innerText = "예상 세금 : " + taxPrice + "원 입니다.";
    document.getElementById("result_5").innerText = "최종 환산금액 : " +total + "원 입니다.";
    
}



function resetButton() {
    document.getElementById("hour").value='';
    document.getElementById("day_work").value='0';
    document.getElementById("week_work").value='0';
    document.getElementById("week_overtime").value='0';
    document.getElementById("tax").value='0';
    document.getElementById("result").innerText='';
    document.getElementById("result_2").innerText='';
    document.getElementById("result_3").innerText='';
    document.getElementById("result_4").innerText='';
    document.getElementById("result_5").innerText='';
}