//Get all of the button elements.
var zero = document.getElementById('zero');
var one = document.getElementById('one');
var two = document.getElementById('two');
var three = document.getElementById('three');
var four = document.getElementById('four');
var five = document.getElementById('five');
var six = document.getElementById('six');
var seven = document.getElementById('seven');
var eight = document.getElementById('eight');
var nine = document.getElementById('nine');
var add = document.getElementById('add');
var subtract = document.getElementById('subtract');
var multiply = document.getElementById('multiply');
var divide = document.getElementById('divide');
var clear = document.getElementById('clear');
var decimal = document.getElementById('decimal');
var sign = document.getElementById('sign');
var square = document.getElementById('square');
var sqrt = document.getElementById('sqrt');

//Get the display and runningTotal elements
var display = document.getElementById('display');
var runningTotal = document.getElementById('runningTotal');

//value will hold the current value on the screen.
var value = '';

//total will hole the current total Value
var total = 0;

//These boolean variables will track which opperation
//is being performed.
var addB = false;
var subtractB = false;
var multiplyB = false;
var divideB = false;
var squareB = false;
var sqrtB = false;

//Checks to see if it is the first entry in a calculation
var firstEntry = true;

//These functions,
//1. Concatenate value and the new digit.
//2. Display value.
function zeroFunction(){
  value += '0';
  display.innerHTML = value;
}

function oneFunction(){
  value += '1';
  display.innerHTML = value;
}

function twoFunction(){
  value += '2';
  display.innerHTML = value;
}

function threeFunction(){
  value += '3';
  display.innerHTML = value;
}

function fourFunction(){
  value += '4';
  display.innerHTML = value;
}

function fiveFunction(){
  value += '5';
  display.innerHTML = value;
}

function sixFunction(){
  value += '6';
  display.innerHTML = value;
}

function sevenFunction(){
  value += '7';
  display.innerHTML = value;
}

function eightFunction(){
  value += '8';
  display.innerHTML = value;
}

function nineFunction(){
  value += '9';
  display.innerHTML = value;
}

function decimalFunction(){
  value += '.';
  display.innerHTML = value;
}
//These functions,
//1. Run evaluate() which checks operation, does calculation, and resets operation.
//2. Updates operation to +, -. x, or /.
//3. Updates and displays runningTotal and display.
//4. Runs emptyZero() which makes value = '' display as a zero.

function addFunction(){
  evaluate();
  addB = true;
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function subtractFunction(){
  evaluate();
  subtractB = true;
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function multiplyFunction(){
  evaluate();
  multiplyB = true;
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function divideFunction(){
  evaluate();
  divideB = true;
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function squareFunction(){
  evaluate();
  squareB = true;
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function sqrtFunction(){
  evaluate();
  sqrtB = true;
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function clearFunction(){
  resetOperations();
  total = 0;
  value = '';
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
  firstEntry = true;
}

function evaluate(){
  if(addB == true){
    total = total + Number(value);
    resetOperations();
    value = '';
  } else if(subtractB == true){
    total = total - Number(value);
    resetOperations();
    value = '';
  } else if(multiplyB == true){
    total = total * Number(value);
    resetOperations();
    value = '';
  } else if(divideB == true){
    total = total / Number(value);
    resetOperations();
    value = '';
  }else if(squareB == true){
    total = total * total;
    resetOperations();
    value = '';
  }else if(sqrtB == true){
    total = Math.pow(total,1/2);
    resetOperations();
    value = '';
  }else{
    if(firstEntry == true){
      total = Number(value);
      value = '';
      firstEntry = false;
    }
  }
}

function resetOperations(){
  addB = false;
  subtractB = false;
  multiplyB = false;
  divideB = false;
  squareB = false;
  sqrtB = false;
}

function equalsFunction(){
  evaluate();
  resetOperations();
  runningTotal.innerHTML = total;
  display.innerHTML = value;
  emptyZero();
}

function signFunction(){
  if(value != ''){
    if(value.charAt(0) == '-'){
      value = value.substring(1,value.length);
    }else if (value.charAt(0) != '-') {
      value = '-' + value;
    }
    runningTotal.innerHTML = total;
    display.innerHTML = value;
  }
}

function emptyZero(){
  if(value == '') {
    display.innerHTML = '0';
  }
}

add.addEventListener('click', addFunction, false);
subtract.addEventListener('click', subtractFunction, false);
multiply.addEventListener('click', multiplyFunction, false);
square.addEventListener('click', squareFunction, false);
sqrt.addEventListener('click', sqrtFunction, false);
divide.addEventListener('click', divideFunction, false);
clear.addEventListener('click', clearFunction, false);
zero.addEventListener('click', zeroFunction, false);
one.addEventListener('click', oneFunction, false);
two.addEventListener('click', twoFunction, false);
three.addEventListener('click', threeFunction, false);
four.addEventListener('click', fourFunction, false);
five.addEventListener('click', fiveFunction, false);
six.addEventListener('click', sixFunction, false);
seven.addEventListener('click', sevenFunction, false);
eight.addEventListener('click', eightFunction, false);
nine.addEventListener('click', nineFunction, false);
decimal.addEventListener('click', decimalFunction, false);
sign.addEventListener('click', signFunction, false);
equals.addEventListener('click', equalsFunction, false);
