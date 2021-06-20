# UCB-Project-1-ELK-Stack
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Diagram.png](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

![Install-elk.yml]

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting traffic to the network.
-What aspect of security do load balancers protect? What is the advantage of a jump box?_
 Load balancers protect your network from a Denial of Service attacks by properly distributing the connections to your network among multiple machines. The advantage of a        jumpbox is that you limit the access to your network by creating this single access point to the VMs in your network.   
 
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system metrics.
 What does Filebeat watch for?- Filebeat monitors logs or locations that you specify aswell as collects log events.
 What does Metricbeat record?- Metricbeat records system metrics such as uptime and resource usage. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address    | Operating System |
|----------|----------|---------------|------------------|
| Jump Box | Gateway  | 104.40.85.151 | Linux            |
| Web-1    |  DVWA    | 168.62.20.60  | Linux            |
| Web-2    |  DVWA    | 168.62.20.60  | Linux            |
| Web-3    |  DVWA    | 168.62.20.60  | Linux            |
| Elk-1    | ELK Stack| 20.102.66.182 | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP address:
-99.57.29.72

Machines within the network can only be accessed by the Jumpbox.
-Which machine did you allow to access your ELK VM? What was its IP address?_
 Only my personal machine (99.57.29.72) was allowed to access the ELK VM.
 
A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |     Yes             | 99.57.29.72          |
|  web-1   |      No             |                      |
|  web-2   |      No             |                      |
|  web-3   |      No             |                      |
|  ELK-vm  |      No             |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
-What is the main advantage of automating configuration with Ansible?
- The main advantage with using Ansible is being able to install containers to any machine, so if a new machine need to be added to your network or a machine needed to be replaced, you could easily install the proper containers to the machine.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- 1. Step 1 install docker.io
- 2. Step 2 install python3-pip
- 3. Step 3 install docker module
- 4. step 4 run a sysctl module command vm.max_map_count 262144
- 5. Step 5 download and launch docker elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![docker_ps_ouput.png](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.4
- 10.0.0.5
- 10.0.0.6

We have installed the following Beats on these machines:
- Metricbeat
- Filebeat

These Beats allow us to collect the following information from each machine:
- Metricbeat collects system metrics which can be used to track the uptime of the monitered systems.
- Filebeat moniters specified logs and will then send event data to a specified location.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the yaml file to Ansible container.
- Update the hosts file to include the IP addresses of the VMs in the proper group
- Run the playbook, and navigate to http://20.102.66.182:5601/app/kibana to check that the installation worked as expected.

- Which file is the playbook? Where do you copy it? - the yaml file is the playbook. You copy it to the Ansible container.

- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?  - You need to update the /etc/ansible/hosts file to make ansible run the playbook on the specified machines. In order to specify the machines, you would need to add their IP address to the proper groups, then state that group in your playbook.

- _Which URL do you navigate to in order to check that the ELK server is running? - http://20.102.66.182:5601/app/kibana
