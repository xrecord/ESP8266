wifi.setmode(wifi.STATION)
wifi.sta.getap(function(t) 
	if t then print("\n\nVisible Access Points:\n") 
		for k,v in pairs(t) do l = string.format("%-10s",k) print(l.."  "..v) 
		return end
		else print("Try again") 
	return end
end)
wifi.sta.disconnect()
wifi.setmode(wifi.SOFTAP)
wifi.ap.config({ssid="Sniper_Locator",pwd="12345678"})
send = 0
srv=net.createServer(net.TCP) srv:listen(80,function(conn)
	conn:on("receive",function(conn,payload)
		if send == 0 then
			conn:send('<head><meta charset="utf-8"><title>Данные формы</title></head>')
			conn:send('<body><form action="" method="POST"><p><input name="login"><input type="password" name="pass"></p>\n<p><input type="submit"></p></form></body>')
		return end
	end)
end)
