function checkField(a, b, c, d, e) {
    if(a == "" || b == "" || c == "" || d == "" || e == "") 
        return false;
    return true;
}

function submit() {
    // console.log("here");
    var category = document.getElementById('category').value,
        question = document.getElementById('question').value,
        option1 = document.getElementById('op1').value, 
        option2 = document.getElementById('op2').value, 
        option3 = document.getElementById('op3').value, 
        option4 = document.getElementById('op4').value, 
        answer = document.getElementById('answer').value, 
        difficulty = document.getElementById('difficulty').value;
    // console.log(category, question, option1, option2, option3, option4, answer,difficulty);

    
    if(checkField(question, option1, option2, option3, option4) !== false) {
        var x;
        x = "&category="+category;
        x += "&question="+question;
        x += "&op1="+option1;
        x += "&op2="+option2;
        x += "&op3="+option3;
        x += "&op4="+option4;
        x += "&answer="+answer;
        x += "&diff="+difficulty;
        x += "&user=Test_user"; 
        // console.log(typeof(question));

        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'php/addQuestion.php?'+x, true);
        xhr.onreadystatechange = function() {
            if(xhr.readyState == 4 && xhr.status == 200) {
                //console.log("XHR-Status = " + xhr.responseText);
                var arr = JSON.parse(xhr.responseText);
                let query = document.getElementById("query"), color = "black";
                var text;
                console.log(arr);
                if(arr === true) {
                    color = "green";
                    text = "Question Added";
                    clearField();
                }
                else {
                    color = "red";
                    text = "Problem while adding the question to DB";
                    text += "<br> Please remove any \"(Double inverted commas in any field)"
                }
                query.style.borderColor = query.style.color = color;
                query.innerHTML=text;
                //alert('Question Added!');
            }
        }
        xhr.send();
    }
    else {
        alert("Do not leave any field empty!");
    }
}

function clearField() {
    document.getElementById('question').value = "";
    document.getElementById('op1').value = document.getElementById('op2').value = document.getElementById('op3').value = document.getElementById('op4').value = "";
}