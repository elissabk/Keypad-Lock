
_code_enter:

;TPclavierPass.c,29 :: 		void code_enter(){
;TPclavierPass.c,30 :: 		kp=0;             //reset key code variable
	CLRF       _kp+0
;TPclavierPass.c,33 :: 		do{
L_code_enter0:
;TPclavierPass.c,34 :: 		kp=Keypad_Key_Click();       //store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;TPclavierPass.c,35 :: 		}while(!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter0
;TPclavierPass.c,38 :: 		switch(kp){
	GOTO       L_code_enter3
;TPclavierPass.c,39 :: 		case 1: kp=49; break; //1          //or if we don't know the ASCII code we can write kp='1'
L_code_enter5:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,40 :: 		case 2: kp=50; break; //2
L_code_enter6:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,41 :: 		case 3: kp=51; break; //3
L_code_enter7:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,42 :: 		case 4: kp=65; break; //A
L_code_enter8:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,43 :: 		case 5: kp=52; break; //4
L_code_enter9:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,44 :: 		case 6: kp=53; break; //5
L_code_enter10:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,45 :: 		case 7: kp=54; break; //6
L_code_enter11:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,46 :: 		case 8: kp=66; break; //B
L_code_enter12:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,47 :: 		case 9: kp=55; break; //7
L_code_enter13:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,48 :: 		case 10: kp=56; break; //8
L_code_enter14:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,49 :: 		case 11: kp=57; break; //9
L_code_enter15:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,50 :: 		case 12: kp=67; break; //C
L_code_enter16:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,51 :: 		case 13: kp=42; break; //*
L_code_enter17:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,52 :: 		case 14: kp=48; break; //0
L_code_enter18:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,53 :: 		case 15: kp=35; break; //#
L_code_enter19:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,54 :: 		case 16: kp=68; break; //D
L_code_enter20:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_code_enter4
;TPclavierPass.c,55 :: 		}
L_code_enter3:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter5
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter6
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter7
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter8
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter9
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter10
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter11
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter12
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter13
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter14
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter15
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter16
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter17
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter18
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter19
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter20
L_code_enter4:
;TPclavierPass.c,56 :: 		Userpass[i]=kp;
	MOVF       _i+0, 0
	ADDLW      _Userpass+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
;TPclavierPass.c,57 :: 		Lcd_Chr(2,i+1,'*');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;TPclavierPass.c,58 :: 		i++;
	INCF       _i+0, 1
;TPclavierPass.c,59 :: 		}
L_end_code_enter:
	RETURN
; end of _code_enter

_main:

;TPclavierPass.c,61 :: 		void main() {
;TPclavierPass.c,62 :: 		ANSEL = 0;    //configure AN pins as digital
	CLRF       ANSEL+0
;TPclavierPass.c,63 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;TPclavierPass.c,64 :: 		C1ON_bit = 0; //disable comparators
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;TPclavierPass.c,65 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;TPclavierPass.c,67 :: 		TRISE.F0=0; PORTE.F0=0;
	BCF        TRISE+0, 0
	BCF        PORTE+0, 0
;TPclavierPass.c,69 :: 		Keypad_Init();         //Initializes port for working with the keyboard
	CALL       _Keypad_Init+0
;TPclavierPass.c,70 :: 		Lcd_Init();            //Initilize LCD
	CALL       _Lcd_Init+0
;TPclavierPass.c,72 :: 		Lcd_Cmd(_LCD_CLEAR);          //Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TPclavierPass.c,73 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);     //Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TPclavierPass.c,74 :: 		Lcd_Out(1,1,message);         //write text in the first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _message+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;TPclavierPass.c,75 :: 		Delay_ms(1500);                //give it time to initialize because the controller might be faster
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;TPclavierPass.c,77 :: 		do{
L_main22:
;TPclavierPass.c,78 :: 		Lcd_Cmd(_LCD_Clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TPclavierPass.c,79 :: 		Lcd_Out(1,1,"Enter Password:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_TPclavierPass+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;TPclavierPass.c,81 :: 		i=0;
	CLRF       _i+0
;TPclavierPass.c,83 :: 		do{
L_main25:
;TPclavierPass.c,84 :: 		code_enter();
	CALL       _code_enter+0
;TPclavierPass.c,85 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
;TPclavierPass.c,86 :: 		}while(i<5);
	MOVLW      5
	SUBWF      _i+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main25
;TPclavierPass.c,88 :: 		if(Userpass[0]==pass[0] && Userpass[1]==pass[1] && Userpass[2]==pass[2] && Userpass[3]==pass[3] && Userpass[4]=='#'){         //
	MOVF       _Userpass+0, 0
	XORWF      _pass+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main31
	MOVF       _Userpass+1, 0
	XORWF      _pass+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main31
	MOVF       _Userpass+2, 0
	XORWF      _pass+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main31
	MOVF       _Userpass+3, 0
	XORWF      _pass+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main31
	MOVF       _Userpass+4, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main31
L__main34:
;TPclavierPass.c,89 :: 		Lcd_Cmd(_LCD_CLEAR);        //LCD Clear
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TPclavierPass.c,90 :: 		Lcd_Out(1,4,"Door Open");        //Door Open
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_TPclavierPass+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;TPclavierPass.c,91 :: 		PORTE.F0=1;
	BSF        PORTE+0, 0
;TPclavierPass.c,92 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
;TPclavierPass.c,94 :: 		PORTE.F0=0;
	BCF        PORTE+0, 0
;TPclavierPass.c,95 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TPclavierPass.c,96 :: 		Lcd_Out(1,4,"Door Closed");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_TPclavierPass+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;TPclavierPass.c,97 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	DECFSZ     R11+0, 1
	GOTO       L_main33
	NOP
;TPclavierPass.c,98 :: 		}
L_main31:
;TPclavierPass.c,99 :: 		Userpass[0]=0; Userpass[1]=0;
	CLRF       _Userpass+0
	CLRF       _Userpass+1
;TPclavierPass.c,100 :: 		Userpass[2]=0; Userpass[3]=0;
	CLRF       _Userpass+2
	CLRF       _Userpass+3
;TPclavierPass.c,101 :: 		Userpass[4]=0;
	CLRF       _Userpass+4
;TPclavierPass.c,103 :: 		}while(1);
	GOTO       L_main22
;TPclavierPass.c,104 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
