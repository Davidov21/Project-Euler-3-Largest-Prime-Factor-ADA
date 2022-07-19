with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   numm : Long_Long_Integer := 600851475143;
   newnumm : Long_Long_Integer := numm;
   largestFact : Long_Long_Integer := 0;
   counter : Long_Long_Integer := 2;



begin

   while counter*counter <= newnumm loop

      if ((newnumm mod counter) = 0) then

         newnumm := newnumm / counter;
         largestFact := counter;

      else
         counter := counter +1;

      end if;

   end loop;

   if (newnumm > largestFact) then
      largestFact := newnumm;
   end if;

   Put_Line (Long_Long_Integer'Image(largestFact));

end Main;
