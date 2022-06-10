function bisec_output = bisec(sub_thresh,sup_thresh,accuracy)

global amp1

while (sup_thresh-sub_thresh> accuracy)
   amp1 = (sub_thresh + sup_thresh) / 2;
   
   check_temp = hhmplot(0,50,1);

   if check_temp < 0
       sub_thresh = amp1;
    
   elseif check_temp > 0
       sup_thresh = amp1;
   end
   
   disp('When ampliude = '+string(amp1)+'-->'+string(check_temp))

end
bisec_output = amp1;
