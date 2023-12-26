current_EQ = [0.8, 1, 1.5, 2, 3, 3.5, 4, 4.5, 5];
volltage_PP_1 = [0.568, 0.752, 1.28, 1.72, 2.56, 2.76, 2.64, 2.38, 1.90];
volltage_PP_2 = [0.600, 0.760, 1.20, 1.58, 2.40, 2.72, 2.66, 2.36, 1.94];
volltage_PP_3 = [0.0204, 0.0316, 0.052, 0.0696, 0.108, 0.128, 0.158, 0.190, 0.206];
displayname1 = 'C = 100pf, C'' = 1200pf';
displayname2 = 'C = 120pf, C'' = 680pf';
displayname3 = 'C = 680pf, C'' = 120pf';
plot_data(displayname1, displayname2, displayname3, current_EQ, current_EQ, current_EQ, volltage_PP_1, volltage_PP_2, volltage_PP_3, 'Current (A)', 'Voltage (V)', 'Voltage-Current Curve');