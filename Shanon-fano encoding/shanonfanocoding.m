clc; 
clear;
close all;

% Define symbols and given probabilities
symbols = ['A', 'B', 'C', 'D', 'E'];
probabilities = [0.5, 0.2, 0.2, 0.05, 0.05];

% Step 1: Sort symbols by probability (descending)
[probabilities, idx] = sort(probabilities, 'descend');
symbols = symbols(idx);

% Step 2: Generate Shannon-Fano codes
codes = cell(size(symbols)); % Initialize cell array for codes
prefix_stack = {''};
range_stack = {[1, length(symbols)]};

% Implementing Shannon-Fano Encoding without function calls
while ~isempty(range_stack)
    range = range_stack{end};
    prefix = prefix_stack{end};
    range_stack(end) = [];
    prefix_stack(end) = [];

    start_index = range(1);
    end_index = range(2);

    if start_index == end_index
        codes{start_index} = prefix;
        continue;
    end

    % Find the optimal split point
    total_sum = sum(probabilities(start_index:end_index));
    left_sum = 0;
    min_diff = inf;
    split_index = start_index;

    for i = start_index:end_index
        left_sum = left_sum + probabilities(i);
        right_sum = total_sum - left_sum;
        diff = abs(left_sum - right_sum);

        if diff < min_diff
            min_diff = diff;
            split_index = i;
        end
    end

    % Assign codes and push new ranges to stack
    for i = start_index:split_index
        codes{i} = [prefix, '0'];
    end
    for i = split_index+1:end_index
        codes{i} = [prefix, '1'];
    end

    if start_index < split_index
        range_stack{end+1} = [start_index, split_index];
        prefix_stack{end+1} = [prefix, '0'];
    end
    if split_index+1 < end_index
        range_stack{end+1} = [split_index+1, end_index];
        prefix_stack{end+1} = [prefix, '1'];
    end
end

% Display the Shannon-Fano codes
disp('Symbol  Probability  Code');
for i = 1:length(symbols)
    fprintf('%c       %.2f        %s\n', symbols(i), probabilities(i), codes{i});
end
