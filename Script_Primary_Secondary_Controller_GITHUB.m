% GRID FORMING CONVERTER WITH 4DGs USING PRIMARY AND SECOND CONTROLLER
% ANDRES INTRIAGO, HARRYS KONSTANTINOU, FRANCESCO LIBERATI and SYED RIZVI





%% VALUES
w_ref= 2*pi*50; %reference value for the angular frequency
v_ref= 1; %reference value for the output voltage magnitude, per unit.
w_base= 2*pi*50; %nominal angular frequency




%% SECONDARY CONTROLLER

A_matrix= [0 0 0 0; 1 0 0 0; 0 1 0 0; 0 0 1 0]; %associated adjacency matrix
g_pinning_gain= [1;0;0;0]; %pinning gain vector

%% alpha calculator
kp= 285; %proportional constant for the alpha calculator block
ki= 142500; %integral constant for the alpha calculator block

%% DISTRIBUTED GENERATOR #1 VCVSI 

R_ci_1DG= 0.03; %resistance for output connector
L_ci_1DG= 0.35*10^-3; %inductance for output connector
R_fi_1DG= 0.1; %resistance for filter LC
L_fi_1DG= 1.35*10^-3; %inductance for filter LC
C_fi_1DG= 50*10^-6; %capacitor for filter LC
wci_1DG= 31.41; %cut-off frequency for DG 1
f_1DG= 50; %frequency 
w_base_1DG= 2*pi*f_1DG; %nominal angular frequency for DG 1
m_P_1DG= 9.4*10^-5; % active power droop coefficient
n_Q_1DG= 1.3*10^-3; % reactive power droop coefficient
Kpv_1DG= 0.1; % Kp constant for PI controller voltage loop
Kiv_1DG= 420; % Ki constant for PI controller voltage loop
Kff_i_1DG= 0.75; %Current Compensator for DG 1
Kpi_1DG= 15; % Kp constant for PI controller current loop
Kii_1DG= 20000; % Ki constant for PI controller current loop
Ts_1DG= 2e-6; % Sample Time for DG 1

%% LINE IMPEDANCES 

R_line_1= 0.23;
L_line_1= 318*10^-6;

R_line_2= 0.35;
L_line_2= 1847*10^-6;

R_line_3= 0.23;
L_line_3= 318*10^-6;




%% LOADS
f= 50;

R_load_1= 30;
X_load_1= 15;
L_load_1= (X_load_1)/(2*pi*f);

R_load_2= 20;
X_load_2= 10;
L_load_2= (X_load_2)/(2*pi*f);

R_load_3= 25;
X_load_3= 10;
L_load_3= (X_load_3)/(2*pi*f);

R_load_4= 25;
X_load_4= 15;
L_load_4= (X_load_4)/(2*pi*f);

%% DISTRIBUTED GENERATOR #2 VCVSI 

R_ci_2DG= 0.03; %resistance for output connector
L_ci_2DG= 0.35*10^-3; %inductance for output connector
R_fi_2DG= 0.1; %resistance for filter LC
L_fi_2DG= 1.35*10^-3; %inductance for filter LC
C_fi_2DG= 50*10^-6; %capacitor for filter LC
m_P_2DG= 9.4*10^-5; % active power droop coefficient
n_Q_2DG= 1.3*10^-3; % reactive power droop coefficient
Kpv_2DG= 0.1; % Kp constant for PI controller voltage loop
Kiv_2DG= 420; % Ki constant for PI controller voltage loop
Kpi_2DG= 15; % Kp constant for PI controller current loop
Kii_2DG= 20000; % Ki constant for PI controller current loop
Ts_2DG= 2e-6; % Sample Time for DG 2
wci_2DG= 31.41; %cut-off frequency for DG 2
f_2DG= 50; %frequency 
w_base_2DG= 2*pi*f_2DG; %nominal angular frequency for DG 2
Kff_i_2DG= 0.75; %Current Compensator for DG 2

%% DISTRIBUTED GENERATOR #3 VCVSI 
R_ci_3DG= 0.03; %resistance for output connector
L_ci_3DG= 0.35*10^-3; %inductance for output connector
R_fi_3DG= 0.1; %resistance for filter LC
L_fi_3DG= 1.35*10^-3; %inductance for filter LC
C_fi_3DG= 50*10^-6; %capacitor for filter LC
m_P_3DG= 12.5*10^-5; % active power droop coefficient
n_Q_3DG= 1.5*10^-3; % reactive power droop coefficient
Kpv_3DG= 0.05; % Kp constant for PI controller voltage loop
Kiv_3DG= 390; % Ki constant for PI controller voltage loop
Kpi_3DG= 10.5; % Kp constant for PI controller current loop
Kii_3DG= 16000; % Ki constant for PI controller current loop
Ts_3DG= 2e-6; % Sample Time for DG 3
wci_3DG= 31.41; %cut-off frequency for DG 3
f_3DG= 50; %frequency 
w_base_3DG= 2*pi*f_3DG; %nominal angular frequency for DG 3
Kff_i_3DG= 0.75; %Current Compensator for DG 3


%% DISTRIBUTED GENERATOR #4 VCVSI 
R_ci_4DG= 0.03; %resistance for output connector
L_ci_4DG= 0.35*10^-3; %inductance for output connector
R_fi_4DG= 0.1; %resistance for filter LC
L_fi_4DG= 1.35*10^-3; %inductance for filter LC
C_fi_4DG= 50*10^-6; %capacitor for filter LC
m_P_4DG= 12.5*10^-5; % active power droop coefficient
n_Q_4DG= 1.5*10^-3; % reactive power droop coefficient
Kpv_4DG= 0.05; % Kp constant for PI controller voltage loop
Kiv_4DG= 390; % Ki constant for PI controller voltage loop
Kpi_4DG= 10.5; % Kp constant for PI controller current loop
Kii_4DG= 16000; % Ki constant for PI controller current loop
Ts_4DG= 2e-6; % Sample Time for DG 4
wci_4DG= 31.41; %cut-off frequency for DG 4
f_4DG= 50; %frequency 
w_base_4DG= 2*pi*f_4DG; %nominal angular frequency for DG 4
Kff_i_4DG= 0.75; %Current Compensator for DG 4


