% Author: Mostafa Rezapour
% The input of this function is an m by n matrix, and the outputs are:
%1. A matrix whose columns are the pivot columns of the input matrix A 
%2. A  vector whose elements are the pivot columns indices. 
% We will use this function for our future projects. For instance, if you
% are interested to find a basis of the column space of a matrix, this code
% will give you a basis in a matrix form. 
% 



% My dear students in MST 121-D at Wake Fores- Please watch the tutorial
% video that I have recoreded and posted on Canvas for you. In the video I
% start from scratch and go through this code step by step to give you the idea behind each code line.

function [B, v]=detectinv(A)
Pivot_columns_matrix=[];
ind=[];
[m n]=size(A);
% If A is a square matrix (m=n) and its rank is equal to the noumber of
% rows or columns then the columns of A are linearly indepent
if m==n
    if rank(A)==m
        f=msgbox('The columns of A are linearly independent', 'Help','help');
    elseif rank(A)~=m 
          R=rref(A);
     [m ,n]=size(A);
     for i=1:m
         if sum(abs(R(i,:)))~=0
             r=R(i,:);
             v=find(r);
             Pivot_columns_matrix=[Pivot_columns_matrix A(:,v(1))];
             ind=[ind v(1)];
         end
     end
     p=Pivot_columns_matrix;
     disp('The columns of the following matrix are the pivot columns of the origonal matrix:')
     disp(Pivot_columns_matrix)
      disp(' The pivot columns indices are:')
     disp(ind)
     v=ind;
      B=Pivot_columns_matrix;
        return
    end
end

 if m~=n
     R=rref(A);
     [m n]=size(A);
     for i=1:m
         if sum(abs(R(i,:)))~=0
             r=R(i,:);
             v=find(r);
             Pivot_columns_matrix=[Pivot_columns_matrix A(:,v(1))];
             ind=[ind v(1)];
         end
     end
    
     disp('The columns of the following matrix are the pivot columns of the origonal matrix:')
     disp(Pivot_columns_matrix)
     disp(' The pivot columns indices are:')
     disp(ind)
     v=ind;
      B=Pivot_columns_matrix;
    

 end
             

v=ind;
      B=Pivot_columns_matrix;

%
end