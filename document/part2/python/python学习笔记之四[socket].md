客户端
# 2.7
    # coding:utf-8
    # python 2.7
    # client
    # socket 计算机之间的通信 服务端和客户端   服务端监听请求 连接确认 
    import socket
    import threading
    
    outString = ''
    inString = ''
    nick = ''
    # 发送信息的函数
    def DealOut(sock):
        global nick,outString
       while True:
            outString=input() # 输入
            outString = nick+':'+outString # 拼接
             sock.send(outString) # 发送
    
    # 接受信息的函数
    def DealIn(sock):
        global inString
        while True:
            try:
                inString=sock.recv(1024)
                if not inString:
                      break
                if outString !=inString
                    print(inString)
                exception:
                break
            
    
    nick =input('input your nickname:') # 名字
    ip=input('input the server ip address:') # IP地址
    
    sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM) # tcp /udp  创建套接字
    sock.connect((ip,8888)) # 发起请求
    sock.send(nick)
    
    # 多线程 接受信息 发送信息
    thin = whreading.Thread(target=DealIn,args=(sock,)) # 创建接受信息的线程
    thin.start()
    thout = threading.Thread(target=DealOut,args=(sock,))
    thout.start()

# 
    # coding:utf-8
    # 服务端
    # python 3.4.4 
    
    import sock
    import threading
    
    def clientThreadIn(conn,nick):
    	global data
    	while True:
    		try:
    			temp = conn.recv(1024)
    			if not temp:
    				conn.close()
    				return
    			NotifyAll(temp)
    			print(data)
    		except :
    			NotifyAll(nick+'leaves the room！') # 出现异常就退出
    			print(data)
    			return
    			
    			
    def clientThreadOut(conn,nick):
    	global data
    	while True:
    		if con.acquire()
    			con.wait() # 放弃对资源的占有 等待通知 然后运行后面的代码
    			if data :
    				try:
    					conn.send(data)
    					con.release()
    				except:
    					con.release()
    					return
    	
    
    def NotifyAll(ss):
    	global data
    	if conn.acquire(): # 获取锁
    		data=ss
    		con.notifyAll() # 当前线程放弃对资源占有，通知所有等待线程 从wait 方法执行
    		con.release()
    	
    con = threading.Condition() # 条件
    HOST = imput('input the server ip address') # 输入IP地址
    port = 8888
    data = ''
    
    s = scoket.socket(socket.AF_INET,socket.SOCK_STREAM) # 创建套接字
    print('Socket created')
    s.bind((HOST,port)) # 把套接字绑定到ip地址
    s.listen(5)
    print('Socket now listening')
    
    while True:
    	conn,addr = s.accept() # 接受连接
    	prit('Connected with' +addr[0]+':'+str(addr[1]))
    	nick = conn.recv(1024) # 获取用户名
    	NotifyAll('Wellcome' + nick +'to the room!')
    	print(data)
    	print(str((threading.activeCount)+1)/2)+'person(s)' # 当前房间的人数
    	conn.send(data)
    	threading.Thread(target=clientThreadIn,args=(conn,nick)).start()
    	threading.Thread(target=clientThreadOut,args=(conn,nick)).start()


