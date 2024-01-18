function [] = plotT(T, lineWidth, lineType)
    if nargin == 3
        plot3([T(1,4),T(1,4)+T(1,1)],[T(2,4),T(2,4)+T(2,1)],[T(3,4),T(3,4)+T(3,1)],append('r',lineType), 'lineWidth', lineWidth);
        hold on;
        plot3([T(1,4),T(1,4)+T(1,2)],[T(2,4),T(2,4)+T(2,2)],[T(3,4),T(3,4)+T(3,2)],append('g',lineType), 'lineWidth', lineWidth);
        plot3([T(1,4),T(1,4)+T(1,3)],[T(2,4),T(2,4)+T(2,3)],[T(3,4),T(3,4)+T(3,3)],append('b',lineType), 'lineWidth', lineWidth);
    else
        plot3([T(1,4),T(1,4)+T(1,1)],[T(2,4),T(2,4)+T(2,1)],[T(3,4),T(3,4)+T(3,1)],'r', 'lineWidth', lineWidth);
        hold on;
        plot3([T(1,4),T(1,4)+T(1,2)],[T(2,4),T(2,4)+T(2,2)],[T(3,4),T(3,4)+T(3,2)],'g', 'lineWidth', lineWidth);
        plot3([T(1,4),T(1,4)+T(1,3)],[T(2,4),T(2,4)+T(2,3)],[T(3,4),T(3,4)+T(3,3)],'b', 'lineWidth', lineWidth);
    end
    
    grid on
    
end

