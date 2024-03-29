require "spreadsheet"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

tech = Industry.create(name: "Tech")
general = Industry.create(name: "General")
business = Industry.create(name: "Business")
marketing = Industry.create(name: "Marketing")

marketing_keywords = []

fs = Position.create(name: "Full Stack Engineer", public: true, industry: tech)
front_end = Position.create(name: "Front End Engineer", public: true, industry: tech)
dev_ops = Position.create(name: "DevOps Engineer", public: true, industry: tech)
sec_eng = Position.create(name: "Security Engineer", public: true, industry: tech)
ios_eng = Position.create(name: "iOS Engineer", public: true, industry: tech)
# data_scientist = Position.create(name: "Data Scientist", public: true, industry: tech)

financial_analyst = Position.create(name: "Financial Analyst", public: true, industry: business)
account_manager = Position.create(name: "Communications Specialist", public: true, industry: business) 
admin_assistant = Position.create(name: "Administrative Assistant", public: true, industry: business) 
# csm = Position.create(name: "Customer Success Manager", public: true, industry: business) 
# sales_person = Position.create(name: "Sales Specialist", public: true, industry: business) 

social_media_manager = Position.create(name: "Social Media Manager", public: true, industry: marketing)
comm_specialist = Position.create(name: "Communications Specialist", public: true, industry: marketing) 


# Position.create(name: "Dev Support Engineer")
# Position.create(public: true, name: "Communications Specialist", keywords: ["Social Media", "SEO", "CRM", "Mailchimp", "SalesForce", "Hubspot", "Microsoft", "Google Analytics",  "written communications", "Slack"])

# keyword_array = ["React.js", "Angular", "ASP.net", "ASP.NET Core", "Vue.js", "Spring", "Angular.js", "Django", "Flask", "Laravel", "Symfony", "Gatsby", "Drupal", "JavaScript", "HTML", "CSS", "SQL", "Python", "JAVA", "Bash", "Shell", "C#", "PHP", "TypeScript", "C++", "Go", "Kotlin", "Ruby", "Assembly", "VBA", "Swift", "C", "Rust", "Objective-C", "Dart", "Scala", "Haskell", "Julia", "Node.js", ".NET", ".NET CORE", "Pandas", "TensorFlow", "Unity 3D", "Ansible", "Flutter", "Teraform", "Keras", "Cordova", "Xamarin", "Apache Spark", "Torch", "Hadoop", "Unreal Engine", "Puppet", "Chef", "Yarn", "Webpack", "Babel", "SEO", "PostgreSQL", "Microsoft SQL Server", "SQLite", "MongoDB", "Redis", "MariaDB", "Firebase", "Elasticsearch", "DynamoDB", "Cassandra", "IBM DB2", "Couchbase", "Linux", "Docker", "AWS", "Android", "MacOS", "Raspberry Pi", "Microsoft Azure", "Google Cloud", "iOS", "Kubernetes", "Heroku", "Arduino", "IBM Cloud", "Watson", "GitHub", "Git", "Slack", "JIRA", "Gitlab", "Confluence", "Trello", "Stack Overflow", "Facebook Workplace", "R", "JQuery", "Express", "Ruby on Rails", "PowerShell", "Perl", "React Native", "PyTorch", "MySQL", "Oracle", "Windows", "WordPress", "Google Suite", "Microsoft Teams", "CSS3", "HTML5", "REST", "API", "ReactJS", "Golang", "SQS", "Redux", "SASS", "Vue", "Agile", "React", "Selenium", "npm", "Azure", "Continuous integration", "Continuous Delivery", "Continuous Deployment", "Containers", "Analytics", "GitOps", "Serverless", "CCNP", "CISSP", "CCSA", "SAST", "DAST", "Cybersecurity", "GIAC", "MTQQ", "Burp", "NMAP", "Kali", "CEH", "OSCP", "OSCE", "Bug Bounty", "NVD", "threat models", "application security", "Automation", "SIEM", "SOAR", "firewalls", "IDS", "IPS", "SDLC", "pen test", "IAST", "OSS", "OWASP", "TCSEC", "Terraform", "GKE", "EKS", "SAML", "SSO", "GCP", "CASB", "ZTN", "DLP", "EDR", "Safe Harbor", "ISC2", "Nessus", "Snort", "Sysdig", "Ncat", "Burp Suite", "Wireshark", "Netcat", "Metasploit", "Nikto", "CISA", "MVC", "MVVM", "RDBMS", "Viper", "SwiftUI", "CocoaPods", "RxSwift", "Jazzy", "Realm", "Xcode", "iPhone", "e-commerce", "Cocoa", "Humility", "creative independence", "curiosity", "comfort zone", "inspire", "long-term", "responsibility", "highest standards", "lifelong students", "integrity", "independence", "respect", "collaboration", "excellence", "inclusive", "transformation", "humor", "results", "bold", "impact", "fast", "open", "social value", "diverse", "authentic", "empower", "truth", "innovative", "sincere", "collaborative", "playful", "passion", "perspective", "problem-solving", "teamwork", "growth", "customer-obsessed", "make a difference", "innovation", "trust", "customer success", "equality", "merit", "heart", "honesty", "genuine", "exceptional", "involved", "bias for action", "creativity", "customer-focused", "curiousity", "action", "fire", "wow", "rally", "honorable", "{humility;curiosity;comfort zone;creative independence}", "passionate", "diversity", "friendship", "serve", "seize the moment", "hero", "optimize", "experience", "performance", "contribute", "courage", "commitment", "accountability", "service", "grit", "accountable", "leadership", "smile", "ambition", "ideas", "agility", "good judgment", "customer focus", "collaborate", "collective genius", "bold action", "welcoming", "shape the world", "create", "achieve", "innovate", "challenging", "conviction", "change", "end-to-end", "dive deep", "long game", "hope", "power", "discover", "creative freedom", "embrace differences", "transform"]
keyword_ind_array = [{:name=>"React.js", :industry=>"Tech"}, {:name=>"Angular", :industry=>"Tech"}, {:name=>"ASP.net", :industry=>"Tech"}, {:name=>"ASP.NET Core", :industry=>"Tech"}, {:name=>"Vue.js", :industry=>"Tech"}, {:name=>"Spring", :industry=>"Tech"}, {:name=>"Angular.js", :industry=>"Tech"}, {:name=>"Django", :industry=>"Tech"}, {:name=>"Flask", :industry=>"Tech"}, {:name=>"Laravel", :industry=>"Tech"}, {:name=>"Symfony", :industry=>"Tech"}, {:name=>"Gatsby", :industry=>"Tech"}, {:name=>"Drupal", :industry=>"Tech"}, {:name=>"JavaScript", :industry=>"Tech"}, {:name=>"HTML", :industry=>"Tech"}, {:name=>"CSS", :industry=>"Tech"}, {:name=>"SQL", :industry=>"Tech"}, {:name=>"Python", :industry=>"Tech"}, {:name=>"JAVA", :industry=>"Tech"}, {:name=>"Bash", :industry=>"Tech"}, {:name=>"Shell", :industry=>"Tech"}, {:name=>"C#", :industry=>"Tech"}, {:name=>"PHP", :industry=>"Tech"}, {:name=>"TypeScript", :industry=>"Tech"}, {:name=>"C++", :industry=>"Tech"}, {:name=>"Go", :industry=>"Tech"}, {:name=>"Kotlin", :industry=>"Tech"}, {:name=>"Ruby", :industry=>"Tech"}, {:name=>"Assembly", :industry=>"Tech"}, {:name=>"VBA", :industry=>"Tech"}, {:name=>"Swift", :industry=>"Tech"}, {:name=>"C", :industry=>"Tech"}, {:name=>"Rust", :industry=>"Tech"}, {:name=>"Objective-C", :industry=>"Tech"}, {:name=>"Dart", :industry=>"Tech"}, {:name=>"Scala", :industry=>"Tech"}, {:name=>"Haskell", :industry=>"Tech"}, {:name=>"Julia", :industry=>"Tech"}, {:name=>"Node.js", :industry=>"Tech"}, {:name=>".NET", :industry=>"Tech"}, {:name=>".NET CORE", :industry=>"Tech"}, {:name=>"Pandas", :industry=>"Tech"}, {:name=>"TensorFlow", :industry=>"Tech"}, {:name=>"Unity 3D", :industry=>"Tech"}, {:name=>"Ansible", :industry=>"Tech"}, {:name=>"Flutter", :industry=>"Tech"}, {:name=>"Teraform", :industry=>"Tech"}, {:name=>"Keras", :industry=>"Tech"}, {:name=>"Cordova", :industry=>"Tech"}, {:name=>"Xamarin", :industry=>"Tech"}, {:name=>"Apache Spark", :industry=>"Tech"}, {:name=>"Torch", :industry=>"Tech"}, {:name=>"Hadoop", :industry=>"Tech"}, {:name=>"Unreal Engine", :industry=>"Tech"}, {:name=>"Puppet", :industry=>"Tech"}, {:name=>"Chef", :industry=>"Tech"}, {:name=>"Yarn", :industry=>"Tech"}, {:name=>"Webpack", :industry=>"Tech"}, {:name=>"Babel", :industry=>"Tech"}, {:name=>"SEO", :industry=>"Tech"}, {:name=>"PostgreSQL", :industry=>"Tech"}, {:name=>"Microsoft SQL Server", :industry=>"Tech"}, {:name=>"SQLite", :industry=>"Tech"}, {:name=>"MongoDB", :industry=>"Tech"}, {:name=>"Redis", :industry=>"Tech"}, {:name=>"MariaDB", :industry=>"Tech"}, {:name=>"Firebase", :industry=>"Tech"}, {:name=>"Elasticsearch", :industry=>"Tech"}, {:name=>"DynamoDB", :industry=>"Tech"}, {:name=>"Cassandra", :industry=>"Tech"}, {:name=>"IBM DB2", :industry=>"Tech"}, {:name=>"Couchbase", :industry=>"Tech"}, {:name=>"Linux", :industry=>"Tech"}, {:name=>"Docker", :industry=>"Tech"}, {:name=>"AWS", :industry=>"Tech"}, {:name=>"Android", :industry=>"Tech"}, {:name=>"MacOS", :industry=>"Tech"}, {:name=>"Raspberry Pi", :industry=>"Tech"}, {:name=>"Microsoft Azure", :industry=>"Tech"}, {:name=>"Google Cloud", :industry=>"Tech"}, {:name=>"iOS", :industry=>"Tech"}, {:name=>"Kubernetes", :industry=>"Tech"}, {:name=>"Heroku", :industry=>"Tech"}, {:name=>"Arduino", :industry=>"Tech"}, {:name=>"IBM Cloud", :industry=>"Tech"}, {:name=>"Watson", :industry=>"Tech"}, {:name=>"GitHub", :industry=>"Tech"}, {:name=>"Git", :industry=>"Tech"}, {:name=>"Slack", :industry=>"Tech"}, {:name=>"JIRA", :industry=>"Tech"}, {:name=>"Gitlab", :industry=>"Tech"}, {:name=>"Confluence", :industry=>"Tech"}, {:name=>"Trello", :industry=>"Tech"}, {:name=>"Stack Overflow", :industry=>"Tech"}, {:name=>"Facebook Workplace", :industry=>"Tech"}, {:name=>"R", :industry=>"Tech"}, {:name=>"JQuery", :industry=>"Tech"}, {:name=>"Express", :industry=>"Tech"}, {:name=>"Ruby on Rails", :industry=>"Tech"}, {:name=>"PowerShell", :industry=>"Tech"}, {:name=>"Perl", :industry=>"Tech"}, {:name=>"React Native", :industry=>"Tech"}, {:name=>"PyTorch", :industry=>"Tech"}, {:name=>"MySQL", :industry=>"Tech"}, {:name=>"Oracle", :industry=>"Tech"}, {:name=>"Windows", :industry=>"Tech"}, {:name=>"WordPress", :industry=>"Tech"}, {:name=>"Google Suite", :industry=>"Tech"}, {:name=>"Microsoft Teams", :industry=>"Tech"}, {:name=>"CSS3", :industry=>"Tech"}, {:name=>"HTML5", :industry=>"Tech"}, {:name=>"REST", :industry=>"Tech"}, {:name=>"API", :industry=>"Tech"}, {:name=>"ReactJS", :industry=>"Tech"}, {:name=>"Golang", :industry=>"Tech"}, {:name=>"SQS", :industry=>"Tech"}, {:name=>"Redux", :industry=>"Tech"}, {:name=>"SASS", :industry=>"Tech"}, {:name=>"Vue", :industry=>"Tech"}, {:name=>"Agile", :industry=>"Tech"}, {:name=>"React", :industry=>"Tech"}, {:name=>"Selenium", :industry=>"Tech"}, {:name=>"npm", :industry=>"Tech"}, {:name=>"Azure", :industry=>"Tech"}, {:name=>"Continuous integration", :industry=>"Tech"}, {:name=>"Continuous Delivery", :industry=>"Tech"}, {:name=>"Continuous Deployment", :industry=>"Tech"}, {:name=>"Containers", :industry=>"Tech"}, {:name=>"Google Analytics", :industry=>"Tech"}, {:name=>"GitOps", :industry=>"Tech"}, {:name=>"Serverless", :industry=>"Tech"}, {:name=>"CCNP", :industry=>"Tech"}, {:name=>"CISSP", :industry=>"Tech"}, {:name=>"CCSA", :industry=>"Tech"}, {:name=>"SAST", :industry=>"Tech"}, {:name=>"DAST", :industry=>"Tech"}, {:name=>"Cybersecurity", :industry=>"Tech"}, {:name=>"GIAC", :industry=>"Tech"}, {:name=>"MTQQ", :industry=>"Tech"}, {:name=>"Burp", :industry=>"Tech"}, {:name=>"NMAP", :industry=>"Tech"}, {:name=>"Kali", :industry=>"Tech"}, {:name=>"CEH", :industry=>"Tech"}, {:name=>"OSCP", :industry=>"Tech"}, {:name=>"OSCE", :industry=>"Tech"}, {:name=>"Bug Bounty", :industry=>"Tech"}, {:name=>"NVD", :industry=>"Tech"}, {:name=>"threat models", :industry=>"Tech"}, {:name=>"application security", :industry=>"Tech"}, {:name=>"Automation", :industry=>"Tech"}, {:name=>"SIEM", :industry=>"Tech"}, {:name=>"SOAR", :industry=>"Tech"}, {:name=>"firewalls", :industry=>"Tech"}, {:name=>"IDS", :industry=>"Tech"}, {:name=>"IPS", :industry=>"Tech"}, {:name=>"SDLC", :industry=>"Tech"}, {:name=>"pen test", :industry=>"Tech"}, {:name=>"IAST", :industry=>"Tech"}, {:name=>"OSS", :industry=>"Tech"}, {:name=>"OWASP", :industry=>"Tech"}, {:name=>"TCSEC", :industry=>"Tech"}, {:name=>"Terraform", :industry=>"Tech"}, {:name=>"GKE", :industry=>"Tech"}, {:name=>"EKS", :industry=>"Tech"}, {:name=>"SAML", :industry=>"Tech"}, {:name=>"SSO", :industry=>"Tech"}, {:name=>"GCP", :industry=>"Tech"}, {:name=>"CASB", :industry=>"Tech"}, {:name=>"ZTN", :industry=>"Tech"}, {:name=>"DLP", :industry=>"Tech"}, {:name=>"EDR", :industry=>"Tech"}, {:name=>"Safe Harbor", :industry=>"Tech"}, {:name=>"ISC2", :industry=>"Tech"}, {:name=>"Nessus", :industry=>"Tech"}, {:name=>"Snort", :industry=>"Tech"}, {:name=>"Sysdig", :industry=>"Tech"}, {:name=>"Ncat", :industry=>"Tech"}, {:name=>"Burp Suite", :industry=>"Tech"}, {:name=>"Wireshark", :industry=>"Tech"}, {:name=>"Netcat", :industry=>"Tech"}, {:name=>"Metasploit", :industry=>"Tech"}, {:name=>"Nikto", :industry=>"Tech"}, {:name=>"CISA", :industry=>"Tech"}, {:name=>"MVC", :industry=>"Tech"}, {:name=>"MVVM", :industry=>"Tech"}, {:name=>"RDBMS", :industry=>"Tech"}, {:name=>"Viper", :industry=>"Tech"}, {:name=>"SwiftUI", :industry=>"Tech"}, {:name=>"CocoaPods", :industry=>"Tech"}, {:name=>"RxSwift", :industry=>"Tech"}, {:name=>"Jazzy", :industry=>"Tech"}, {:name=>"Realm", :industry=>"Tech"}, {:name=>"Xcode", :industry=>"Tech"}, {:name=>"iPhone", :industry=>"Tech"}, {:name=>"e-commerce", :industry=>"Tech"}, {:name=>"Cocoa", :industry=>"Tech"}, {:name=>"Humility", :industry=>"General"}, {:name=>"creative independence", :industry=>"General"}, {:name=>"curiosity", :industry=>"General"}, {:name=>"comfort zone", :industry=>"General"}, {:name=>"inspire", :industry=>"General"}, {:name=>"long-term", :industry=>"General"}, {:name=>"responsibility", :industry=>"General"}, {:name=>"highest standards", :industry=>"General"}, {:name=>"lifelong student", :industry=>"General"}, {:name=>"integrity", :industry=>"General"}, {:name=>"independence", :industry=>"General"}, {:name=>"respect", :industry=>"General"}, {:name=>"collaboration", :industry=>"General"}, {:name=>"excellence", :industry=>"General"}, {:name=>"inclusive", :industry=>"General"}, {:name=>"transformation", :industry=>"General"}, {:name=>"humor", :industry=>"General"}, {:name=>"results", :industry=>"General"}, {:name=>"bold", :industry=>"General"}, {:name=>"impact", :industry=>"General"}, {:name=>"fast", :industry=>"General"}, {:name=>"open", :industry=>"General"}, {:name=>"social value", :industry=>"General"}, {:name=>"diverse", :industry=>"General"}, {:name=>"authentic", :industry=>"General"}, {:name=>"empower", :industry=>"General"}, {:name=>"truth", :industry=>"General"}, {:name=>"innovative", :industry=>"General"}, {:name=>"sincere", :industry=>"General"}, {:name=>"collaborative", :industry=>"General"}, {:name=>"playful", :industry=>"General"}, {:name=>"passion", :industry=>"General"}, {:name=>"perspective", :industry=>"General"}, {:name=>"problem-solving", :industry=>"General"}, {:name=>"teamwork", :industry=>"General"}, {:name=>"growth", :industry=>"General"}, {:name=>"customer-obsessed", :industry=>"General"}, {:name=>"make a difference", :industry=>"General"}, {:name=>"innovation", :industry=>"General"}, {:name=>"trust", :industry=>"General"}, {:name=>"customer success", :industry=>"General"}, {:name=>"equality", :industry=>"General"}, {:name=>"merit", :industry=>"General"}, {:name=>"heart", :industry=>"General"}, {:name=>"honesty", :industry=>"General"}, {:name=>"genuine", :industry=>"General"}, {:name=>"exceptional", :industry=>"General"}, {:name=>"involved", :industry=>"General"}, {:name=>"bias for action", :industry=>"General"}, {:name=>"creativity", :industry=>"General"}, {:name=>"customer-focused", :industry=>"General"}, {:name=>"curiousity", :industry=>"General"}, {:name=>"action", :industry=>"General"}, {:name=>"fire", :industry=>"General"}, {:name=>"wow", :industry=>"General"}, {:name=>"rally", :industry=>"General"}, {:name=>"honorable", :industry=>"General"}, {:name=>"{humility;curiosity;comfort zone;creative independence}", :industry=>"General"}, {:name=>"passionate", :industry=>"General"}, {:name=>"diversity", :industry=>"General"}, {:name=>"friendship", :industry=>"General"}, {:name=>"serve", :industry=>"General"}, {:name=>"seize the moment", :industry=>"General"}, {:name=>"hero", :industry=>"General"}, {:name=>"optimize", :industry=>"General"}, {:name=>"experience", :industry=>"General"}, {:name=>"performance", :industry=>"General"}, {:name=>"contribute", :industry=>"General"}, {:name=>"courage", :industry=>"General"}, {:name=>"commitment", :industry=>"General"}, {:name=>"accountability", :industry=>"General"}, {:name=>"service", :industry=>"General"}, {:name=>"grit", :industry=>"General"}, {:name=>"accountable", :industry=>"General"}, {:name=>"leadership", :industry=>"General"}, {:name=>"smile", :industry=>"General"}, {:name=>"ambition", :industry=>"General"}, {:name=>"ideas", :industry=>"General"}, {:name=>"agility", :industry=>"General"}, {:name=>"good judgment", :industry=>"General"}, {:name=>"customer focus", :industry=>"General"}, {:name=>"collaborate", :industry=>"General"}, {:name=>"collective genius", :industry=>"General"}, {:name=>"bold action", :industry=>"General"}, {:name=>"welcoming", :industry=>"General"}, {:name=>"shape the world", :industry=>"General"}, {:name=>"create", :industry=>"General"}, {:name=>"achieve", :industry=>"General"}, {:name=>"innovate", :industry=>"General"}, {:name=>"challenging", :industry=>"General"}, {:name=>"conviction", :industry=>"General"}, {:name=>"change", :industry=>"General"}, {:name=>"end-to-end", :industry=>"General"}, {:name=>"dive deep", :industry=>"General"}, {:name=>"long game", :industry=>"General"}, {:name=>"hope", :industry=>"General"}, {:name=>"power", :industry=>"General"}, {:name=>"discover", :industry=>"General"}, {:name=>"creative freedom", :industry=>"General"}, {:name=>"embrace differences", :industry=>"General"}, {:name=>"transform", :industry=>"General"}]
keyword_ind_array.each do |kw| 
	keyword = Keyword.create(name: kw[:name], lower_case: kw[:name].downcase)
	keyword.industries << Industry.find_by(name: kw[:industry])
end

def importKeywords(position, top_skills, industry)
	top_skills.each do |kw|
		keyword = ""
		if Keyword.find_by(lower_case: kw.downcase)		
			keyword = Keyword.find_by(lower_case: kw.downcase)
		else
			keyword = Keyword.create(name: kw, lower_case: kw.downcase)
			keyword.industries << industry
		end
		position.keywords << keyword
	end	
end

social_media_manager_ts = ["SEO", "PR", "digital", "Canva", "email", "Adobe", "multi-channel", "Google Anlaytics", "KPI", "e-commerce"]
importKeywords(social_media_manager, social_media_manager_ts, marketing)

comm_specialist_ts = ["Social Media", "SEO", "CRM", "Mailchimp", "SalesForce", "Hubspot", "Microsoft", "Google Analytics",  "written communications", "Slack"]
importKeywords(comm_specialist, comm_specialist_ts, marketing)

account_manager_ts = ["business development", "team player", "conversation", "Salesforce", "C-level", "enterprise", "SaaS", "B2B", "relationships", "CRM"]
importKeywords(account_manager, account_manager_ts, business)

admin_assistant_ts = ["written communication", "verbal communication", "Microsoft Office", "meet deadlines", "detail-oriented", "coordinate", "project management", "organized", "Concur", "time management"]
importKeywords(admin_assistant, admin_assistant_ts, business)

financial_analyst_top_skills = ["forecasting", "CPA", "invoicing", "GAAP", "financial statements", "financial modeling", "Excel", "asset management", "Bloomberg", "P&L"]
financial_analyst_top_skills.each do |kw|
	keyword = ""
	if Keyword.find_by(lower_case: kw.downcase)		
		keyword = Keyword.find_by(lower_case: kw.downcase)
		keyword.industries << business if !keyword.industries.include?(business)
	else
		keyword = Keyword.create(name: kw, lower_case: kw.downcase)
		keyword.industries << business
	end
	financial_analyst.keywords << keyword
end



frontend_top_skills = ["HTML", "CSS", "JavaScript", "JQuery", "React", "Vue", "Agile", "Git", "Selenium", "npm"]
frontend_top_skills.each do |kw|
	keyword = ""
	if Keyword.find_by(lower_case: kw.downcase)		
		keyword = Keyword.find_by(lower_case: kw.downcase)
	else
		keyword = Keyword.create(name: kw, lower_case: kw.downcase)
		keyword.industries << tech
	end
	front_end.keywords << keyword
end


fs_top_skills = ["JavaScript", "Python", "HTML", "CSS", "Node.js", "MySQL", "PostgreSQL", "AWS", "Git", "Docker"]
fs_top_skills.each do |kw|
	keyword = ""
	if Keyword.find_by(lower_case: kw.downcase)		
		keyword = Keyword.find_by(lower_case: kw.downcase)
	else
		keyword = Keyword.create(name: kw, lower_case: kw.downcase)
		keyword.industries << tech
	end
	fs.keywords << keyword
end



dev_ops_skills = ["Continuous integration", "Continuous Delivery", "Continuous Deployment", "Containers", "Kubernetes", "Analytics", "GitOps", "AWS", "Serverless", "JIRA"]
dev_ops_skills.each do |kw|
	keyword = ""
	if Keyword.find_by(lower_case: kw.downcase)		
		keyword = Keyword.find_by(lower_case: kw.downcase)
	else
		keyword = Keyword.create(name: kw, lower_case: kw.downcase)
		keyword.industries << tech
	end
	dev_ops.keywords << keyword
end



sec_eng_skills = ["Wireshark", "Nmap", "Netcat", "Metasploit", "Nikto", "Burp", "Nessus", "Snort", "CISSP", "CISA"]
sec_eng_skills.each do |kw|
	keyword = ""
	if Keyword.find_by(lower_case: kw.downcase)		
		keyword = Keyword.find_by(lower_case: kw.downcase)
	else
		keyword = Keyword.create(name: kw, lower_case: kw.downcase)
		keyword.industries << tech
	end
	sec_eng.keywords << keyword
end



ios_eng_skills = ["Swift", "Objective-C", "Xcode", "CocoaPods", "MVVM", "Viper", "RxSwift", "Jazzy", "SQL", "Realm"]
ios_eng_skills.each do |kw|
	keyword = ""
	if Keyword.find_by(lower_case: kw.downcase)		
		keyword = Keyword.find_by(lower_case: kw.downcase)
	else
		keyword = Keyword.create(name: kw, lower_case: kw.downcase)
		keyword.industries << tech
	end
	ios_eng.keywords << keyword
end




# TROUBLESOME KEYWORDS
Keyword.find_by(name: "C").update(public: false)
Keyword.find_by(name: "C++").update(public: false)
Keyword.find_by(name: "R").update(public: false)
Keyword.find_by(name: "Go").update(public: false)
Keyword.find_by(name: "Go").update(public: false)
# Keyword.find_by(name: "HTML5").update(public: false)
Keyword.find_by(name: "PR").update(public: false)
Keyword.find_by(name: "open").update(public: false)


