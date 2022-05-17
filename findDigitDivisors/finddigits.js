function findDigits(n) {
    let nStr = n.toString();
    let nStrArr = nStr.split('');
    let count = 0;
    nStrArr.forEach(elem => {
        if(n%parseInt(elem) == 0) {
            count ++
        }
    })
    
    return count;

}