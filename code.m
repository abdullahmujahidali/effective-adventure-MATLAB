clc,clear
%% inputing the value
%
value = input('Enter value in seconds: ');
copy_value = value; % make a copy for printing later

%% define the necessary constants
%
day = 86400; % total seconds in a day
hour = 3600; % total seconds in an hour
minute = 60; % total seconds in a minute
%

%% compute days,hrs,mins,sec
%
d = 0;h = 0;m = 0; % initialize the sums to zero
while value>=day
d = d + 1; % increase days by 1
value = value - day;
end
while value>=hour
h = h + 1; % increase hours by 1
value = value - hour;
end
while value>=minute
m = m + 1; % increase minutes by 1
value = value - minute;
end
s = value; % get the remaining value as seconds


%% displaying
%
combined = [d>0 h>0 m>0 s>0]; % logical combination for printing "and"

% print the original copy of the value
fprintf(' %d seconds contains ',copy_value)

% printing days
if d>0
fprintf('%d day(s)',d)

if sum(combined)<=2 % one value is remaining so print "and"
fprintf(' and ')
else
fprintf(',')
end
end

% printing hours
if h>0
fprintf(' %d hr(s)',h)
if sum(combined)<=3 % one value is remaining so print "and"
fprintf(' and ')
else
fprintf(',')
end
end

% printing minutes
if m>0
fprintf(' %d min(s)',m)
if sum(combined)<=4 % one value is remaining so print "and"
fprintf(' and ')
else
fprintf(',')
end
end

% printing seconds
if s>0
fprintf(' %d sec',s)
end

fprintf('\n\n')
