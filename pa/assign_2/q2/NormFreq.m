function nf = NormFreq(array, x)
    % Get all possible values  and create a map of value : frequency
    % What foolishness is this?
%     m = containers.Map('KeyType','int32','ValueType','int32');
%     for i=1:length(array)
%         if m.isKey(array(i))
%             m(array(i)) = m(array(i)) +1;
%         else
%             m(array(i)) = 1;
%         end
%     end
%     % sum up all the frequencies
%     cells = values(m);
%     s= sum( [ cells{:}] );
    % END foolishness
    nf = Freq(array,x)/ lenght(array);
end

