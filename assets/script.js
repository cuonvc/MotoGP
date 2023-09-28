const inputBtn = document.querySelector(".input_btn");
inputBtn.addEventListener("click", () => {
    document.querySelector(".insert_values").style.display = "block";
    document.querySelector(".submit_btn").style.display = "block";
    inputBtn.style.display = "none";
})

const submitBtn = document.querySelector(".submit_btn");
submitBtn.addEventListener("click", () => {
    let riderName = document.querySelector(".rider_name").value;
    let riderNational = document.querySelector(".rider_national").value;
    let QAT_score = document.querySelector(".QAT_score").value;
    let INA_score = document.querySelector(".INA_score").value;
    let ARG_score = document.querySelector(".ARG_score").value;
    let AME_score = document.querySelector(".AME_score").value;
    let POR_score = document.querySelector(".POR_score").value;
    let SPA_score = document.querySelector(".SPA_score").value;
    let FRA_score = document.querySelector(".FRA_score").value;
    let ITA_score = document.querySelector(".ITA_score").value;
    let CAT_score = document.querySelector(".CAT_score").value;
    let GER_score = document.querySelector(".GER_score").value;
    let NED_score = document.querySelector(".NED_score").value;
    let GBR_score = document.querySelector(".GBR_score").value;
    let AUT_score = document.querySelector(".AUT_score").value;
    let RSM_score = document.querySelector(".RSM_score").value;
    let ARA_score = document.querySelector(".ARA_score").value;
    let JPN_score = document.querySelector(".JPN_score").value;
    let THA_score = document.querySelector(".THA_score").value;
    let AUS_score = document.querySelector(".AUS_score").value;
    let MAL_score = document.querySelector(".MAL_score").value;
    let VAL_score = document.querySelector(".VAL_score").value;

    var myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    var raw = JSON.stringify({
        "rider": riderName,
        "undefine": riderNational,
        "qat": QAT_score,
        "ina": INA_score,
        "arg": ARG_score,
        "ame": AME_score,
        "por": POR_score,
        "spa": SPA_score,
        "fra": FRA_score,
        "ita": ITA_score,
        "cat": CAT_score,
        "ger": GER_score,
        "ned": NED_score,
        "gbr": GBR_score,
        "aut": AUT_score,
        "rsm": RSM_score,
        "ara": ARA_score,
        "jpn": JPN_score,
        "tha": THA_score,
        "aus": AUS_score,
        "mal": MAL_score,
        "val": VAL_score
    });

    var requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
    };
      
    fetch("http://localhost:8080/api/insert", requestOptions)
    .then(response => response.text)
    .then(result => {
        console.log(result);
        location.reload();
    })
    .catch(error => console.log('error', error));
})


const tableBox = document.querySelector("table");
let array = [];

var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };
  
fetch("http://localhost:8080/api/get", requestOptions)
.then(response => response.json())
.then(result => {
    mappingData(result);
})
.catch(error => console.log('error', error));


function mappingData(array) {
    console.log(array)
    let htmls = "";
    htmls += `
        <tr>
        <th>Rank</th>
        <th>Rider</th>
        <th>National</th>
        <th>Points</th>
        <th>Leader</th>
        <th>Previous</th>
        <th>QAT</th>
        <th>INA</th>
        <th>ARG</th>
        <th>AME</th>
        <th>POR</th>
        <th>SPA</th>
        <th>FRA</th>
        <th>ITA</th>
        <th>CAT</th>
        <th>GER</th>
        <th>NED</th>
        <th>GBR</th>
        <th>AUT</th>
        <th>RSM</th>
        <th>ARA</th>
        <th>JPN</th>
        <th>THA</th>
        <th>AUS</th>
        <th>MAL</th>
        <th>VAL</th>
        </tr>
    `
    array.map(object => {
        console.log(object)
        checkNullable(object.leader);
        checkNullable(object.previous);
        checkNullable(object.qat);
        let item = `
            <tr>
                <td>${object.id}</td>
                <td>${object.rider}</td>
                <td>${object.undefine}</td>
                <td>${object.point}</td>
                <td>${checkNullable(object.leader)}</td>
                <td>${checkNullable(object.previous)}</td>
                <td>${checkNullable(object.qat)}</td>
                <td>${checkNullable(object.ina)}</td>
                <td>${checkNullable(object.arg)}</td>
                <td>${checkNullable(object.ame)}</td>
                <td>${checkNullable(object.por)}</td>
                <td>${checkNullable(object.spa)}</td>
                <td>${checkNullable(object.fra)}</td>
                <td>${checkNullable(object.ita)}</td>
                <td>${checkNullable(object.cat)}</td>
                <td>${checkNullable(object.ger)}</td>
                <td>${checkNullable(object.ned)}</td>
                <td>${checkNullable(object.gbr)}</td>
                <td>${checkNullable(object.aut)}</td>
                <td>${checkNullable(object.rsm)}</td>
                <td>${checkNullable(object.ara)}</td>
                <td>${checkNullable(object.jpn)}</td>
                <td>${checkNullable(object.tha)}</td>
                <td>${checkNullable(object.aus)}</td>
                <td>${checkNullable(object.mal)}</td>
                <td>${checkNullable(object.val)}</td>
            </tr>
        `
        htmls += item;
    })
    
    tableBox.innerHTML = htmls;
}

function checkNullable(field) {
    if (field == null) {
        return "-";
    } 
    
    return field;
}
