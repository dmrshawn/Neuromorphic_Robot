%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Project : VO_2 neuromorphic dynamics modulate fish social behavior through robotic embodiment
%Author  : Deze Liu, Daniel Burbano (db1359@soe.rutgers.edu)
%Lab     : The Swarm Intelligence Lab
%Date    : 09/06/2026
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [WG] = turnrate_comp(costheta, sintheta, dt)
    crossTerm = ...
        costheta(1:end-1).*sintheta(2:end) - ...
        sintheta(1:end-1).*costheta(2:end);

    dotTerm = ...
        costheta(1:end-1).*costheta(2:end) + ...
        sintheta(1:end-1).*sintheta(2:end);

    deltaPhi = atan2(crossTerm, dotTerm);

    WG = deltaPhi ./ dt;
end
