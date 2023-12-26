voltage_i = [0.02, 0.04, 0.06, 0.08, 0.1, 0.2, 0.3];
voltage_o1 = [0.368, 0.744, 1.08, 1.39, 1.74, 2.64, 4.64]; 
voltage_o2 = [0.380, 0.776, 1.14, 1.50, 1.90, 3.26, 4.28];
voltage_i1 = voltage_i(1:4); 
voltage_o3 = [0.324, 0.576, 0.792, 0.976];
Re1 = 'R_e=1k';
Re2 = 'R_e=500';
Re3 = 'R_e=2k';
plot_data(Re1, Re2, Re3, voltage_i, voltage_i, voltage_i1,voltage_o1, voltage_o2, voltage_o3, 'V_i (V)', 'V_o (V)', 'V_o-V_i Curve');

frequency = [9.81, 10.0, 10.2, 10.4, 10.7, 10.8, 10.9, 11.0, 11.2];
voltage_o1 = [0.204, 0.220, 0.236, 0.240, 0.244, 0.236, 0.232, 0.224, 0.202];
voltage_o2 = [0.265, 0.292, 0.340, 0.352, 0.376, 0.352, 0.342, 0.304, 0.265];
voltage_o3 = [0.090, 0.092, 0.094, 0.098, 0.102, 0.098, 0.096, 0.094, 0.092];
R1 = 'R=2k';
R2 = 'R=10k';
R3 = 'R=470';
plot_data(R1, R2, R3, frequency, frequency, frequency, voltage_o1, voltage_o2, voltage_o3, 'Frequency (MHz)', 'V_o (V)', 'V_o-Frequency Curve');


