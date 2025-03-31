clear;
clc;
load T300.mat
T300 = TABLE;
load T325.mat
T325 = TABLE;
load T350.mat
T350 = TABLE;
load T375.mat
T375 = TABLE;
load T400.mat
T400 = TABLE;
% CO : 1-6, 12, 13, 18
c01 = [...
    T300(:,5) T300(:,6) ...
    T325(:,5) T325(:,6) ...
    T350(:,5) T350(:,6) ...
    T375(:,5) T375(:,6) ...
    T400(:,5) T400(:,6)];  
c02 = [...
    T300(:,7) T300(:,8) ...
    T325(:,7) T325(:,8) ...
    T350(:,7) T350(:,8) ...
    T375(:,7) T375(:,8) ...
    T400(:,7) T400(:,8)];  
c03 = [...
    T300(:,9) T300(:,10) ...
    T325(:,9) T325(:,10) ...
    T350(:,9) T350(:,10) ...
    T375(:,9) T375(:,10) ...
    T400(:,9) T400(:,10)];  
c04 = [...
    T300(:,11) T300(:,12) ...
    T325(:,11) T325(:,12) ...
    T350(:,11) T350(:,12) ...
    T375(:,11) T375(:,12) ...
    T400(:,11) T400(:,12)];  
c05 = [...
    T300(:,13) T300(:,14) ...
    T325(:,13) T325(:,14) ...
    T350(:,13) T350(:,14) ...
    T375(:,13) T375(:,14) ...
    T400(:,13) T400(:,14)];  
c06 = [...
    T300(:,15) T300(:,16) ...
    T325(:,15) T325(:,16) ...
    T350(:,15) T350(:,16) ...
    T375(:,15) T375(:,16) ...
    T400(:,15) T400(:,16)];  
c12 = [...
    T300(:,27) T300(:,28) ...
    T325(:,27) T325(:,28) ...
    T350(:,27) T350(:,28) ...
    T375(:,27) T375(:,28) ...
    T400(:,27) T400(:,28)]; 
c13 = [...
    T300(:,29) T300(:,30) ...
    T325(:,29) T325(:,30) ...
    T350(:,29) T350(:,30) ...
    T375(:,29) T375(:,30) ...
    T400(:,29) T400(:,30)]; 
c18 = [...
    T300(:,39) T300(:,40) ...
    T325(:,39) T325(:,40) ...
    T350(:,39) T350(:,40) ...
    T375(:,39) T375(:,40) ...
    T400(:,39) T400(:,40)];    
% DI: 7, 8, 17
c07 = [...
    T300(:,17) T300(:,18) ...
    T325(:,17) T325(:,18) ...
    T350(:,17) T350(:,18) ...
    T375(:,17) T375(:,18) ...
    T400(:,17) T400(:,18)];  
c08 = [...
    T300(:,19) T300(:,20) ...
    T325(:,19) T325(:,20) ...
    T350(:,19) T350(:,20) ...
    T375(:,19) T375(:,20) ...
    T400(:,19) T400(:,20)];  
c17 = [...
    T300(:,37) T300(:,38) ...
    T325(:,37) T325(:,38) ...
    T350(:,37) T350(:,38) ...
    T375(:,37) T375(:,38) ...
    T400(:,37) T400(:,38)];   
% DN: 9-11, 14-16, 19-21
c09 = [...
    T300(:,21) T300(:,22) ...
    T325(:,21) T325(:,22) ...
    T350(:,21) T350(:,22) ...
    T375(:,21) T375(:,22) ...
    T400(:,21) T400(:,22)];  
c10 = [...
    T300(:,23) T300(:,24) ...
    T325(:,23) T325(:,24) ...
    T350(:,23) T350(:,24) ...
    T375(:,23) T375(:,24) ...
    T400(:,23) T400(:,24)];  
c11 = [...
    T300(:,25) T300(:,26) ...
    T325(:,25) T325(:,26) ...
    T350(:,25) T350(:,26) ...
    T375(:,25) T375(:,26) ...
    T400(:,25) T400(:,26)];  
c14 = [...
    T300(:,31) T300(:,32) ...
    T325(:,31) T325(:,32) ...
    T350(:,31) T350(:,32) ...
    T375(:,31) T375(:,32) ...
    T400(:,31) T400(:,32)];  
c15 = [...
    T300(:,33) T300(:,34) ...
    T325(:,33) T325(:,34) ...
    T350(:,33) T350(:,34) ...
    T375(:,33) T375(:,34) ...
    T400(:,33) T400(:,34)];  
c16 = [...
    T300(:,35) T300(:,36) ...
    T325(:,35) T325(:,36) ...
    T350(:,35) T350(:,36) ...
    T375(:,35) T375(:,36) ...
    T400(:,35) T400(:,36)];  
c19 = [...
    T300(:,41) T300(:,42) ...
    T325(:,41) T325(:,42) ...
    T350(:,41) T350(:,42) ...
    T375(:,41) T375(:,42) ...
    T400(:,41) T400(:,42)];  
c20 = [...
    T300(:,43) T300(:,44) ...
    T325(:,43) T325(:,44) ...
    T350(:,43) T350(:,44) ...
    T375(:,43) T375(:,44) ...
    T400(:,43) T400(:,44)];  
c21 = [...
    T300(:,45) T300(:,46) ...
    T325(:,45) T325(:,46) ...
    T350(:,45) T350(:,46) ...
    T375(:,45) T375(:,46) ...
    T400(:,45) T400(:,46)];  
% IBF
cIBF = [...
    T300(:,1) T300(:,2) ...
    T325(:,1) T325(:,2) ...
    T350(:,1) T350(:,2) ...
    T375(:,1) T375(:,2) ...
    T400(:,1) T400(:,2)]; 
% NCTA 
cNCTA = [...
    T300(:,3) T300(:,4) ...
    T325(:,3) T325(:,4) ...
    T350(:,3) T350(:,4) ...
    T375(:,3) T375(:,4) ...
    T400(:,3) T400(:,4)];  
%Porosity
cV = [...
    T300(:,47) T300(:,48) ...
    T325(:,47) T325(:,48) ...
    T350(:,47) T350(:,48) ...
    T375(:,47) T375(:,48) ...
    T400(:,47) T400(:,48)];
% 
% CO : 1-6, 12, 13, 18
% CO_01 = figure;
% plot(c01(:,1), c01(:,2),'-k');
% hold on
% plot(c01(:,3), c01(:,4),'-r');
% plot(c01(:,5), c01(:,6),'-b');
% plot(c01(:,7), c01(:,8),'-g');
% plot(c01(:,9), c01(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_01,'CO_01.png','Resolution',600);
% hold off
% CO_02 = figure;
% plot(c02(:,1), c02(:,2),'-k');
% hold on
% plot(c02(:,3), c02(:,4),'-r');
% plot(c02(:,5), c02(:,6),'-b');
% plot(c02(:,7), c02(:,8),'-g');
% plot(c02(:,9), c02(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_02,'CO_02.png','Resolution',600);
% hold off
% CO_03 = figure;
% plot(c03(:,1), c03(:,2),'-k');
% hold on
% plot(c03(:,3), c03(:,4),'-r');
% plot(c03(:,5), c03(:,6),'-b');
% plot(c03(:,7), c03(:,8),'-g');
% plot(c03(:,9), c03(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_03,'CO_03.png','Resolution',600);
% hold off
% CO_04 = figure;
% plot(c04(:,1), c04(:,2),'-k');
% hold on
% plot(c04(:,3), c04(:,4),'-r');
% plot(c04(:,5), c04(:,6),'-b');
% plot(c04(:,7), c04(:,8),'-g');
% plot(c04(:,9), c04(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_04,'CO_04.png','Resolution',600);
% hold off
% CO_05 = figure;
% plot(c05(:,1), c05(:,2),'-k');
% hold on
% plot(c05(:,3), c05(:,4),'-r');
% plot(c05(:,5), c05(:,6),'-b');
% plot(c05(:,7), c05(:,8),'-g');
% plot(c05(:,9), c05(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_05,'CO_05.png','Resolution',600);
% hold off
% CO_06 = figure;
% plot(c06(:,1), c06(:,2),'-k');
% hold on
% plot(c06(:,3), c06(:,4),'-r');
% plot(c06(:,5), c06(:,6),'-b');
% plot(c06(:,7), c06(:,8),'-g');
% plot(c06(:,9), c06(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_06,'CO_06.png','Resolution',600);
% hold off
% CO_12 = figure;
% plot(c12(:,1), c12(:,2),'-k');
% hold on
% plot(c12(:,3), c12(:,4),'-r');
% plot(c12(:,5), c12(:,6),'-b');
% plot(c12(:,7), c12(:,8),'-g');
% plot(c12(:,9), c12(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_12,'CO_12.png','Resolution',600);
% hold off
% CO_13 = figure;
% plot(c13(:,1), c13(:,2),'-k');
% hold on
% plot(c13(:,3), c13(:,4),'-r');
% plot(c13(:,5), c13(:,6),'-b');
% plot(c13(:,7), c13(:,8),'-g');
% plot(c13(:,9), c13(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_13,'CO_13.png','Resolution',600);
% hold off
% CO_18 = figure;
% plot(c18(:,1), c18(:,2),'-k');
% hold on
% plot(c18(:,3), c18(:,4),'-r');
% plot(c18(:,5), c18(:,6),'-b');
% plot(c18(:,7), c18(:,8),'-g');
% plot(c18(:,9), c18(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(CO_18,'CO_18.png','Resolution',600);
% hold off
% % DI: 7, 8, 17
% DI_07 = figure;
% plot(c07(:,1), c07(:,2),'-k');
% hold on
% plot(c07(:,3), c07(:,4),'-r');
% plot(c07(:,5), c07(:,6),'-b');
% plot(c07(:,7), c07(:,8),'-g');
% plot(c07(:,9), c07(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DI_07,'DI_07.png','Resolution',600);
% hold off 
% DI_08 = figure;
% plot(c08(:,1), c08(:,2),'-k');
% hold on
% plot(c08(:,3), c08(:,4),'-r');
% plot(c08(:,5), c08(:,6),'-b');
% plot(c08(:,7), c08(:,8),'-g');
% plot(c08(:,9), c08(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DI_08,'DI_08.png','Resolution',600);
% hold off 
% DI_17 = figure;
% plot(c17(:,1), c17(:,2),'-k');
% hold on
% plot(c17(:,3), c17(:,4),'-r');
% plot(c17(:,5), c17(:,6),'-b');
% plot(c17(:,7), c17(:,8),'-g');
% plot(c17(:,9), c17(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DI_17,'DI_17.png','Resolution',600);
% hold off  
% % DN: 9-11, 14-16, 19-21
% DN_09 = figure;
% plot(c09(:,1), c09(:,2),'-k');
% hold on
% plot(c09(:,3), c09(:,4),'-r');
% plot(c09(:,5), c09(:,6),'-b');
% plot(c09(:,7), c09(:,8),'-g');
% plot(c09(:,9), c09(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_09,'DN_09.png','Resolution',600);
% hold off 
% DN_10 = figure;
% plot(c10(:,1), c10(:,2),'-k');
% hold on
% plot(c10(:,3), c10(:,4),'-r');
% plot(c10(:,5), c10(:,6),'-b');
% plot(c10(:,7), c10(:,8),'-g');
% plot(c10(:,9), c10(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_10,'DN_10.png','Resolution',600);
% hold off  
% DN_11 = figure;
% plot(c11(:,1), c11(:,2),'-k');
% hold on
% plot(c11(:,3), c11(:,4),'-r');
% plot(c11(:,5), c11(:,6),'-b');
% plot(c11(:,7), c11(:,8),'-g');
% plot(c11(:,9), c11(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_11,'DN_11.png','Resolution',600);
% hold off  
% DN_14 = figure;
% plot(c14(:,1), c14(:,2),'-k');
% hold on
% plot(c14(:,3), c14(:,4),'-r');
% plot(c14(:,5), c14(:,6),'-b');
% plot(c14(:,7), c14(:,8),'-g');
% plot(c14(:,9), c14(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_14,'DN_14.png','Resolution',600);
% hold off  
% DN_15 = figure;
% plot(c15(:,1), c15(:,2),'-k');
% hold on
% plot(c15(:,3), c15(:,4),'-r');
% plot(c15(:,5), c15(:,6),'-b');
% plot(c15(:,7), c15(:,8),'-g');
% plot(c15(:,9), c15(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_15,'DN_15.png','Resolution',600);
% hold off   
% DN_16 = figure;
% plot(c16(:,1), c16(:,2),'-k');
% hold on
% plot(c16(:,3), c16(:,4),'-r');
% plot(c16(:,5), c16(:,6),'-b');
% plot(c16(:,7), c16(:,8),'-g');
% plot(c16(:,9), c16(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_16,'DN_16.png','Resolution',600);
% hold off
% DN_19 = figure;
% plot(c19(:,1), c19(:,2),'-k');
% hold on
% plot(c19(:,3), c19(:,4),'-r');
% plot(c19(:,5), c19(:,6),'-b');
% plot(c19(:,7), c19(:,8),'-g');
% plot(c19(:,9), c19(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_19,'DN_19.png','Resolution',600);
% hold off  
% DN_20 = figure;
% plot(c20(:,1), c20(:,2),'-k');
% hold on
% plot(c20(:,3), c20(:,4),'-r');
% plot(c20(:,5), c20(:,6),'-b');
% plot(c20(:,7), c20(:,8),'-g');
% plot(c20(:,9), c20(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_20,'DN_20.png','Resolution',600);
% hold off 
% DN_21 = figure;
% plot(c21(:,1), c21(:,2),'-k');
% hold on
% plot(c21(:,3), c21(:,4),'-r');
% plot(c21(:,5), c21(:,6),'-b');
% plot(c21(:,7), c21(:,8),'-g');
% plot(c21(:,9), c21(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(DN_21,'DN_21.png','Resolution',600);
% hold off 
% % IBF
% IBF = figure;
% plot(cIBF(:,1), cIBF(:,2),'-k');
% hold on
% plot(cIBF(:,3), cIBF(:,4),'-r');
% plot(cIBF(:,5), cIBF(:,6),'-b');
% plot(cIBF(:,7), cIBF(:,8),'-g');
% plot(cIBF(:,9), cIBF(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(IBF,'IBF.png','Resolution',600);
% hold off
% % NCTA 
% NCTA = figure;
% plot(cNCTA(:,1), cNCTA(:,2),'-k');
% hold on
% plot(cNCTA(:,3), cNCTA(:,4),'-r');
% plot(cNCTA(:,5), cNCTA(:,6),'-b');
% plot(cNCTA(:,7), cNCTA(:,8),'-g');
% plot(cNCTA(:,9), cNCTA(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(NCTA,'NCTA.png','Resolution',600);
% hold off
% %Porosity
% V = figure;
% plot(cV(:,1), cV(:,2),'-k');
% hold on
% plot(cV(:,3), cV(:,4),'-r');
% plot(cV(:,5), cV(:,6),'-b');
% plot(cV(:,7), cV(:,8),'-g');
% plot(cV(:,9), cV(:,10),'-m');
% xlabel('time');
% ylabel('concentration');
% legend('T = 300K', 'T = 325K', 'T = 350K', 'T = 375K', 'T = 400K');
% exportgraphics(V,'V.png','Resolution',600);
% hold off