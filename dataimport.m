clear;
data = readtable('D:\mustafa\Masters-NYU\ms_project\test_data\datafile.txt');

gyrX = table2array(data(:,1));
gyrY = table2array(data(:,2));
gyrZ = table2array(data(:,3));

gyr = [gyrX gyrY gyrZ];

accX = table2array(data(:,4));
accY = table2array(data(:,5));
accZ = table2array(data(:,6));

acc = [accX accY accZ];

% dt = table2array(data(:,10));
dt = 10/1000;
time = zeros(length(accX),1);

for i = 1:length(time)
    time(i+1,:) = time(i) + dt;
end

time = time(1:end-1);