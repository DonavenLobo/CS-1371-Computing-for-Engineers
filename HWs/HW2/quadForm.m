function [x1,x2] = quadForm(a,b,c)
    dmnt = sqrt((b^2)-(4*a*c)); %Find the determinant of the equation first
    x1 = round((-b + dmnt)/(2*a),2); %x1 is the 'plus' value so we add the determinant. We also round the full value to 2 d.p.
    x2 = round((-b - dmnt)/(2*a),2); %x2 is the 'minus' value so we take away the determinant. We also round the full value to 2 d.p.
end