numplot = 5;            % Number of Subplots
factor = 1000;          % to convert to milli

figure;
    subplot(numplot,1,1)
        plot(out.i_f,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Current ','of System ');
        title(plottitle)
        legend('If (A)','Location','SouthEast')
        ylabel('Field Current: If (Amp)');
        xlabel('time (s)');

    subplot(numplot,1,2)
        plot(out.i_a,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Current ','of System ');
        title(plottitle)
        legend('Ia (A)','Location','SouthEast')
        ylabel('Armature Current: Ia (Amp)');
        xlabel('time (s)');

    subplot(numplot,1,3)
        plot(out.omega,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot speed ','of System ');
        title(plottitle)
        legend('w (rad/s)','Location','SouthEast')
        ylabel('Omega (rad/sec)');
        xlabel('time (s)');
        
    subplot(numplot,1,4)
        plot(out.TE,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Electric Torque ','of System ');
        title(plottitle)
        legend('TE (Nm)','Location','SouthEast')
        ylabel('Electric Torque (Nm)');
        xlabel('time (s)');
    
    subplot(numplot,1,5)
        plot(out.TL,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Load Torque ','of System ');
        title(plottitle)
        legend('TL (Nm)','Location','SouthEast')
        ylabel('Load Torque (Nm)');
        xlabel('time (s)');

findfigs