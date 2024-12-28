#   InfraToCode - ACIOps

![Project Banner](https://i.imgur.com/aNPg18I.png)


## Overview

ACIOps is a comprehensive management tool designed specifically for Day 2 operations of Cisco ACI environments. It empowers infrastructure teams to monitor and configure any object within their ACI deployment with precision and ease. 


## Features ✨

**Infrastructure Monitoring**: <br/> 
In Cisco ACI, all elements are organized into classes, covering configurations, interface states, routing tables, fault data, health metrics, and more. ACIOps provides comprehensive access to these classes for in-depth monitoring. It allows users to set alerts for changes, threshold breaches, or missing parameters within a class. This real-time monitoring enables quick response to network shifts, enhancing infrastructure oversight and ensuring optimal performance through proactive management and rapid troubleshooting.

**Capture Infrastructure State**: <br/>
ACIOps speeds up troubleshooting by providing immediate access to critical data during incidents. It captures the infrastructure’s state before and after a fault, offering insights into changes that may have triggered or resulted from the issue. For example, if an L3OUT fault disrupts routing, ACIOps allows you to compare data before and after, helping you quickly pinpoint the cause and impact.

**Fabric Configuration Automation**:
ACIOps integrates with Terraform to deploy and manage Cisco ACI configurations, streamlining complex network setups as code. This integration enhances automation and scalability by using Terraform’s declarative syntax to define ACI resources, making it easy to version and replicate configurations. It reduces manual errors, supports modular setups, and helps network engineers scale or adapt ACI deployments efficiently.

**AI Integration**:
ACIOps integrates with OpenAI to assist engineers in diagnosing fabric faults and providing insights on effective solutions. By leveraging AI-driven recommendations, engineers gain valuable context and actionable ideas to quickly address issues and maintain network stability.

**Contracts Inspector**:
Specify a source IP and destination IP to determine if a particular port is permitted between the specified EPGs. The Contracts Inspector provides visibility into all related contracts, subjects, and filters configured for the source and destination EPG combination. Additionally, it shows where these contracts are consumed and provided across other EPGs, offering a comprehensive view of access control configurations within the ACI environment.


## Prerequisites
- Deployment: Docker and Docker Compose

## Installation
* Create a file named `docker-compose.yaml` and insert the provided docker-compose configuration into this file.
* Create a file named `Dockerfile` and insert the provided Dockerfile configuration into this file.

The directory should initially look like the tree map below.

```plaintext

directory/
├── Dockerfile
└── docker-compose.yaml

```

* Run the command below to download and instantiate all the containers.
```bash
docker-compose up -d --build
```

## Documentation
https://aciops-documentation.infratocode.com

## Video Playlist
https://www.youtube.com/playlist?list=PLGDLooVCc13MYmTMZrhHDCLZ6h0KOvZLT

## Contact
https://infratocode.com/contact

