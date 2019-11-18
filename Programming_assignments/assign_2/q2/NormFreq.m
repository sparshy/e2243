function nf = NormFreq(array, x)
    % Get all possible values  and create a map of value : frequency
    % very slow, calculating sum of freq every time.
    m = containers.Map('KeyType','int32','ValueType','int32');
    for i=1:length(array)
        if m.isKey(array(i))
            m(array(i)) = m(array(i)) +1;
        else
            m(array(i)) = 1;
        end
    end
    % sum up all the frequencies
    cells = values(m);
    s= sum( [ cells{:}] );
    nf = Freq(array,x)/ s;
end

