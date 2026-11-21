function ret = asBennInit()

persistent stateinitexist;

if isempty(stateinitexist)
    exist stateinit var;
    stateinitexist = ans;
elseif stateinitexist == 0
    exist stateinit var;
    stateinitexist = ans;
end

ret = stateinitexist;

end