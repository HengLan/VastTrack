function SPrettyLegend(lgd, legend_color)
% Semitransparent rounded rectangle legend
% Copyright (c) 2023, Zhaoxu Liu / slandarer
% -------------------------------------------------------------------------
% Zhaoxu Liu / slandarer (2023). pretty legend 
% (https://www.mathworks.com/matlabcentral/fileexchange/132128-pretty-legend), 
% MATLAB Central File Exchange
% =========================================================================
if nargin<1
    ax = gca;
    lgd = get(ax,'Legend');
end
pause(1e-6)
Ratio = .0;
t1 = linspace(0,pi/2,4); t1 = t1([1,2,2,3,3,4]);
t2 = linspace(pi/2,pi,4); t2 = t2([1,2,2,3,3,4]);
t3 = linspace(pi,3*pi/2,4); t3 = t3([1,2,2,3,3,4]);
t4 = linspace(3*pi/2,2*pi,4); t4 = t4([1,2,2,3,3,4]);
XX = [1,1,1-Ratio+cos(t1).*Ratio,1-Ratio,Ratio,Ratio+cos(t2).*Ratio,...
    0,0,Ratio+cos(t3).*Ratio,Ratio,1-Ratio,1-Ratio+cos(t4).*Ratio];
YY = [Ratio,1-Ratio,1-Ratio+sin(t1).*Ratio,1,1,1-Ratio+sin(t2).*Ratio,...
    1-Ratio,Ratio,Ratio+sin(t3).*Ratio,0,0,Ratio+sin(t4).*Ratio];
% % border-radius
% oriBoxEdgeHdl = lgd.BoxEdge;
% newBoxEdgeHdl = matlab.graphics.primitive.world.LineStrip();
% newBoxEdgeHdl.AlignVertexCenters = 'off';
% newBoxEdgeHdl.Layer = 'front';
% newBoxEdgeHdl.ColorBinding = 'object';
% newBoxEdgeHdl.LineWidth = 1;
% newBoxEdgeHdl.LineJoin = 'miter';
% newBoxEdgeHdl.WideLineRenderingHint = 'software';
% newBoxEdgeHdl.ColorData = uint8([38;38;38;0]);
% newBoxEdgeHdl.VertexData = single([XX;YY;XX.*0]);
% newBoxEdgeHdl.Parent=oriBoxEdgeHdl.Parent;
% oriBoxEdgeHdl.Visible='off';
% Semitransparent rounded background
oriBoxFaceHdl = lgd.BoxFace;
newBoxFaceHdl = matlab.graphics.primitive.world.TriangleStrip();
Ind = [1:(length(XX)-1);ones(1,length(XX)-1).*(length(XX)+1);2:length(XX)];
Ind = Ind(:).';
newBoxFaceHdl.PickableParts = 'all';
newBoxFaceHdl.Layer = 'back';
newBoxFaceHdl.ColorBinding = 'object';
newBoxFaceHdl.ColorType = 'truecoloralpha';
if strcmp(legend_color, 'overall')
    newBoxFaceHdl.ColorData = uint8(255*[0.835;0.89;0.98;.8]);
else
    newBoxFaceHdl.ColorData = uint8(255*[0.776;0.961;0.953;.8]);
end
% newBoxFaceHdl.ColorData = uint8(255*[0.835;0.89;0.98;.8]);  % overall
% newBoxFaceHdl.ColorData = uint8(255*[0.776;0.961;0.953;.8]);  % attribute
newBoxFaceHdl.VertexData = single([XX,.5;YY,.5;XX.*0,0]);
newBoxFaceHdl.VertexIndices = uint32(Ind);
newBoxFaceHdl.Parent = oriBoxFaceHdl.Parent;
oriBoxFaceHdl.Visible = 'off';
end