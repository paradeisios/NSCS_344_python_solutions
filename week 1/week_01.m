clear
% number of dots participants pay attention to 
D = 100;
% viewing time in frames
T = 1;
% fraction of dots moving in the preferred direction
f = 0.6;
% initialize count variables
N_correct = 0;
N_wrong = 0;
% for loop to loop over all dots
for i = 1:D*T
    
    % randomly sample the direction of this dot
    dot_direction = binornd(1, f);
    
    % update the counts
    N_correct = N_correct + dot_direction;
    N_wrong = N_wrong + (1 - dot_direction);
    
end
% display number of dots counted in "correct" direction
N_correct

% compute accuracy of this choice
if N_correct > N_wrong
  accuracy = 1
elseif N_correct < N_wrong
  accuracy = 0
else N_correct == N_wrong
  accuracy = binornd(1,0.5)
end