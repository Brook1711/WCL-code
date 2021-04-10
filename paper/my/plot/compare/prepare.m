file_name = "./2021-01-08 11_27_39_propose/all_steps.mat";
result_propose = load(file_name);
file_name = "./2021-01-08 12_23_10_fix_theta/all_steps.mat";
result_fix_theta = load(file_name);
file_name = "./2021-01-08 12_24_00_fix_trajectory/all_steps.mat";
result_fix_trajectory = load(file_name);
file_name = "./2021-01-08 16_09_41_fix_G/all_steps.mat";
result_fix_G = load(file_name);
file_name = "./2021-01-08 16_52_32_robust_2/all_steps.mat";
result_robust = load(file_name);
file_name = "./2020-12-06 15_35_34_with_RIS_16/all_steps.mat";
result_single_ddpg = load(file_name);
rate_pro = result_propose.secure_capacity(1,:)+result_propose.secure_capacity(2,:);
rate_G = result_fix_G.secure_capacity(1,:)+result_fix_G.secure_capacity(2,:);
rate_theta = result_fix_theta.secure_capacity(1,:)+result_fix_theta.secure_capacity(2,:);
rate_trajectory = result_fix_trajectory.secure_capacity(1,:)+result_fix_trajectory.secure_capacity(2,:);
rate_robust = result_robust.secure_capacity(1,:)+result_robust.secure_capacity(2,:);
rate_single = result_single_ddpg.secure_capacity(1,:)+result_single_ddpg.secure_capacity(2,:);
rate_pro_ep = [];
rate_G_ep = [];
rate_theta_ep = [];
rate_trajectory_ep = [];
rate_robust_ep = [];
rate_single_ep = [];
for i = 1:100
    rate_pro_ep(end+1)=sum(rate_pro((i-1)*100+1:(i*100)))/100;
    rate_G_ep(end+1)=sum(rate_G((i-1)*100+1:(i*100)))/100;
    rate_theta_ep(end+1)=sum(rate_theta((i-1)*100+1:(i*100)))/100;
    rate_trajectory_ep(end+1)=sum(rate_trajectory((i-1)*100+1:(i*100)))/100;
    rate_robust_ep(end+1)=sum(rate_robust((i-1)*100+1:(i*100)))/100;
    rate_single_ep(end+1)=sum(rate_single((i-1)*100+1:(i*100)))/100;
end