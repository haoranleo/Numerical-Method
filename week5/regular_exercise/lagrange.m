function y=lagrange(X,Y,x0)
%�ýű����ڼ���ָ���㴦��lagrange��ֵ���
%XΪ��ѡ���ݽڵ㣬����������ʽ�������ڵ�
%YΪ��ѡ���ݽڵ㴦��ֵ������������ʽ������ֵ��������Ľڵ�һһ��Ӧ��
%x0Ϊ��Ҫ�ò�ֵ����ֵ�ĵ㣬����������ʽ������ֵ
n=length(X);
n1=length(Y);
if n~=n1       %�ж�����X��Yά���Ƿ�һ��
    disp('����X��Yά�Ȳ�һ�£�');
else
m=length(x0);  %������Ҫ�ò�ֵ������ĵ�ĸ���
for i=1:m      
    z=x0(i);   %��ǰ��Ҫ�ò�ֵ������ĵ�
    s=0;       %��ʼ��Lagrange��ֵ��������
    for k=1:n   
        p=1;
        for j=1:n
            if j~=k
                p=p*(z-X(j))/(X(k)-X(j));    %������
            end
        end
        s=p*Y(k)+s;   %Lagrange��ֵ����ʽ
    end
    y(i)=s;    %������ҲΪ���飬����Ҫ�ò�ֵ������ֵ�ĵ�һһ��Ӧ
end
end