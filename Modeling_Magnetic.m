% South Pole
Vcc = 3.3 ; % V
V_Q = Vcc/2; % V
S_TC = 0.12 * 0.01; % 1/Celcius degree
Sensitivity = 60; % mV/mT
V_L = 0.2; % V
Temp_ambient = 25; % Celcius degree
B = 0:0.001:0.1; % T
V_out = zeros(size(B)); % V

for i = 1:length(B)
    V_out(i) = V_Q + B(i) * (Sensitivity * (1 + S_TC * (Temp_ambient - 25)));
    if (V_out(i) >= Vcc - V_L) || (V_out(i) <V_L)
        V_out = V_out(1:i); 
        B = B(1:i);        
        break;             
    end
end

plot(B*100, V_out, 'r-', 'LineWidth', 2);
xlabel('Magnetic Flux Density (mT)');
ylabel('V_{out} (V)');
title('Output Voltage (V) vs Magnetic Flux Density (mT)');
grid on;
%% North Pole
Vcc = 3.3 ; % V
V_Q = Vcc/2; % V
S_TC = 0.12; % 1/Celcius degree
Sensitivity = 60;  % mV/mT
V_L = 0.2; % V
Temp_ambient = 25; % Celcius degree
B = 0:0.001:0.1; % T
V_out = zeros(size(B));

for i = 1:length(B)
    V_out(i) = V_Q - B(i) * (Sensitivity * (1 + S_TC * (Temp_ambient - 25)));
    if (V_out(i) >= Vcc - V_L) || (V_out(i) <V_L)
        V_out = V_out(1:i); 
        B = B(1:i);        
        break;             
    end
end

plot(B, V_out, 'r-', 'LineWidth', 2);
xlabel('Magnetic Flux Density (mT)');
ylabel('V_{out} (V)');
title('Output Voltage (V) vs Magnetic Flux Density (mT)');
grid on;
%% Magnetic density vs Distance
Diameter = 10; % mm
Thickness = 8; % mm
Br = 330; 
D = 0:0.1:35; % mm
B_out = zeros(size(D)); % mT
for i = 1:length(D)
    B_out(i) = (Br/2)*((D(i)+Thickness)/sqrt((0.5*Diameter)^2+(D(i)+Thickness)^2)-(D(i)/sqrt((0.5*Diameter)^2+(D(i)^2))));                    
end
plot(D, B_out, 'r-', 'LineWidth', 2);
xlabel('Distance (mm)');
ylabel('B (mT)');
title('Magnetic Flux Density (mT) vs Distance (mm)');
grid on;
%% Voltage vs Distance South Pole
Diameter = 3; % mm
Thickness = 4; % mm
Br = 48; 
D = 0:0.01:10; % mm
B_out = zeros(size(D)); % mT
Vcc = 5 ; % V
V_Q = Vcc/2; % V
S_TC = 0.12; % 1/Celcius degree
Sensitivity = 100;  % mV/mT
V_L = 0.2; % V
Temp_ambient = 25; % Celcius degree
V_out = zeros(size(B_out));

for i = 1:length(D)
    B_out(i) = ((Br/2)*((D(i)+Thickness)/sqrt((0.5*Diameter)^2+(D(i)+Thickness)^2)-(D(i)/sqrt((0.5*Diameter)^2+(D(i)^2)))))*0.001;                    
end

for j = 1:length(B_out)
    V_out(j) = V_Q + B_out(j) * (Sensitivity * (1 + S_TC * (Temp_ambient - 25)));
    if (V_out(j) >= Vcc - V_L) || (V_out(j) < V_L)
        V_out = V_out(1:j);     
        break;             
    end                    
end

plot(D, V_out, 'r-', 'LineWidth', 2);
xlabel('Distance (mm)');
ylabel('V{out} (V)');
title('V_Out (V) vs Distance (mm)');
grid on;

%% Voltage vs Distance North Pole
Diameter = 3; % mm
Thickness = 4; % mm
Br = 48; 
D = 0:0.01:10; % mm
B_out = zeros(size(D)); % mT
Vcc = 5 ; % V
V_Q = Vcc/2; % V
S_TC = 0.12; % 1/Celcius degree
Sensitivity = 100;  % mV/mT
V_L = 0.2; % V
Temp_ambient = 25; % Celcius degree
V_out = zeros(size(B_out));

for i = 1:length(D)
    B_out(i) = ((Br/2)*((D(i)+Thickness)/sqrt((0.5*Diameter)^2+(D(i)+Thickness)^2)-(D(i)/sqrt((0.5*Diameter)^2+(D(i)^2)))))*0.001;                    
end

for j = 1:length(B_out)
    V_out(j) = V_Q - B_out(j) * (Sensitivity * (1 + S_TC * (Temp_ambient - 25)));
    if (V_out(j) >= Vcc - V_L) || (V_out(j) < V_L)
        V_out = V_out(1:j);         
        break;             
    end                    
end

plot(D, V_out, 'r-', 'LineWidth', 2);
xlabel('Distance (mm)');
ylabel('V{out} (V)');
title('V_Out (V) vs Distance (mm)');
grid on;
