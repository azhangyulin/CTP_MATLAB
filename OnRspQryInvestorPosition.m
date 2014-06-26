function OnRspQryInvestorPosition(sender, arg)
global positions
positions{length(positions) + 1, 1} = arg.pInvestorPosition;
