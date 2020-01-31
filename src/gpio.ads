with Interfaces.C;
with Ada.Strings.Fixed;
with Ada.Text_IO;
with Ada.Integer_Text_IO;

package GPIO is
	procedure write
		(pin:in Integer;value: in Integer);
	
	
	function read
		(pin:in Integer) 
		return Integer;
end GPIO;