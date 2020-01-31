with Interfaces.C;
with Ada.Strings.Fixed;
with Ada.Text_IO;
with Ada.Integer_Text_IO;
with GNAT.Expect;
with Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;

package body i2c is
    R,V1: Integer;
    W1: String:="i2cset -y -a 1 0x5d 0x12 0x01";
    W2: String:="i2cset -y -a 1 0x5d 0x13 0x01";
    W3: String:="i2cset -y -a 1 0x5d 0x14 0x9";
    
    R1: String:="i2cget -y -a 1 0x5d 0x19";
    R2: String:="i2cget -y -a 1 0x5d 0x1A";
    R3: String:="i2cget -y -a 1 0x5d 0x1B";
    R4: String:="i2cget -y -a 1 0x5d 0x1C";

    procedure write is
        function System (Cmd : String) return Integer is
            function C_System (S : Interfaces.C.char_array) return Integer;
        pragma Import (C, C_System, "system");
        begin
            return C_System (Interfaces.C.To_C (Cmd));        
        end System;
        pragma Inline (System);
    begin
    R := System (W1);
    DELAY 0.5;
    R := System (W2);
    R := System (W3);
    end write;
    
    procedure read  is
          function System (Cmd : String) return Integer is
            function C_System (S : Interfaces.C.char_array) return Integer;
        pragma Import (C, C_System, "system");
        begin
            return C_System (Interfaces.C.To_C (Cmd));        
        end System;
        pragma Inline (System);
	Com: String:="sudo chmod +x i2c.sh && ./i2c.sh";
    begin
    V1 := System (Com);
    end read;

end i2c;