<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="_02_valAns.js"></script>
    <title>정보제공 동의</title>
</head>
<body>
    <form method="get" action="_03_joinAns.jsp">
        <input type="checkbox" class="all" id="check"><span>모두동의</span><br>
        <input type="checkbox" id="check" name="required"><span>필수1</span><br>
        <p>동의 해야하는 사항에 대한 설명글이 작성되어 있다.</p>
        <input type="checkbox" id="check" name="required"><span>필수2</span><br>
        <input type="checkbox" id="check" name="option"><span>선택1</span><br>
        <input type="checkbox" id="check" name="option"><span>선택2</span><br>
        <input type="checkbox" id="check" name="option"><span>선택3</span><br>

        <input type="button" onclick="checkVal(form)" value="submit">
    </form>

    <script>
        // Vanilla JS
        // const btnAll = document.querySelector('.all');

        // btnAll.addEventListener('click', e=>{
        //     console.log(typeof btnAll.checked);
        //         document.querySelectorAll('#check').forEach(element =>{
        //             element.checked  = btnAll.checked;
        //         });
        // });

        // jquery

        $('.all').click(e=>{
            // 속성명만 넘겼을때는 값만 가져와줌
           // console.log($('.all').prop('checked'));
            $('input#check').prop('checked',$('.all').prop('checked'));
            
        });
    </script>
</body>
</html>