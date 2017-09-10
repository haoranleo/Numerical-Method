function x=sor(w)
%该脚本程序功能为用不同松弛因子的SOR方法对题设线性方程组求解，并求出迭代次数最少的最优松弛因子。
%预定迭代次数上限100，如果超过上限则停止迭代，并说明迭代方式发散
%初始向量为[0;0;0]
%由于迭代结束条件为当前迭代解矩阵减去上一轮迭代解矩阵所得的矩阵的无穷范数小于1e-04
%所以在SOR迭代只用一组x矩阵保存迭代结果的前提下，定义了另一组解矩阵用于存放上一次
%迭代的结果，在每轮迭代完之后统一改变改解矩阵的值
A=[5 2 1;      %输入系数矩阵A
    -1 4 2;
    2 -3 10];
B=[-12;20;3];        %输入矩阵B
e_s=1e-04;           %初始化迭代终止的容差
x=zeros(3,1);        %初始化迭代解
x_last=zeros(3,1);   %初始化存放上一次迭代结果的矩阵
for n=1:100          %预定迭代次数上限为100次
    for i=1:3        %进行一轮SOR迭代
        if i==1
            x(1)=x(1)+(B(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,1)*x(1))*w/A(1,1);
        else if i==2
                x(2)=x(2)+(B(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,2)*x(2))*w/A(2,2);
            else
                x(3)=x(3)+(B(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,3)*x(3))*w/A(3,3);
            end
        end
    end
        if norm(x-x_last,inf)<e_s   %判断迭代是否终止
           n,x 
           break;
        end
        for i=1:3                   %更新上一轮迭代解矩阵
        x_last(i)=x(i);
        end  
end
    if n==100                       %判断是否发散
        disp('迭代发散！'); end
        
        
       
            
        