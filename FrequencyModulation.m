% Frequency modulation
% Author HuangLingxiao Dec 12th 2018
% Purpose : Project work
% Reference : https://www.youtube.com/watch?v=NZUO2mn1ZqU Youtube video
%             https://portal.vamk.fi/mod/folder/view.php?id=340851  Gaochao's amModulation.m

t = 0:0.0001:1; % time interval
am = 1; % amplitude(voltage) of message signal
fm = 6; % frequency of message signal
m = am*cos(2*pi*fm*t);  %message signal
subplot(3,1,1)
plot(t,m,'k')
title('Modulating signal')
ylabel('Amplitude')

kf = 2; % frequency sensitivity factor
ac = 1; % amplitude pf carrier signal
fc = 40; % frequency of carrier signal
c = am*sin(2*pi*fc*t); % carrier signal
subplot(3,1,2)
plot(t,c,'k')
title('Carrier signal')
ylabel('Amplitude')

s = ac*sin((2*pi*fc*t)+((kf/am)*m)); % frequency modulation signal
subplot(3,1,3)
plot(t,s,'k')
xlabel('time'); ylabel('Amplitude');
title('Frequency Modulation')
legend('e_{fm}(t)');