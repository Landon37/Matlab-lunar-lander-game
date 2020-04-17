function LunarLanderKeyDownListener(src,event)
global Th thrtl_prcnt quitGame
    val = event.Key;
    switch val
     case 'escape'
        quitGame = 1;
     case 'leftarrow' %Rotate left
        if Th <= 2*pi
            Th = Th-.1;
        else
            Th = 0;
        end
     case 'rightarrow' %Rotate right
        if Th >= -2*pi
         Th = Th+.1;
        else
            Th = 0;
        end
     case 'shift' %Throttle up
         if thrtl_prcnt <= 100
            thrtl_prcnt=thrtl_prcnt+1.5;
         else 
             thrtl_prcnt=100;
         end
     case 'control' %Throttle Down
         if thrtl_prcnt >= 0
            thrtl_prcnt=thrtl_prcnt-1.5;
         else
             thrtl_prcnt=0;
         end
     case 'x' %Throttle off
         thrtl_prcnt=0;
     case 'z' %Throttle max
          thrtl_prcnt=100;  
            
     otherwise
          val
   end
end