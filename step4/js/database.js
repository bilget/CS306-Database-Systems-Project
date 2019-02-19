/**
 * Created by salim on 21-May-17.
 */
function getStudentByYear() {
    var year = document.getElementById('yearInput').value;
    var x;
    if (year == null) {
        return;
    }else{
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            x = this.responseText;
        };
        xmlhttp.open("GET", "php/getStudentByYear.php?q=" + year, false);
        xmlhttp.send();

        var obj = JSON.parse(x);

        var body = document.getElementById('tab2');
        body.removeChild(body.childNodes[2]);

        var tbl = document.createElement('table');
        tbl.style.width = '100%';
        tbl.setAttribute('border', '1');
        tbl.classList.add('table');
        var thd = document.createElement('thead');
        var tbdy = document.createElement('tbody');

        var th = document.createElement('th');
        th.appendChild(document.createTextNode('ID Number'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Name'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Surname'));
        thd.appendChild(th);

        for (var i = 0; i < obj.length; i++) {
            var tr = document.createElement('tr');

            var td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].idNumber));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].sname));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].slastname));
            tr.appendChild(td);

            tbdy.appendChild(tr);
        }
        tbl.appendChild(thd);
        tbl.appendChild(tbdy);
        body.appendChild(tbl)
    }
}

function getStudentByFaculty() {
    var faculty = document.getElementById('facultyInput').value;
    var x;

    if(faculty == null){
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            x = this.responseText;
        };
        xmlhttp.open("GET", "php/getStudentByFaculty.php?q=" + faculty, false);
        xmlhttp.send();

        var obj = JSON.parse(x);

        var body = document.getElementById('tab3');
        body.removeChild(body.childNodes[2]);

        var tbl = document.createElement('table');
        tbl.style.width = '100%';
        tbl.setAttribute('border', '1');
        tbl.classList.add('table');
        var thd = document.createElement('thead');
        var tbdy = document.createElement('tbody');

        var th = document.createElement('th');
        th.appendChild(document.createTextNode('ID Number'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Name'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Surname'));
        thd.appendChild(th);

        for (var i = 0; i < obj.length; i++) {
            var tr = document.createElement('tr');

            var td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].idNumber));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].sname));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].slastname));
            tr.appendChild(td);

            tbdy.appendChild(tr);
        }
        tbl.appendChild(thd);
        tbl.appendChild(tbdy);
        body.appendChild(tbl)
    }
}

function getCoursesByTerm(){
    var term = document.getElementById('termInput').value;
    var x;

    if(term == null){
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            x = this.responseText;
        };
        xmlhttp.open("GET", "php/getCoursesByTerm.php?q=" + term, false);
        xmlhttp.send();

        var obj = JSON.parse(x);

        var body = document.getElementById('tab4');
        body.removeChild(body.childNodes[2]);

        var tbl = document.createElement('table');
        tbl.style.width = '100%';
        tbl.setAttribute('border', '1');
        tbl.classList.add('table');
        var thd = document.createElement('thead');
        var tbdy = document.createElement('tbody');

        var th = document.createElement('th');
        th.appendChild(document.createTextNode('CRN'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Course Name'));
        thd.appendChild(th);

        for (var i = 0; i < obj.length; i++) {
            var tr = document.createElement('tr');

            var td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].crn));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].cname));
            tr.appendChild(td);

            tbdy.appendChild(tr);
        }
        tbl.appendChild(thd);
        tbl.appendChild(tbdy);
        body.appendChild(tbl)
    }

}

function getCoursesByStudent() {
    var id = document.getElementById('idInput').value;
    var x;

    if(id == null){
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            x = this.responseText;
        };
        xmlhttp.open("GET", "php/getCoursesByStudent.php?q=" + id, false);
        xmlhttp.send();

        var obj = JSON.parse(x);

        var body = document.getElementsByName('tab8')[0];
        body.removeChild(body.childNodes[2]);

        var tbl = document.createElement('table');
        tbl.style.width = '100%';
        tbl.setAttribute('border', '1');
        tbl.classList.add('table');
        var thd = document.createElement('thead');
        var tbdy = document.createElement('tbody');

        var th = document.createElement('th');
        th.appendChild(document.createTextNode('CRN'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Course Name'));
        thd.appendChild(th);

        th = document.createElement('th');
        th.appendChild(document.createTextNode('Definition'));
        thd.appendChild(th);

        for (var i = 0; i < obj.length; i++) {
            var tr = document.createElement('tr');

            var td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].crn));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].cName));
            tr.appendChild(td);

            td = document.createElement('td');
            td.appendChild(document.createTextNode(obj[i].definition));
            tr.appendChild(td);

            tbdy.appendChild(tr);
        }
        tbl.appendChild(thd);
        tbl.appendChild(tbdy);
        body.appendChild(tbl)
    }
}