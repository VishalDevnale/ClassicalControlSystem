v = VideoWriter('exp3Video.mp4');
open(v);

for i=1:size(out.tout, 1)/5
    DrawCartPendulumSys(out.states.Data(i*5,:));
    frame = getframe(gcf);
    writeVideo(v,frame);
end

close(v)