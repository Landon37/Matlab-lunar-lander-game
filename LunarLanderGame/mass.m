function [m]=mass
global time m_crnt crnt_fuel_for_descent thrtl_prcnt out_of_fuel
    total_starting_mass=16400; %kg
    total_fuel_for_descent=8212; %kg
    max_thrust=45040; %Newtons
   
    thrtl=thrtl_prcnt/100; 
    crnt_thrust=max_thrust*thrtl; %Newtons
    fuel_use=3050.91; %N*s/kg
    amount_fuel_brnd=(crnt_thrust*time*1)/(fuel_use); %kg
    crnt_fuel_for_descent=crnt_fuel_for_descent-amount_fuel_brnd;
    if crnt_fuel_for_descent <= 0
        m_crnt=total_starting_mass-total_fuel_for_descent;
        thrtl_prcnt=0;
        out_of_fuel=true;
        m=total_starting_mass-total_fuel_for_descent;
    else
        m_crnt=m_crnt-amount_fuel_brnd;
        m=m_crnt;
    end
end
    