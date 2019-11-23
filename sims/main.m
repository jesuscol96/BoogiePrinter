%Main file: calls and control all other files execution
clear; close all;
disp('Bienvenido la simulación de Boogie Printer');

%Running other files dependecies 
boogie_definitions;


%Options for user to choose
con=true;
while (con)
    x=input(['Bienvenidos a DracoBot, ¿Qué desea hacer?:\n'...
            '1 = Cinemática \n'...
            '2 = Dinámica \n'...
            'Otro = Finalizar\n'...
             '>']);
    switch (x)
        case(1)
            figure();
            title('Boogie Printer Kinematics')
            boogie.teach()
            xlim([-0.4 0.4])
            ylim([-0.4 0.4])
            zlim([0 0.4])

       

        otherwise        
            con=false;
    end
    if(con ~= false)    
        con=input('Continuar? (Si = 1, no = 0):');   
    end
end



