ActionMailer::Base.smtp_settings = {  
      address: "smtp.gmail.com",  
      port: 587,  
      domain: "gmail.com",  
	  user_name: ENV["GMAIL_USER"],  
      password: ENV["GMAIL_PWD"],  
      authentication: "plain",  
      enable_starttls_auto: true  
   }  