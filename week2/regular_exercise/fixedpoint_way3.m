function y=fixedpoint_way3(~)
%�õ��������㷽�̵ĸ�
%��h=sqrt(90/(9*pi-pi*h)����ʽ���е���
%��������پ���8λ׼ȷ��Ч����ʱֹͣ����
%i��ʾ�������� hi��ʾ��ǰ������� e_a��ʾ��ǰ�������
e_s=5e-9;  %������������8λ׼ȷ��Ч����ʱ���ݲ�
h=2;       %��ʼ��Ϊh=2
last_hi=h; %��ʼ���ϴε������
for i=1:100
    hi=g3(h);  %����g3(h)���㵱ǰ�������
    h=hi;      %����h
    e_a=abs(hi-last_hi)/hi;  %���㵱ǰ�������
    last_hi=hi;    %����last_hi
    i,hi,e_a
    if e_a<e_s  %�жϵ����Ƿ���ֹ
        break;
    end
    
end