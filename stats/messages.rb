# In this file will contains functions for print messages

def message_start(ip)
    print "\033[0;0m["
    print "\033[1;92m#"
    print "\033[0;0m]"
    puts " Starting RSCAN 1.0v in {#{ip}}"    
    sleep(0.3)
end
def scan_time(ip, timeout)
    message_start(ip)
    print "\033[0;0m["
    print "\033[1;92m#"
    print "\033[0;0m]"
    puts " Starting RSCAN with timeout #{timeout} seconds in target {#{ip}}"
    sleep 0.5
end
def message_top_ports(ip)
    message_start(ip)
    print "\033[0;0m["
    print "\033[1;92m#"
    print "\033[0;0m]"
    puts " Starting RSCAN top-ports in #{ip}" 
    sleep 0.5
end
def verbose_start(ip, connect)
    puts "* Trying #{ip}..."
    if(connect == "ok")
        puts "* Connected to #{ip}..."
        puts "* Scanning ports in #{ip}"
        sleep 0.3
    else
        puts "* Failed to connect to #{ip}"
        exit(0)
    end
end
def url(url)
    print "\033[0;0m["
    print "\033[1;92m#"
    print "\033[0;0m]"
    puts " Starting scan in #{url}"
    sleep 0.4
end
def reconfigure(stats)
    print "\033[0;0m["
    print "\033[1;92m#"
    print "\033[0;0m]"
    if(stats == "ok")
        puts " The program was successfully reconfigured"
    else
        puts " Error while recofing the program"
        exit(0)
    end
end
def simple(ip)
    print "\033[0;0m["
    print "\033[1;92m#"
    print "\033[0;0m]"
    puts " Starting simple scan in #{ip}"
    sleep 0.4
end
def version()
    puts " Rscan are in version 1.0v"
end
def credits()
    puts " Rscan credits: DioBrando, and Josh Washingtom"
    exit(0)
end