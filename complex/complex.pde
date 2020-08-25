Complex c1 = new Complex(1,1);
void setup() {
  c1.plus(2,-2);
  c1.view();
  c1.minus(-4,-4);
  c1.view();
  c1.multiply(4);
  c1.view();
}
class Complex {
  int operand1; 
  int operand2; 
  Complex(int op1, int op2) {
    this.operand1=op1;
    this.operand2=op2; 
  }
  void view(){
    if (operand2 >0 ) {
        println(operand1,"+",operand2,"i");
    }
    else {
      println(operand1,operand2,"i");
    }
  }
  void plus(int op1,int op2 ){
    operand1=operand1+op1; 
    operand2=operand2+op2;
  }
  void minus(int op1, int op2){
    operand1=operand1-op1;
    operand2=operand2-op2; 
  }
  void multiply(int op1,int op2){
    int newop1,newop2;
    newop1 = operand1*op1-operand2*op2; 
    newop2 = operand1*op2+ op2*operand2;
    operand2=newop2;
    operand1=newop1; 
  }
  void multiply(int op1){
    operand1 =operand1*op1;
    operand2 =operand2*op1;
  }
}
