Complex c1 = new Complex(2,5);  //c1=2+5i

void setup() {
  c1.plus(2,-2);    //plus c1  with = 2-2i
  c1.view();
  c1.minus(-4,-4);  //minus c1 with = -4-4i
  c1.view();
  c1.multiply(4);   //multiply c1 by 4 
  c1.view();
  c1.multiply(1,1);   //multiply c1 with = 1+1i 
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
    newop1 = operand1*op1-operand2*op2;   // (a+bi)(a1+bi) = a*a1+b1*b(i^2)
    newop2 = operand1*op2+ op1*operand2;  //                 +a*b1(i)+a1+bi
    operand2=newop2;
    operand1=newop1; 
  }
  void multiply(int op1){
    operand1 =operand1*op1;
    operand2 =operand2*op1;
  }
}
