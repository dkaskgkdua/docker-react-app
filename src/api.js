import fetch from 'node-fetch';

fetch("https://cors-anywhere.herokuapp.com/https://tmsapidev.teamfresh.co.kr/api/delivery/searchDeliveryAreaForTest", {
    method: 'POST',
    headers: {'Content-Type': 'application/json'},
    // credentials: 'include',
    body: JSON.stringify({
        addrBasic: data.address,
    }),
})
    .then(response => response.json())
    .then(d => {
        console.log(">>>>result ::", d)
    });