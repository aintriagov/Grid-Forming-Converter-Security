%% VOLTAGES AND FREQUENCIES IN NORMAL CONDITIONS

% VOLTAGES NORMAL CONDITIONS 

voltage_DG_1_no_attack= voltages_no_attack.Data(:,1)
voltage_DG_2_no_attack= voltages_no_attack.Data(:,2)
voltage_DG_3_no_attack= voltages_no_attack.Data(:,3)
voltage_DG_4_no_attack= voltages_no_attack.Data(:,4)

subplot(2,1,1)
plot(voltages_no_attack.Time, voltage_DG_1_no_attack, 'blue', 'LineWidth', 1)
hold on
grid on
plot(voltages_no_attack.Time, voltage_DG_2_no_attack, 'red', 'LineWidth', 1)
plot(voltages_no_attack.Time, voltage_DG_3_no_attack, 'black', 'LineWidth', 1)
plot(voltages_no_attack.Time, voltage_DG_4_no_attack, 'magenta', 'LineWidth', 1)
hold off

xlabel('Time (sec)','FontName','Times','FontSize',14)
ylabel('v_{o,mag} (pu)','FontName','Times','FontSize',14)


xlim([0 1])
ylim([0 2])

legend('DG 1','DG 2', 'DG 3', 'DG 4', 'FontName','Times', 'Location','southeast')


%FREQUENCIES NORMAL CONDITIONS

frequency_DG_1_no_attack= frequencies_no_attack.Data(:,1)
frequency_DG_2_no_attack= frequencies_no_attack.Data(:,2)
frequency_DG_3_no_attack= frequencies_no_attack.Data(:,3)
frequency_DG_4_no_attack= frequencies_no_attack.Data(:,4)

subplot(2,1,2)
plot(frequencies_no_attack.Time, frequency_DG_1_no_attack, 'blue', 'LineWidth', 1)
hold on
grid on
plot(frequencies_no_attack.Time, frequency_DG_2_no_attack, 'red', 'LineWidth', 1)
plot(frequencies_no_attack.Time, frequency_DG_3_no_attack, 'black', 'LineWidth', 1)
plot(frequencies_no_attack.Time, frequency_DG_4_no_attack, 'magenta', 'LineWidth', 1)
hold off

xlabel('Time (sec)','FontName','Times','FontSize',14)
ylabel('Frequencies (Hz)','FontName','Times','FontSize',14)


xlim([0 1])
ylim([0 60])

legend('DG 1','DG 2', 'DG 3', 'DG 4','FontName','Times', 'Location','southeast')