%VALORES HUERISTICOS SEGUN EL PAPER
%NOTA : los valores cuya definicion se encuentre en minuscula 
%se utiliza para generar de manera dinamica con programacion 
%la variable final que se utiliza en el programa.
%De manera que si llegara a ser necesario solo se modificarian las variables iniciales

%VARIABLES INICIALES ========================================

p1 = 1 * (10^8);
p2 = 1 * (10^2);
p3 = 1 * (10^8);
p4 = 1 * (10^2);
p5 = 1 * (10^2);
p6 = 1 * (10^2);
p7 = 1 * (10^2);

r1 = 1 * (10^4);
r2 = 5 * (10^4);
r3 = 1 * (10^4);
r4 = 1 * (10^1);
r5 = 1 * (10^1);
r6 = 1 * (10^3);
r7 = 1 * (10^3);

q1 = 5 * (10^5);
q2 = 5 * (10^5);
q3 = 5 * (10^5);
q4 = 1 * (10^1);
q5 = 1 * (10^1);
q6 = 1 * (10^3);
q7 = 1 * (10^3);

G1 = 0.00001;
G2 = 0.00001;

%VALOREES INICIALES DE LOS PESOS USADOS EN EKF

%PESOS DE W1
W11 = 0.1;
W12 = 0.1;
%PESOS DE W2
W21 = 0.1;
W22 = 0.1;
%PESOS DE W3
W31 = 0.1;
W32 = 0.1;
%PESOS DE W4
W41 = 0.1;
W42 = 0.1;
W43 = 0.1;
W44 = 0.1;
%PESOS DE W5
W51 = 0.1;
W52 = 0.1;
W53 = 0.1;
W54 = 0.1;
%PESOS DE W6
W61 = 0.1;
W62 = 0.1;
W63 = 0.1;
W64 = 0.1;
%PESOS DE W7
W71 = 0.1;
W72 = 0.1;
W73 = 0.1;
W74 = 0.1;

%VALOR DE LAS SIGMOIDALES SUAVES
B = 2 * exp(-3);    %Este valor debe ser mayor a cero pero en base a mis observaciones menor a 1.
FO = 0.83;   %Este valor es obtenido de la tesis de la Dra Alma debe ser CERCANO y MENOR a 1, si este se vuelve 1 funcionara como FKE unicamente


%VARIABLES FINALES ========================================

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 1
W1 = [W11; W12]; %VALOR INICIAL de Vector de pesos para x1
P1 = diag([p1, p1]); %VALOR INICIAL de Matriz diagonal inicial de P1
R1 = r1; % Valor de R1
Q1 = diag([q1, q1]); % Valor de Q1 

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 2
W2 = [W21; W22]; %VALOR INICIAL de Vector de pesos para x2
P2 = diag([p2, p2]); %VALOR INICIAL de Matriz diagonal inicial de P2
R2 = r2; % Valor de R2
Q2 = diag([q2, q2]); % Valor de Q2 

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 3
W3 = [W31; W32]; %VALOR INICIAL de Vector de pesos para x3
P3 = diag([p3, p3]); %VALOR INICIAL de Matriz diagonal inicial de P3
R3 = r3; % Valor de R3
Q3 = diag([q3, q3]); % Valor de Q3 

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 4
W4 = [W41; W42; W43; W44]; %VALOR INICIAL de Vector de pesos para x4
P4 = diag([p4, p4, p4, p4]); %VALOR INICIAL de Matriz diagonal inicial de P4
R4 = r4; % Valor de R4
Q4 = diag([q4, q4, q4, q4]); % Valor de Q4 

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 5
W5 = [W51; W52; W53; W54]; %VALOR INICIAL de Vector de pesos para x5
P5 = diag([p5, p5, p5, p5]); %VALOR INICIAL de Matriz diagonal inicial de P5
R5 = r5; % Valor de R5
Q5 = diag([q5, q5, q5, q5]); % Valor de Q5 

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 6
W6 = [W61; W62; W63; W64]; %VALOR INICIAL de Vector de pesos para x6
P6 = diag([p6, p6, p6, p6]); %VALOR INICIAL de Matriz diagonal inicial de P6
R6 = r6; % Valor de R6
Q6 = diag([q6, q6, q6, q6]); % Valor de Q6

%PARAMETROS DE ENTRENAMIENTO EKF PARA RHONN 7
W7 = [W71; W72; W73; W74]; %VALOR INICIAL de Vector de pesos para x7
P7 = diag([p7, p7, p7, p7]); %VALOR INICIAL de Matriz diagonal inicial de P7
R7 = r7; % Valor de R7
Q7 = diag([q7, q7, q7, q7]); % Valor de Q7
