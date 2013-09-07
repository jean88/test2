import 'dart:html';
import 'dart:math';


int rabbitCount = 0; 
const int NO_YEARS = 10; 
const int GROWTH_FACTOR = 15;


void main() {
  query("#submit").onClick.listen(calcRabbits);
}
calcRabbits(e) {
  // binding variables to html elements:
  InputElement yearsInput  = query("#years");
  LabelElement output = query("#output");

  // getting input

  String yearsString = yearsInput.value;
  int years = int.parse(yearsString);  

  // calculating and setting output:

  output.innerHtml = "${calculateRabbits(years)}";
}
int calculateRabbits(int years) { 

  return (2 * pow(E, log(GROWTH_FACTOR) *  years)).round().toInt();

}
