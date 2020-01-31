With GPIO;
WIth Ada.Integer_Text_IO;

procedure Main is
   begin
    	while True loop
     	   GPIO.write(26,1);
      	   delay 1.0;
	   GPIO.write(26,0);
	   delay 1.0;
    	end loop;
end Main;