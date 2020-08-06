numplot = 3;            % Number of Subplots
factor = 1000;          % to convert to milli

figure;
    subplot(numplot,1,1)
        plot(out.i_f,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Current ','of System ');
        title(plottitle)
        legend('If (A)','Location','SouthEast')

    subplot(numplot,1,2)
        plot(out.i_a,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Current ','of System ');
        title(plottitle)
        legend('Ia (A)','Location','SouthEast')

    subplot(numplot,1,3)
        plot(out.omega,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot speed ','of System ');
        title(plottitle)
        legend('w (rad/s)','Location','SouthEast')

findfigs