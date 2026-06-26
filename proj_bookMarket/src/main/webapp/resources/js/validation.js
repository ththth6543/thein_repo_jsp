function CheckAddBook() {

    var bookId = document.getElementById("bookId");
    var name = document.getElementById("name");
    var unitPrice = document.getElementById("unitPrice");
    var unitsInStock = document.getElementById("unitsInStock");
    var description = document.getElementById("description");
    
    //id check
    if(!check(/^ISBN[0-9]{4,11}$/,bookId,"check the isbn number")) return false;
    

    //check name
    if(name.value.length < 4 || name.value.length > 50) {
        alert("[도서명]\n최소 4자에서 최대 50자까지 입력");

        name.focus();
        return false;
    }

    //check price
    if (unitPrice.value.length ==0 || isNaN(unitPrice.value)) {
        alert("[가격]\n숫자만 입력");
        unitPrice.focus();
        return false;
    }

    if(unitPrice.value < 0 ) {
        alert("[가격]\n음수를 입력할 수 없습니다.");
        unitPrice.focus();
        return false;
    }

    //check stock
    if(isNaN(unitsInStock.value)) {
        alert("[재고수]\n수량 확인");
        unitsInStock.focus();
        return false;
    }

    if(description.value.length < 100) {
        alert("[상세설명]\n최소 100자 이상 입력");
        description.focus();
        return false;
    }

    function check(regExp, e, msg) {
        if(regExp.test(e.value)) {
            return true;
        }
        alert(msg);
        e.focus();
        return false;
    }

    document.newBook.submit();
}