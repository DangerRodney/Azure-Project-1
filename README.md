# Azure-Project-1
Azure Network
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(https://github.com/DangerRodney/Azure-Project-1/blob/main/Diagram.JPG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YML file may be used to install only certain pieces of it, such as Filebeat.

Enter the playbook file.
(https://github.com/DangerRodney/Azure-Project-1/blob/main/ansible/my_playbook.yml)


This file is and example configuration file highlighing onlt the most common options. The Filebeat.reference.yml file from the same directory 
contains all the supported options #with more comments. You can use it as a reference.
# You can find the full configuration reference here:
# https://www.elastic.co/guide/en/beats/filebeat/index.html

# For more available modules and options, please see the filebeat.reference.yml sample configuration file.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
- Beats in Use
- Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting traffic to the network.

What aspect of security do load balancers protect? What is the advantage of a jump box?

Load Balancers protect from Deniel of Service attacks. The advantage of the jump box is Jump boxes are usually used for a system tool that needs to connect directly to the devices on the security zone in question.
When a jump box is used, its benefit is that any tools in place for the system are maintained on that single system. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.
What does Filebeat watch for? Filebeat monitors log files or locations that you can specify. 
What does Metricbeat record? Metric Beat records metrics from the operating system and services running on the server.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address   | Operating System |
|----------|----------|------------  |------------------|
| Jump Box |Gateway|40.85.150.255   |Linux              |
| Web-1    |Web VM |13.64.78.11 or 10.0.0.5|Linux       |
| Web-2    |Web VM |13.64.78.11 or 10.0.0.6|Linux       |
| ElkEast  |Elk Server|10.1.0.5     |Linux              |
| DVWA-VM-2|DVWA-VM|10.0.0.8        |Linux              |
 
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the virtual machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 Add whitelisted:
 My ipv4: 24.6.196.240

Machines within the network can only be accessed by the Jump Box.
Which machine did you allow to access your ELK VM? What was its IP address?
Jump Box - 40.85.150.255
My Ipv4 - 24.6.196.240

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 40.85.150.255        |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

What is the main advantage of automating configuration with Ansible?

The primary benefit of Ansible is it allows IT administrators to automate.
Ansible is a radically simple IT automation engine that automates cloud provisioning, configuration management, application deployment, intra-service orchestration, and many other IT needs.

The playbook implements the following tasks:
In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- .Disable Firewall and Access Controls secureing ports
- .Install Elastisearch with config and playbook YAML files
- .Install Kibana with config and playbook YAML files
- .Install Logstash with config and playbook YAML files
- .Connect via IPaddress in search engine 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(https://github.com/DangerRodney/Azure-Project-1/blob/main/ELK%20Pictures/Elk%20to%20Docker.JPG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
List the IP addresses of the machines you are monitoring:

40.85.150.255 

13.64.78.11 or 10.0.0.5

13.64.78.11 or 10.0.0.6

10.0.0.8

We have installed the following Beats on these machines:
Specify which Beats you successfully installed

WEB-1
WEB-2
DVWA-WEB-1
DVWA-WEB-2

These Beats allow us to collect the following information from each machine:
In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

File-beat: Collects logs and data that can easily be displayed on the Kibana webpage.
Metric-beat: Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. 
Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Ansible.config file to my-playbook.yml 
- Update the Ansible file to include Ip ranges: All IP ranges for Web VMs
- Run the playbook, and navigate to container (Container name: Strange_Diffie) to check that the installation worked as expected.

Answer the following questions to fill in the blanks:
Which file is the playbook? Where do you copy it? 
A YAML File. In the Ansible container.

Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
1. $nano my_playbook.yml update tables and IP ranges and run: ansible-config.yml my_playbook.yml
2. You would update hosts files and specify the machines by putting them under the correct group: One being the Elk group and webservers group. 

Which URL do you navigate to in order to check that the ELK server is running?

IP Adress:5601/app/kibana or 40.85.150.255:5601/app/kibana
