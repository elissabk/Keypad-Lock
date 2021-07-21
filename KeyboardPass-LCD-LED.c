//LCD-keybard
//enter password of 4 digits --> 4 stars
//if password is correct --> flashing LED with message

// LCD module connections
sbit LCD_RS at RB4_bit;    //or PORTB.RB4
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End LCD module connections

unsigned short Userpass[15], kp;
//Keypad module connections

char keypadPort at PORTD;   //used for keypad initialization
//end keypad module connections

char i;
char message[]="Elec402 KeyLock";
char pass[4]={'1','4','2','5'};

void code_enter(){
      kp=0;             //reset key code variable

      //wait for the key to be pressed and released
      do{
           kp=Keypad_Key_Click();       //store key code in kp variable
      }while(!kp);

      //prepare value for output, transform key into it's ASCI value
      switch(kp){
           case 1: kp=49; break; //1          //or if we don't know the ASCII code we can write kp='1'
           case 2: kp=50; break; //2
           case 3: kp=51; break; //3
           case 4: kp=65; break; //A
           case 5: kp=52; break; //4
           case 6: kp=53; break; //5
           case 7: kp=54; break; //6
           case 8: kp=66; break; //B
           case 9: kp=55; break; //7
           case 10: kp=56; break; //8
           case 11: kp=57; break; //9
           case 12: kp=67; break; //C
           case 13: kp=42; break; //*
           case 14: kp=48; break; //0
           case 15: kp=35; break; //#
           case 16: kp=68; break; //D
      }
      Userpass[i]=kp;
      Lcd_Chr(2,i+1,'*');
      i++;
}

void main() {
     ANSEL = 0;    //configure AN pins as digital
     ANSELH = 0;
     C1ON_bit = 0; //disable comparators
     C2ON_bit = 0;

     TRISE.F0=0; PORTE.F0=0;

     Keypad_Init();         //Initializes port for working with the keyboard
     Lcd_Init();            //Initilize LCD

     Lcd_Cmd(_LCD_CLEAR);          //Clear display
     Lcd_Cmd(_LCD_CURSOR_OFF);     //Cursor off
     Lcd_Out(1,1,message);         //write text in the first row
     Delay_ms(1500);                //give it time to initialize because the controller might be faster

     do{
        Lcd_Cmd(_LCD_Clear);
        Lcd_Out(1,1,"Enter Password:");
        
        i=0;
        
        do{
           code_enter();
           Delay_ms(100);
        }while(i<5);

     if(Userpass[0]==pass[0] && Userpass[1]==pass[1] && Userpass[2]==pass[2] && Userpass[3]==pass[3] && Userpass[4]=='#'){         //
        Lcd_Cmd(_LCD_CLEAR);        //LCD Clear
        Lcd_Out(1,4,"Door Open");        //Door Open
        PORTE.F0=1;
        Delay_ms(2000);
        
        PORTE.F0=0;
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_Out(1,4,"Door Closed");
        Delay_ms(2000);
     }
     Userpass[0]=0; Userpass[1]=0;
     Userpass[2]=0; Userpass[3]=0;
     Userpass[4]=0;
     
     }while(1);
}