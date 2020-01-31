with Interfaces.C;
with Ada.Strings.Fixed;
with Ada.Text_IO;
with Ada.Integer_Text_IO;

package body GPIO is
    State : Integer;
    GPIO : Integer;
    
    Su: String := "sudo ";
    Pre1: String:="echo ";
    Post1: String:=" > /sys/class/gpio/export";
    PreO2: String:="echo out > /sys/class/gpio/gpio";
    PreI2: String:="echo in > /sys/class/gpio/gpio";
    Post2: String:="/direction";
    Pre3: String:=" > /sys/class/gpio/gpio";
    Post3: String:="/value";
    Pre4: String:= "cat /sys/class/gpio/gpio";
    Post4: String:= "/value";


    procedure write(pin:in Integer;value: in Integer) is
        function System (Cmd : String) return Integer is
            function C_System (S : Interfaces.C.char_array) return Integer;
        pragma Import (C, C_System, "system");
        begin
            return C_System (Interfaces.C.To_C (Cmd));        
        end System;
        pragma Inline (System);
        Result : Integer;
	GPIO: Integer := pin;
        State: Integer:= value;
	homeC: String:="cd ~";
	classC: String:= "cd /sys/class/gpio";
	exportC : String := Su & Pre1 & Ada.Strings.Fixed.Trim(Integer'Image(GPIO), Ada.Strings.Left) & Post1;
	directionC : String := Su & PreO2 & Ada.Strings.Fixed.Trim(Integer'Image(GPIO), Ada.Strings.Left) & Post2;
	valueC : String := Su & Pre1 & Ada.Strings.Fixed.Trim(Integer'Image(State), Ada.Strings.Left) & Pre3 & Ada.Strings.Fixed.Trim(Integer'Image(GPIO), Ada.Strings.Left) &Post3;
    begin
    Result := System (homeC);
    Result := System (classC);
    Result := System (exportC);
    Result := System (directionC);
    Result := System (valueC);
    end write;
    
    function read(pin:in Integer) return Integer is
        function System (Cmd : String) return Integer is
            function C_System (S : Interfaces.C.char_array) return Integer;
        pragma Import (C, C_System, "system");
        begin
            return C_System (Interfaces.C.To_C (Cmd));        
        end System;
        pragma Inline (System);
        Result : Integer;
	GPIO: Integer := pin;
	homeC: String:="cd ~";
	classC: String:= "cd /sys/class/gpio";
	exportC : String := Su & Pre1 & Ada.Strings.Fixed.Trim(Integer'Image(GPIO), Ada.Strings.Left) & Post1;
	directionC : String := Su & PreI2 & Ada.Strings.Fixed.Trim(Integer'Image(GPIO), Ada.Strings.Left) & Post2;
	valueC : String := Su & Pre4 & Ada.Strings.Fixed.Trim(Integer'Image(GPIO), Ada.Strings.Left) &Post4;
    begin
    Result := System (homeC);
    Result := System (classC);
    Result := System (exportC);
    Result := System (directionC);
    Result := System (valueC);
    return Result; 
    end read;

end GPIO;