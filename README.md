# Background

Visio remains to this day an industry standard for the depiction of IT infrastructure from both a conceptual and design perspective, over the years I have built diagrams using Visio stencils created by Microsoft and the IT Tech community to convey my ideas accurately and effectively as design documentation. 

Over a year ago I set out to locate current, up to date and relevant Visio stencils for Azure with the intent on building reference architecture patterns for Azure services that could be used as templates for design material. Unfortunately my search came up short and I found that Microsoft had shifted from providing Visio stencils in favor of more application generic Scalable Vector Graphic (SVG) icons for Azure services and configuration items. 

SVG's can easily be imported into Visio and due to the file format supporting raster scaling with no loss of image quality these icons work great. The issue however when working with Visio is that functionality wise these icons are tedious to work with. Some examples of what I mean: -

- **No connection points** (when you draw a line from icon A to icon B, Visio will either attach the line to the icon edge or the center)
- **No properly positioned text field** (when adding descriptive text to the icon Visio will place the text at the center of the icon, requiring manual repositioning)
- **Import size is dependent on the source SVG view box and scale** (depending on the source file, when it is dropped onto a drawing it may need to be down/up sized to match the scale of other icons)
- **Lack of programmability** (having icons in a stencil allows you to leverage PowerShell or other languages to programmatically draw diagrams)

With these limitations and the lack of standardized up to date stencils I set out on a personal mission to build my own functional, relevant and as up to date as possible Visio stencil for anyone to use. With permission (and the only caveat that I maintain an up to date collection) from the Microsoft Cloud and Enterprise team to build an icon collection based on the publicly available icons, I built a fully programmatic method to build a stencil collection using SVG's as the source icons. 

# My process and methodology

## **Project ultimate goal**

### ***Function > Ease of use > Form***

This is my driving factor behind this project. I know that others prefer drawing tools such as Draw.io but Visio offers an amazing amount of capability from a programmatic perspective. Icons need to not just be pretty images, they need technical function with the ability to be used easily. Proper stencil objects with pre-defined mathematically perfect placed connection points make drawing by hand or script so much easier. The icon itself although important is third on my priority list and will always remain so. I want these stencils to be as useful as possible while maintaining the relevance and breath of Azure services.

### **First a bit of history for this project**

I started with a collection process, gathering as many useful and up to date SVG icons as possible and collating them in a folder with a descriptive naming convention and classification. I initially started by dragging an icon onto the Visio drawing canvas and then adding in connection points for North, East, South and West of the icon and moving the text box to the bottom of the icon. After that I scaled the icon using a guide background box to be either 20mm wide or 20mm high before dropping it into my stencil and entering in it's service name. 

Now I am pretty good at performing mundane repetitive operations like this and with a few key bind mappings\macros on a gaming mouse I was able to process each icon in around 45 seconds. Problem was that I had 300 plus icons to work through. Initially I just sucked it up and processed each one manually, after just under four hours and at least 3,600 mouse clicks, I had a functional stencil. 

However things started getting messy when Microsoft updated a huge collection of Azure Service icons a short while after I was finished that made my version irrelevant.  So I looked for a better way to build this stencil, as I knew that that Microsoft would forever be adding new services to Azure and or refreshing current service icons (which is a good thing by the way!) and I just did not have the time or energy to perform a few thousand mouse clicks after each version update.  

## **My method of building**

Enter PowerShell and the Visio COM application method. If you review my version history below you will see that this project has evolved significantly since I started and I have built a full import and conversion process that performs the following. 

1. Scans a build directory for SVG's and sorts a list of icons by name 
2. Launches Visio as a COM application and performs a page drop for the SVG
3. Gets the current width and height of the icon and scales up or down until either the width or height of the icon is 20mm
4. Adds Shape data placeholders to support adding metadata when using PowerShell to enumerate Azure resources such as ResourceID for example
5. Adds connection points to the icon (North, East, South, West, South of Textbox, North East, South East, South West and North West)
6. Adds a slight drop shadow to the icon (Removed in version 4.6)
7. Repositions the default text field to the bottom of the icon
8. Drops the icon into the main stencil and another copy into the by category stencil
9. Adds metadata to the stencil master such as Name, Hover, Search (Including the category and icon name)
10. Imports my drawing tools from a stencil 
11. Sorts all of the imported icons into a grid for inspection and then export to PNG as a visual index for the stencil content
12. Exports out a high resolution PNG and SVG version of the now re-scaled icon for use in other applications
13. Saves everything to my GitHub Repo staging folder   

With this process I can build and re-build over and over again in minutes and this allows me to keep this collection up to date and focus on adding more functionality. 

### SVG image of the current full stencil content

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Example_All-Icons_V-4.6.svg)

Some example images to show stencil functionality: -

### **Source SVG files**

This is where I pick up the source SVG Files, using an _ as a delimiter this allows me to classify the type of icon for the grouping process.

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SourceFiles.png)

### **Connection points**

Exact connection points relative to the center of the icon

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Connection-Points.png)

### **Connection point usage**

Easily connect to and from the icon in multiple directions

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Connection-Point-Example.png)

### **Shape Data**

Coming soon, super awesome programmatic diagram creation. Enumerating resources from Azure and then populating the resources into Visio and adding the relevant metadata to the shape. This unlocks a massive initiative I am working on which is a reverse of this. Design in Visio, add Azure metadata and then push the deployment to Azure via PowerShell. 

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Shape-Data.png)

## Sponsorship

If you would like to support my development or just say thank you! Then check out my Sponsorship page:-

-  https://github.com/sponsors/David-Summers 

## Stencil Usage

Download only what you need or the entire collection using the links below. 

### **Option 1 - Download the single stencil file that contains all of the icons and drawing tools**

- https://github.com/David-Summers/Azure-Design/raw/master/Azure_All-Icons_V-4.6.vssx

### Option 2 - Download the latest full ZIP package containing all stencils, PNG and SVG versions.

- https://github.com/David-Summers/Azure-Design/raw/master/V-4.6.zip

### **Option 3 - Download just the category stencil files that you need** 

- https://github.com/David-Summers/Azure-Design/raw/master/Azure_AI_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Application_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Compute_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Data_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Deployment_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Drawing-Tools_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/blob/master/Azure_Dynamics%20365_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Endpoint_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Generic_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Identity_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_IoT_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Management_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Networking_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Office365_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Security_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Storage_V-4.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Workload_V-4.6.vssx

### **Option 4 - Don't use Visio?**

You also have the PNG and SVG versions of the Icons, they have been scaled the same way as the stencil and can be used in other applications. 



## Installation

Download the stencil(s) and save to your "My Shapes" folder (normally under "C:\ Users \ %YourUserName% \Documents \My Shapes")

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Collection-Example.png)

### Special note on Search

A few versions ago I added search metadata to each icon, this was a massive feature add and really tricky to work out via the Visio COM. However after publishing this update I received heaps of feedback that search was not working. I posted a Twitter poll about this and surprisingly 50% responded that search was working! 

This is a quirk of Visio going back to 2007 and I figured out the right combination of settings that "should" work for you. 

First, ensure that your Windows Search service is actually running

Next, ensure that your Windows Indexing settings for VSSX files is enabled to index content as below. 

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Indexing%20Options.jpg)

Next, ensure your Shapes folder is enabled for indexing.

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Folder%20Index%20Options.jpg)

Next, ensure that Visio has the following setting under Shape Search to match on any word

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Visio%20Options.jpg)

Finally, and this was the main showstopper for many. Visio will only provide results if the Stencil is in English (United States) locale AND (This is the important bit) if you open a new document using US Units of measure then you will receive search results! Metric = No results :( 

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/New%20Document%20Options.jpg)

To assist in part with the above, in version 3.1 I changed the Stencil locale from English Australia to English United States. Hopefully the other suggestions above will get search working for you and as an example on my Windows 10 with Visio 2016 install, search is working for me. 

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Working%20Search%20Example.jpg)

## Roadmap

See the [open issues](https://github.com/David-Summers/Azure-Design/issues) for a list of proposed features (and known issues).

## Contact

Twitter is my primary communication method and if you would like to discuss this project, follow me for updates (Including my Azure News bot) or just talk tech in general then add me to your follower list. Alternatively you can do the same via LinkedIn.

- **Twitter - https://twitter.com/Xeeva_D3**
- **LinkedIn - https://au.linkedin.com/in/djsummers**

## Version History

### Current

#### Version 4.5 - 09/02/2024

Apologies, it has been a while since my last update. H2 of last year was quite busy for me. 

Drop Shadow has been removed from the Visio stencils, based on community feedback I decided to remove the shadow as it impacted non Visio programs rendering imported icons correctly. 

80 new or updated Icons, including the Entra family rebranding.

| Category    | Icon                                           | Status  |
| ----------- | ---------------------------------------------- | ------- |
| AI          | AIOps - Data Connector                         | New     |
| AI          | AIOps - Data LakeHouse                         | New     |
| AI          | Azure AI Studio                                | New     |
| AI          | Computer Vision                                | Updated |
| AI          | Content Safety                                 | New     |
| AI          | Custom Vision                                  | Updated |
| AI          | Microsoft Fabric                               | Updated |
| AI          | Speech Service                                 | Updated |
| Application | APC Gateway                                    | New     |
| Application | APC Operator API Connection                    | New     |
| Application | APC Operator API Plan                          | New     |
| Application | API Center                                     | New     |
| Application | App Spaces                                     | New     |
| Application | Event Grid Namespace                           | New     |
| Application | Integration Environment                        | New     |
| Application | Managed CCF App                                | New     |
| Application | SignalR Replica                                | New     |
| Application | Web PubSub for Socket.IO                       | New     |
| Application | Web PubSub Service Replica                     | New     |
| Compute     | Agent Pool (Operator Nexus)                    | New     |
| Compute     | Apache Airflow                                 | New     |
| Compute     | AVD App Attach Package                         | New     |
| Compute     | AVD Application Group                          | New     |
| Compute     | AVD Per-user Access Pricing                    | New     |
| Compute     | AVD Scaling Plan                               | New     |
| Compute     | AVD User                                       | Updated |
| Compute     | AVD                                            | Updated |
| Compute     | Azure HDInsight on AKS                         | New     |
| Compute     | Cluster Manager (Operator Nexus)               | New     |
| Compute     | Clusters (Operator Nexus)                      | New     |
| Compute     | Community Image                                | New     |
| Compute     | Community Training                             | New     |
| Compute     | HDInsight on AKS Cluster Pool                  | New     |
| Compute     | HDInsight on AKS Cluster                       | New     |
| Compute     | Hybrid AKS Cluster (Operator Nexus)            | New     |
| Compute     | Kubernetes Cluster (Operator Nexus)            | New     |
| Compute     | Operator Nexus                                 | New     |
| Data        | Data LakeHouse                                 | New     |
| Data        | Data Type                                      | New     |
| Data        | Oracle Database                                | New     |
| Data        | Oracle Subscription                            | New     |
| Identity    | Entra Authentication Method                    | Updated |
| Identity    | Entra Connect Health                           | Updated |
| Identity    | Entra Domain Service                           | Updated |
| Identity    | Entra Global Secure Access                     | Updated |
| Identity    | Entra ID Governance                            | Updated |
| Identity    | Entra ID                                       | Updated |
| Identity    | Entra Internet Access                          | Updated |
| Identity    | Entra Private Access                           | Updated |
| Identity    | Entra                                          | Updated |
| Identity    | Guest Usage                                    | Updated |
| IoT         | IoT Asset                                      | New     |
| Management  | Azure Arc Custom Location                      | New     |
| Management  | Azure Arc IoT                                  | New     |
| Management  | Billing Subscription                           | New     |
| Management  | Bulk Operation                                 | New     |
| Management  | Business Continuity Center                     | New     |
| Management  | Carbon Emission Details                        | New     |
| Management  | Carbon Emission Reductions                     | New     |
| Management  | Carbon Optimisation                            | New     |
| Management  | Carbon Reductions                              | New     |
| Management  | Cluster Metrics Configuration (Operator Nexus) | New     |
| Management  | Dashboard Hub                                  | New     |
| Management  | Data Connectors                                | New     |
| Management  | Extended Security Update                       | New     |
| Management  | Operator Insights – Data Products              | New     |
| Management  | Playwright Testing                             | New     |
| Management  | Policy Initiative                              | Updated |
| Management  | Professional Services                          | New     |
| Management  | Savings Plan                                   | New     |
| Networking  | Application Gateways for Containers            | New     |
| Networking  | Data Collection Endpoint                       | New     |
| Networking  | IP Address Pool                                | New     |
| Networking  | Site                                           | New     |
| Security    | Azure Key Vault Managed HSM                    | New     |
| Security    | BitLocker Key                                  | New     |
| Security    | Cloud NGFW                                     | New     |
| Security    | Local Rulestack for Cloud NGFW                 | New     |
| Storage     | Storage Actions                                | New     |
| Storage     | Storage Task                                   | New     |

### Previous

#### **Version** 4.5 - 09/07/2023

24 new icons including the new Fabric service. I think I need a faster computer now as this build total process is now clocking in at 4 hours.

| Category    | Icon                                           | Status  |
| ----------- | ---------------------------------------------- | ------- |
| AI          | Computer Vision                                | Updated |
| AI          | Content Safety                                 | New     |
| AI          | Custom Vision                                  | Updated |
| AI          | Microsoft Fabric                               | New     |
| AI          | Speech Service                                 | Updated |
| Application | App Spaces                                     | New     |
| Application | Event Grid Namespace                           | New     |
| Application | SignalR Replica                                | New     |
| Application | Web PubSub Service Replica                     | New     |
| Compute     | Cluster Manager (Operator Nexus)               | New     |
| Compute     | Clusters (Operator Nexus)                      | New     |
| Compute     | Hybrid AKS Cluster (Operator Nexus)            | New     |
| Compute     | Kubernetes Cluster (Operator Nexus)            | New     |
| Data        | Data LakeHouse                                 | New     |
| Management  | Billing Subscription                           | New     |
| Management  | Bulk Operation                                 | New     |
| Management  | Cluster Metrics Configuration (Operator Nexus) | New     |
| Management  | Data Connectors                                | New     |
| Management  | Savings Plan                                   | New     |
| Networking  | Application Gateways for Containers            | New     |
| Security    | Azure Key Vault Managed HSM                    | New     |
| Security    | BitLocker Key                                  | New     |
| Security    | Cloud NGFW                                     | New     |
| Security    | Local Rulestack for Cloud NGFW                 | New     |

#### **Version** 4.4 - 21/03/2023

Released 54 new or updated icons. This brings the total collection up to 1,108 icons! and still the most up to date repository I can find on the Net :D 

Resolved an issue with SVG's being imported into Draw.IO. Prior to this release the images would import in with a 1x1px size. Turns out this is an issue with my PowerShell export process using Visio to re-export my stencils to new SVGs after resizing them. This method breaks the Width and Height values. This was fine for Office Applications, but Draw.IO needed these values to render the icons in the right sizing. Had to build a script to read the last 2 values of the ViewBox element and re-write the width and height values at the root of the SVG element after the export. 

| Category    | Icon                                             | Status  |
| ----------- | ------------------------------------------------ | ------- |
| AI          | Virtual Appointments Builder                     | New     |
| Application | API Management API                               | Updated |
| Application | API Management Authorisation                     | New     |
| Application | API Management External Cache                    | Updated |
| Application | API Management Gateway                           | New     |
| Application | API Management Location                          | New     |
| Application | API Management Named Value                       | Updated |
| Application | API Management Policy Fragment                   | New     |
| Application | API Management Power Platform                    | Updated |
| Application | API Management Product                           | Updated |
| Application | API Management Scale Out (auto-scale)            | New     |
| Application | API Management Schema                            | New     |
| Application | App Service API                                  | New     |
| Application | Wordpress and MySQL Flexible server              | New     |
| Compute     | AKS Cluster Configuration                        | New     |
| Compute     | AKS Configuration                                | New     |
| Compute     | AKS Deployment Center                            | New     |
| Compute     | AKS GitOps                                       | New     |
| Compute     | AKS Hybrid Cluster                               | New     |
| Compute     | AKS Namespace                                    | New     |
| Compute     | AKS Node Pool                                    | New     |
| Compute     | AKS Open Service Mesh                            | New     |
| Compute     | AKS Service and Ingress                          | New     |
| Compute     | AKS Storage                                      | New     |
| Compute     | AKS Workload                                     | New     |
| Compute     | Container Registry Cache                         | New     |
| Compute     | Container Registry Connected Registry            | New     |
| Compute     | Container Registry Encryption                    | New     |
| Compute     | Container Registry Networking                    | New     |
| Compute     | Container Registry Repository                    | New     |
| Compute     | Container Registry Retention                     | New     |
| Compute     | Container Registry Scope Map                     | New     |
| Compute     | Container Registry Task                          | New     |
| Compute     | Container Registry Token                         | New     |
| Compute     | Container Registry Webhook                       | New     |
| Compute     | HDInsight Cluster                                | New     |
| Deployment  | Azure Deployment Environment                     | New     |
| Deployment  | Dev Box                                          | New     |
| Deployment  | Relic Service                                    | New     |
| Identity    | Cross-tenant Synchronisation                     | New     |
| Identity    | Identity                                         | New     |
| Management  | App Compliance Automation Tool for Microsoft 365 | New     |
| Management  | Data Collection Endpoint                         | New     |
| Management  | Database Watcher                                 | New     |
| Management  | Microsoft Graph Data Connect                     | New     |
| Management  | SCOM Managed Instance                            | New     |
| Management  | System Integrity Monitoring                      | New     |
| Networking  | Communications Gateway Test Line                 | New     |
| Networking  | Network Security Perimeter                       | New     |
| Networking  | Network Verifier                                 | New     |
| Networking  | NGINXaaS                                         | New     |
| Networking  | SIM                                              | New     |
| Storage     | Azure Managed Lustre                             | New     |
| Storage     | Qumulo Scalable File Service                     | New     |
| Storage     | Storage Mover                                    | New     |

#### **Version** 4.3 - 08/11/2022

Some minor tweaks with this release and new drawing tools. Expanding on my dark mode designs, I have included dark mode glow boxes that match the colour scheme of the glow lines. I also added connection points to all of the boxes. 

One major update and this was a total PITA, was the removal of the invisible view box on the SVG icons. This caused some scaling issues when these icons were used in other products. Had to build a pretty funky script to scale the view box down to the the icon size but hours of processing later, these icons now scale perfectly with each other. 

One major edition to this release is the new Microsoft 365 icon, really love this one. (Purview remains my favorite though)

Added the following new icons

| Category    | Icon                                         | Status |
| ----------- | -------------------------------------------- | ------ |
| Application | App Configuration                            | New    |
| Application | App Service Access Restriction               | New    |
| Application | App Service App Assigned Address             | New    |
| Application | Application Server Instance for SAP Solution | New    |
| Compute     | HPC Workbenche                               | New    |
| Compute     | Kubernetes Fleet Manager                     | New    |
| Compute     | Lab Account                                  | New    |
| Compute     | Quantum Workspace                            | New    |
| Data        | Access Connector for Azure Databricks        | New    |
| Data        | Elastic SAN                                  | New    |
| Data        | Video Indexer                                | New    |
| Deployment  | Confluent Organization                       | New    |
| Identity    | Contact Profile                              | New    |
| Identity    | Verified ID                                  | New    |
| Management  | Azure Monitor Workspace                      | New    |
| Management  | Managed Prometheus                           | New    |
| Networking  | Azure Orbital                                | New    |
| Networking  | Azure Virtual Hub                            | New    |
| Networking  | ExpressRoute Traffic Collector               | New    |
| Networking  | Mesh VPN                                     | New    |
| Networking  | Network Manager                              | New    |
| Office365   | Microsoft 365                                | New    |
| Office365   | O365 - Word                                  | New    |
| Security    | Global Rulestack                             | New    |
| Security    | Microsoft Defender EASM                      | New    |

#### **Version** 4.2 - 06/07/2022

Renamed the following icons

| Category | Icon                     | Category   | Icon                        |
| -------- | ------------------------ | ---------- | --------------------------- |
| Compute  | WVD Host Pool            | Compute    | AVD Host Pool               |
| Compute  | WVD RDP Property         | Compute    | AVD RDP Property            |
| Compute  | WVD Task                 | Compute    | AVD Task                    |
| Security | Security Center Coverage | Security   | Defender for Cloud Coverage |
| Security | Security Center          | Security   | Defender for Cloud          |
| Security | Network Security Group   | Networking | Network Security Group      |

Added the following icons

| Category    | Icon                               | Status  |
| ----------- | ---------------------------------- | ------- |
| AI          | Applied AI Service                 | New     |
| AI          | Health Decision Support            | New     |
| AI          | Virtual Visits Builder             | New     |
| Application | Container App Environment          | New     |
| Application | Event Grid Partner Configuration   | New     |
| Application | Event Grid Partner Destination     | New     |
| Application | Event Grid Partner Namespace       | New     |
| Application | Event Grid Partner Registration    | New     |
| Application | Event Grid System Topic            | Updated |
| Compute     | Fluid Relay                        | Updated |
| Compute     | Lab Plan                           | New     |
| Compute     | Lab                                | New     |
| Compute     | Quantum Workspace                  | New     |
| Compute     | Virtual Instance for SAP           | New     |
| Data        | Database Instance for SAP Solution | New     |
| Deployment  | Fidalgo                            | New     |
| Management  | Azure Arc SCVMM Management Server  | New     |
| Management  | Azure Center for SAP               | New     |
| Management  | Azure Managed Grafana              | New     |
| Management  | Central Service Instance for SAP   | New     |
| Management  | Dynatrace                          | New     |
| Management  | Logz Metrics Data Source           | New     |
| Networking  | Custom IP Prefix                   | New     |
| Networking  | DNS Forwarding Ruleset             | New     |
| Networking  | DNS Private Resolver               | New     |
| Networking  | Email Communication Service        | New     |
| Networking  | NGINX Deployment                   | New     |
| Networking  | Private link Service               | New     |



#### Version 4.1 - 21/03/2022

43 new icons with this update. 

| Category    | Icon                                            | Status |
| ----------- | ----------------------------------------------- | ------ |
| Application | MedTech Service                                 | New    |
| Application | Open Supply Chain Platform                      | New    |
| Compute     | Azure VMware Solution Virtual Machine           | New    |
| Compute     | Container                                       | New    |
| Compute     | Virtual Machine Auto-Shutdown                   | New    |
| Compute     | Virtual Machine Change Tracking                 | New    |
| Compute     | Virtual Machine Configuration Management        | New    |
| Compute     | Virtual Machine Continuous Delivery             | New    |
| Compute     | Virtual Machine Redeploy                        | New    |
| Compute     | Virtual Machine Reservation                     | New    |
| Compute     | Virtual Machine Restart                         | New    |
| Compute     | Virtual Machine Run Command                     | New    |
| Compute     | Virtual Machine Serial Console                  | New    |
| Compute     | Virtual Machine Start                           | New    |
| Compute     | Virtual Machine Stop                            | New    |
| Compute     | Virtual Machine Updates                         | New    |
| Management  | Audit logs                                      | New    |
| Management  | Azure Arc Azure Stack HCI                       | New    |
| Management  | Azure Arc Resource Bridge                       | New    |
| Management  | Azure Arc SQL Managed Instance                  | New    |
| Management  | Azure Arc SQL Server                            | New    |
| Management  | Azure Arc Virtual Machine                       | New    |
| Management  | Azure Arc VMware vCenter                        | New    |
| Management  | Azure Load Testing                              | New    |
| Management  | Cost exports                                    | New    |
| Management  | Cost Management for AWS                         | New    |
| Management  | Logz metrics data source                        | New    |
| Management  | Policy Assignment                               | New    |
| Management  | Policy Compliance                               | New    |
| Management  | Policy Definition                               | New    |
| Management  | Policy Event                                    | New    |
| Management  | Policy Exemption                                | New    |
| Management  | Policy Initiative                               | New    |
| Management  | Policy Remediation                              | New    |
| Management  | Reservation Auto Renew                          | New    |
| Networking  | Application Gateway Health Probe                | New    |
| Networking  | Application Gateway Listener                    | New    |
| Networking  | Application Gateway SSL Setting                 | New    |
| Networking  | Load Balancer Backend Frontend IP Configuration | New    |
| Networking  | Load Balancer Backend Load Balancing Rule       | New    |
| Networking  | Load Balancer Backend Outbound Rule             | New    |
| Networking  | Load Balancer Health Probe                      | New    |
| Networking  | Mobile Networks                                 | New    |

#### Version 4.0 - 09/02/2022

Huge update, 210 new icons added to the collection. I have added a lot of per service configuration items to help with accurate designs using the particular service category stencils. This does mean a few double up icons when looking at the full stencil. Special thank you to @SvenAelterman for supplying several AKS icons.

| Category    | Icon                                         | Status |
| ----------- | -------------------------------------------- | ------ |
| AI          | Azure OpenAI                                 | New    |
| AI          | Object Anchors Account                       | New    |
| Application | API Management API                           | New    |
| Application | API Management Backend                       | New    |
| Application | API Management External Cache                | New    |
| Application | API Management Identity                      | New    |
| Application | API Management Managed Identity              | New    |
| Application | API Management Named Value                   | New    |
| Application | API Management OAuth 2.0 and OpenID Connect  | New    |
| Application | API Management Power Platform                | New    |
| Application | API Management Pricing Tier                  | New    |
| Application | API Management Product                       | New    |
| Application | API Playground                               | New    |
| Application | App Gateway Backend Health                   | New    |
| Application | App Gateway Backend Pool                     | New    |
| Application | App Gateway Configuration                    | New    |
| Application | App Gateway Frontend IP Configuration        | New    |
| Application | App Gateway HTTP Setting                     | New    |
| Application | App Gateway Listener                         | New    |
| Application | App Gateway Rule                             | New    |
| Application | App Gateway WAF                              | New    |
| Application | App Service Advanced Tools                   | New    |
| Application | App Service Advisor                          | New    |
| Application | App Service API Definition                   | New    |
| Application | App Service API Management                   | New    |
| Application | App Service Authentication                   | New    |
| Application | App Service Backup                           | New    |
| Application | App Service Clone App                        | New    |
| Application | App Service Connector                        | New    |
| Application | App Service Console                          | New    |
| Application | App Service Custom Domain                    | New    |
| Application | App Service Deployment Slot                  | New    |
| Application | App Service Editor                           | New    |
| Application | App Service Event                            | New    |
| Application | App Service Export Template                  | New    |
| Application | App Service Extension                        | New    |
| Application | App Service Health check                     | New    |
| Application | App Service Identity                         | New    |
| Application | App Service Insights                         | New    |
| Application | App Service Log Stream                       | New    |
| Application | App Service Logs                             | New    |
| Application | App Service Management                       | New    |
| Application | App Service MySQL In App                     | New    |
| Application | App Service Networking                       | New    |
| Application | App Service Process Explorer                 | New    |
| Application | App Service Quickstart                       | New    |
| Application | App Service Quota                            | New    |
| Application | App Service Reset Publish Profile            | New    |
| Application | App Service Scale Out                        | New    |
| Application | App Service Scale up                         | New    |
| Application | App Service Security                         | New    |
| Application | App Service Start                            | New    |
| Application | App Service Stop                             | New    |
| Application | App Service WebJob                           | New    |
| Application | Event Hub Event                              | New    |
| Application | Event Hub Networking                         | New    |
| Application | Event Hub Scale                              | New    |
| Application | Event Hub Schema Registry                    | New    |
| Application | Function App Advanced Tool                   | New    |
| Application | Function App API Definition                  | New    |
| Application | Function App API Management                  | New    |
| Application | Function App Authentication                  | New    |
| Application | Function App CORS                            | New    |
| Application | Function App Deployment Slot                 | New    |
| Application | Function App Extension                       | New    |
| Application | Function App File                            | New    |
| Application | Function App Function                        | New    |
| Application | Function App Properties                      | New    |
| Application | Function App Proxy                           | New    |
| Application | Function App Scale out                       | New    |
| Application | Function App Service Editor                  | New    |
| Compute     | Kubernetes Cluster Configuration             | New    |
| Compute     | Kubernetes Configuration                     | New    |
| Compute     | Kubernetes Deployment Center                 | New    |
| Compute     | Kubernetes GitOps                            | New    |
| Compute     | Kubernetes Namespace                         | New    |
| Compute     | Kubernetes Networking                        | New    |
| Compute     | Kubernetes Node Pool                         | New    |
| Compute     | Kubernetes Policy                            | New    |
| Compute     | Kubernetes Service and Ingres                | New    |
| Compute     | Kubernetes Storage                           | New    |
| Compute     | Kubernetes Workload                          | New    |
| Compute     | Virtual Machine SQL Assessment               | New    |
| Compute     | Virtual Machine SQL Feature                  | New    |
| Compute     | Virtual Machine SQL High Availability        | New    |
| Compute     | Virtual Machine SQL Patching                 | New    |
| Compute     | Virtual Network Gateway BGP Peer             | New    |
| Data        | Apache Spark Configuration                   | New    |
| Data        | Apache Spark Package                         | New    |
| Data        | Apache Spark Pause Setting                   | New    |
| Data        | Apache Spark Pool                            | New    |
| Data        | Apache Spark Scale Setting                   | New    |
| Data        | Azure Cosmos DB Cognitive Search             | New    |
| Data        | Azure Cosmos DB CORS                         | New    |
| Data        | Azure Cosmos DB Dedicated Gateway            | New    |
| Data        | Azure Cosmos DB Document Explorer            | New    |
| Data        | Azure Cosmos DB Feature                      | New    |
| Data        | Azure Cosmos DB Firewall and VNET            | New    |
| Data        | Azure Cosmos DB Notification                 | New    |
| Data        | Azure Cosmos DB Query Explorer               | New    |
| Data        | Azure Cosmos DB Replication                  | New    |
| Data        | Azure Cosmos DB Script Explorer              | New    |
| Data        | Azure Cosmos DB Synapse Link                 | New    |
| Data        | Azure Synapse Analytics Dedicated SQL Pool   | New    |
| Data        | Azure Synapse Analytics Pipeline             | New    |
| Data        | Azure Synapse Analytics Serverless SQL Pool  | New    |
| Data        | Azure Synapse Analytics Spark Pool           | New    |
| Data        | Data Collection Data source                  | New    |
| Data        | Data collection Rule                         | New    |
| Data        | SQL Database Auditing                        | New    |
| Data        | SQL Database Automatic Tuning                | New    |
| Data        | SQL Database Azure Data Studio               | New    |
| Data        | SQL Database Connection String               | New    |
| Data        | SQL Database Data Discovery & Classification | New    |
| Data        | SQL Database Dynamic Data Masking            | New    |
| Data        | SQL Database Export                          | New    |
| Data        | SQL Database Ledger                          | New    |
| Data        | SQL Database Performance Overview            | New    |
| Data        | SQL Database Performance Recommendation      | New    |
| Data        | SQL Database Query Editor                    | New    |
| Data        | SQL Database Query Performance Insight       | New    |
| Data        | SQL Database Restore                         | New    |
| Data        | SQL Database Sync                            | New    |
| Data        | SQL Database Transparent Data Encryption     | New    |
| Data        | SQL Server Auditing                          | New    |
| Data        | SQL Server Automatic Tuning                  | New    |
| Data        | SQL Server Failover Group                    | New    |
| Data        | SQL Server Firewalls and VNET                | New    |
| Data        | SQL Server Identity                          | New    |
| Data        | SQL Server Import Export                     | New    |
| Data        | SQL Server Recommendation                    | New    |
| IoT         | IoT Hub Built-in Endpoint                    | New    |
| IoT         | IoT Hub Certificate                          | New    |
| IoT         | IoT Hub Device                               | New    |
| IoT         | IoT Hub Event                                | New    |
| IoT         | IoT Hub File Upload                          | New    |
| IoT         | IoT Hub Message Routing                      | New    |
| IoT         | IoT Hub Query                                | New    |
| IoT         | IoT Hub Security Alert                       | New    |
| IoT         | IoT Hub Update                               | New    |
| IoT         | IoT Hub Workbook                             | New    |
| Management  | Automation Certificate                       | New    |
| Management  | Automation Change Tracking                   | New    |
| Management  | Automation Connection                        | New    |
| Management  | Automation Event Grid                        | New    |
| Management  | Automation Hybrid Worker Group               | New    |
| Management  | Automation Identity                          | New    |
| Management  | Automation Job                               | New    |
| Management  | Automation Linked Workspace                  | New    |
| Management  | Automation Module                            | New    |
| Management  | Automation Python Package                    | New    |
| Management  | Automation Run as Account                    | New    |
| Management  | Automation Runbook                           | New    |
| Management  | Automation Schedule                          | New    |
| Management  | Automation Source Control                    | New    |
| Management  | Automation Start Stop VM                     | New    |
| Management  | Automation State Configuration (DSC)         | New    |
| Management  | Automation Update Management                 | New    |
| Management  | Automation Variable                          | New    |
| Management  | Azure Automation Runbook Description         | New    |
| Management  | Azure Automation Runbook Job                 | New    |
| Management  | Azure Automation Runbook Schedule            | New    |
| Management  | Azure Automation Runbook Webhook             | New    |
| Management  | Quota                                        | New    |
| Management  | Recovery Services Policy                     | New    |
| Management  | Recovery Services Restore Point              | New    |
| Management  | Restore Point Collection                     | New    |
| Networking  | CDN Compression                              | New    |
| Networking  | CDN Custom Domain                            | New    |
| Networking  | CDN Geo-Filtering                            | New    |
| Networking  | CDN Optimisation                             | New    |
| Networking  | CDN Origin                                   | New    |
| Networking  | ExpressRoute Authorisation                   | New    |
| Networking  | ExpressRoute Health                          | New    |
| Networking  | ExpressRoute Peering                         | New    |
| Networking  | Load Balancer Backend pool                   | New    |
| Networking  | Load Balancer Frontend IP Configuration      | New    |
| Networking  | Load Balancer Inbound NAT Rule               | New    |
| Networking  | Network Interface Effective Route            | New    |
| Networking  | Network Interface Effective Security Rule    | New    |
| Networking  | Network Security Group Inbound Rule          | New    |
| Networking  | Network Security Group Outbound Rule         | New    |
| Security    | Azure Firewall IDPS                          | New    |
| Security    | Azure Firewall Secured Virtual Network       | New    |
| Security    | Azure Firewall Threat Intelligence           | New    |
| Security    | Azure Firewall TLS Inspection                | New    |
| Security    | Azure Firewall Web Category                  | New    |
| Security    | Key Vault Access Policy                      | New    |
| Security    | Key Vault Certificate                        | New    |
| Security    | Key Vault Networking                         | New    |
| Security    | Web Application Firewall Custom Rule         | New    |
| Security    | Web Application Firewall Managed Rule        | New    |
| Security    | Web Application Firewall Policy Settings     | New    |
| Storage     | Storage Account Blob inventory               | New    |
| Storage     | Storage Account Browser                      | New    |
| Storage     | Storage Account Connectivity Check           | New    |
| Storage     | Storage Account Data Migration               | New    |
| Storage     | Storage Account Encryption                   | New    |
| Storage     | Storage Account File Share                   | New    |
| Storage     | Storage Account Lifecycle Management         | New    |
| Storage     | Storage Account Networking                   | New    |
| Storage     | Storage Account Object Replication           | New    |
| Storage     | Storage Account Queue                        | New    |
| Storage     | Storage Account Recovery                     | New    |
| Storage     | Storage Account Resource sharing (CORS)      | New    |
| Storage     | Storage Account Shared Access Signature      | New    |
| Storage     | Storage Account Table                        | New    |
| Storage     | Storage Account Upgrade                      | New    |
| Storage     | Storage Sync Network                         | New    |
| Storage     | Storage Sync Registered Server               | New    |

#### **Version 3.9 - 08/11/2021**

Updated the collection with the new services announced at Microsoft Ignite this month as below

| Category    | Icon                                               | Status  |
| ----------- | -------------------------------------------------- | ------- |
| AI          | Cognitive Services Language                        | New     |
| AI          | Machine Learning Studio Web Service (classic)      | Updated |
| AI          | Machine Learning Studio Web Service Plan (classic) | Updated |
| AI          | Machine Learning Studio Workspace (classic)        | Updated |
| AI          | Machine Learning                                   | Updated |
| Application | API Playground                                     | New     |
| Application | Chaos Experiment Target                            | New     |
| Application | Chaos Experiment                                   | New     |
| Application | Chaos Studio                                       | New     |
| Application | CloudTest Account                                  | New     |
| Application | CloudTest Image                                    | New     |
| Application | Container App                                      | New     |
| Application | DICOM service                                      | New     |
| Application | FHIR Service                                       | New     |
| Application | Genomics Account                                   | Updated |
| Compute     | Azure Compute Gallery                              | New     |
| Compute     | Azure Edge Hardware Center                         | New     |
| Compute     | Capacity Reservation Group                         | New     |
| Compute     | VM Application Definition                          | New     |
| Compute     | VM Application Version                             | New     |
| Compute     | VM Image Definition                                | New     |
| Compute     | VM Image Version                                   | New     |
| Data        | Time Series Insights Reference Data Set            | Updated |
| Data        | Video Analyzer for Media                           | New     |
| Deployment  | Azure DevOps                                       | Updated |
| Deployment  | Custom Template                                    | New     |
| IoT         | IoT connector                                      | New     |
| Management  | Azure Arc Private Link Scope                       | New     |
| Management  | Invoice                                            | New     |
| Networking  | Network Function Manager – Device                  | New     |
| Networking  | Network Function Manager – Network Function        | New     |
| Networking  | Network Function Manager – Vendor                  | New     |
| Networking  | Network Manager                                    | New     |
| Security    | Confidential Ledger                                | New     |

#### **Version 3.8 - 09/10/2021**

Updated double click behavior on each icon to open the text box editor as requested by @jikuja. Added new icons below.

| Category     | Icon                                      | Status  |
| ------------ | ----------------------------------------- | ------- |
| AI           | Cognitive Services Communication Services | New     |
| Application  | Fluid Relay                               | New     |
| Compute      | Azure Edge Hardware Center                | New     |
| Compute      | Capacity Reservation Group                | New     |
| Compute      | Windows 365                               | New     |
| Data         | Azure Integration Runtime                 | New     |
| Data         | Data Lake Storage Gen2                    | New     |
| Data         | Integration Runtime                       | New     |
| Data         | Linked Integration Runtime                | New     |
| Data         | Shared Integration Runtime                | New     |
| Data         | Snowflake                                 | New     |
| Data         | SSIS Integration Runtime                  | New     |
| Deployment   | 1ES                                       | New     |
| Deployment   | 1ES CloudTest Account                     | New     |
| Deployment   | 1ES CloudTest Image                       | New     |
| Deployment   | 1ES Hosted Pool                           | New     |
| Deployment   | Bicep                                     | New     |
| Deployment   | Custom Template                           | New     |
| Dynamics 365 | Application Business Central              | New     |
| Dynamics 365 | Application Commerce                      | New     |
| Dynamics 365 | Application Connected Store               | New     |
| Dynamics 365 | Application Core HR                       | New     |
| Dynamics 365 | Application Customer Insights             | New     |
| Dynamics 365 | Application Customer Service              | New     |
| Dynamics 365 | Application Customer Service Insights     | New     |
| Dynamics 365 | Application Customer Voice                | New     |
| Dynamics 365 | Application Field Service                 | New     |
| Dynamics 365 | Application Finance                       | New     |
| Dynamics 365 | Application Finance and Operations        | New     |
| Dynamics 365 | Application Fraud Protection              | New     |
| Dynamics 365 | Application Intelligent Order Management  | New     |
| Dynamics 365 | Application Market Insights               | New     |
| Dynamics 365 | Application Marketing                     | New     |
| Dynamics 365 | Application Product Insights              | New     |
| Dynamics 365 | Application Project Operations            | New     |
| Dynamics 365 | Application Project Service Automation    | New     |
| Dynamics 365 | Application Project Timesheet             | New     |
| Dynamics 365 | Application Return To School              | New     |
| Dynamics 365 | Application Return To Work                | New     |
| Dynamics 365 | Application Sales                         | New     |
| Dynamics 365 | Application Sales Insights                | New     |
| Dynamics 365 | Application SCM Warehousing               | New     |
| Dynamics 365 | Application Supply Chain Management       | New     |
| Dynamics 365 | Application Sustainability Calculator     | New     |
| Dynamics 365 | Application Talent                        | New     |
| Dynamics 365 | Application Talent Attract                | New     |
| Dynamics 365 | Application Talent Onboard                | New     |
| Dynamics 365 | Dynamics 365                              | New     |
| Dynamics 365 | Mixed Reality Guide                       | New     |
| Dynamics 365 | Mixed Reality Import Tool                 | New     |
| Dynamics 365 | Mixed Reality Layout                      | New     |
| Dynamics 365 | Mixed Reality Portal                      | New     |
| Dynamics 365 | Mixed Reality Product Visualise           | New     |
| Dynamics 365 | Mixed Reality Remote Assist               | New     |
| Dynamics 365 | Mixed Reality Voice Assistant             | New     |
| Identity     | Azure AD B2B                              | Updated |
| IoT          | IoT Connector                             | New     |
| Management   | Intelligent Recommendations Account       | New     |
| Management   | Metrics Advisor                           | New     |
| Management   | Resource Management Private Link          | New     |
| Management   | Update Management Center                  | New     |
| Networking   | Service Endpoint                          | Updated |
| Office365    | O365 - Dataverse                          | New     |
| Office365    | O365 - Power App Virtual Agent            | New     |

#### **Version 3.7 - 23/07/2021**

Exciting update with this release. For a while I have been building my own set of Icons to represent workload services for infrastructure hosted anywhere. While not technically Azure specific I have utilised the same colouring and styling as per the Azure Icons to maintain consistency with designs especially with Hybrid hosting models. 

I started by using previous generation per workload Visio stencils and using those as a design guide I built new icons in the Azure style. To maintain consistency I built a style guide as below so that the primary and secondary icon elements are always aligned, spaced and sized the same. This will be a huge ongoing addition to the icon family and to start off I included PKI, Exchange and a few other common services that would be depicted in a per-workload style design. These are located under the Workload category and I also included the sub component of the services to use for other icons too under the Workload-Services category. Reach out if you would like to see more of these icons. All designed in Visio of course :D	

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/New-Icons.png)

So if that was not enough for a release I also included a total of 100 new Icons as well as fixing the title of the Drawing resources stencil. 

| Category         | Icon                                             | Status |
| ---------------- | ------------------------------------------------ | ------ |
| AI               | Cognitive Services Bot Web App                   | New    |
| AI               | Cognitive Services Bot Profile                   | New    |
| AI               | Cognitive Services Bot Test in Web Chat          | New    |
| AI               | Cognitive Services Bot Channel                   | New    |
| Application      | Application Service Authentication               | New    |
| Application      | Application Service Networking                   | New    |
| Application      | Application Service Quota                        | New    |
| Application      | Application Service Clone App                    | New    |
| Application      | Application Service Health check                 | New    |
| Application      | Application Service Advisor                      | New    |
| Application      | Application Service Console                      | New    |
| Application      | Application Service Deployment Slot              | New    |
| Application      | Application Service MySQL In App                 | New    |
| Application      | Application Service Editor                       | New    |
| Application      | Application Service API definition               | New    |
| Application      | Application Service log                          | New    |
| Application      | Application Service Event                        | New    |
| Application      | Application Service WebJob                       | New    |
| Application      | Application Service Log stream                   | New    |
| Application      | Application Service Process Explorer             | New    |
| Deployment       | Export Template                                  | New    |
| Management       | Application Insights Work Item                   | New    |
| Management       | Application Insights Application Map             | New    |
| Management       | Application Insights Live Metrics                | New    |
| Management       | Application Insights Failure                     | New    |
| Management       | Application Insights Performance                 | New    |
| Management       | Application Insights User                        | New    |
| Management       | Application Insights Session                     | New    |
| Management       | Application Insights Event                       | New    |
| Management       | Application Insights Funnel                      | New    |
| Management       | Application Insights User Flow                   | New    |
| Management       | Application Insights Retention                   | New    |
| Management       | Application Insights Cohort                      | New    |
| Management       | Application Insights Transaction Search          | New    |
| Management       | Application Insights Continuous Export           | New    |
| Management       | Certificate Configuration                        | New    |
| Management       | Certificate Auto Renew Setting                   | New    |
| Management       | Certificate Timeline                             | New    |
| Networking       | Application Gateway WAF Policy Setting           | New    |
| Networking       | Application Gateway WAF Managed Rule             | New    |
| Networking       | Application Gateway WAF Custom Rule              | New    |
| Networking       | Application Gateway Rule                         | New    |
| Networking       | Application Gateway Configuration                | New    |
| Networking       | Application Gateway Backend Pool                 | New    |
| Networking       | Application Gateway HTTP Setting                 | New    |
| Networking       | Application Gateway Listener                     | New    |
| Workload         | Email Server                                     | New    |
| Workload         | Azure Active Directory Sync Primary              | New    |
| Workload         | Exchange Edge Transport Server                   | New    |
| Workload         | Certification Authority Online Responder         | New    |
| Workload         | Active Directory Federation Proxy                | New    |
| Workload         | Azure File Sync Server                           | New    |
| Workload         | File Server                                      | New    |
| Workload         | Active Directory Lightweight Directory Services  | New    |
| Workload         | Active Directory Rights Management Server        | New    |
| Workload         | Server Cluster                                   | New    |
| Workload         | Database Server Generic                          | New    |
| Workload         | Database Server SQL                              | New    |
| Workload         | Web Server                                       | New    |
| Workload         | Azure Active Directory Sync Standby              | New    |
| Workload         | Proxy Server                                     | New    |
| Workload         | Exchange Mailbox Server                          | New    |
| Workload         | Exchange Client Access Server                    | New    |
| Workload         | Exchange Hub Transport Server                    | New    |
| Workload         | Generic Email Server                             | New    |
| Workload         | FTP Server                                       | New    |
| Workload         | Application Server                               | New    |
| Workload         | Active Directory Federation Services             | New    |
| Workload         | Active Directory Domain Services                 | New    |
| Workload         | Enterprise Certification Authority Offline Root  | New    |
| Workload         | Network Device Enrollment Service                | New    |
| Workload         | Enterprise Certification Authority Subordinate   | New    |
| Workload         | Enterprise Certification Authority Root          | New    |
| Workload         | Certification Authority Standalone               | New    |
| Workload         | Certificatation Authority Enrollment Web Service | New    |
| Workload         | Certification Authority Web Enrollment           | New    |
| Workload         | Certification Authority Policy Web Service       | New    |
| Workload         | Certification Authority                          | New    |
| Workload-Service | Database Server SQL                              | New    |
| Workload-Service | Application Server                               | New    |
| Workload-Service | Database Server Generic                          | New    |
| Workload-Service | Active Directory Rights Management Server        | New    |
| Workload-Service | Active Directory Federation Services             | New    |
| Workload-Service | File Server                                      | New    |
| Workload-Service | FTP Server                                       | New    |
| Workload-Service | Azure File Sync                                  | New    |
| Workload-Service | Exchange Mailbox Server                          | New    |
| Workload-Service | Devices                                          | New    |
| Workload-Service | Proxy Server                                     | New    |
| Workload-Service | Active Directory Domain Services                 | New    |
| Workload-Service | Certification Authority Subordinate              | New    |
| Workload-Service | Certification Authority Standalone               | New    |
| Workload-Service | Web Service                                      | New    |
| Workload-Service | Certification Authority Policy Web Service       | New    |
| Workload-Service | Certification Authority                          | New    |
| Workload-Service | Azure Active Directory Sync Secondary            | New    |
| Workload-Service | Azure Active Directory Sync Primary              | New    |
| Workload-Service | Exchange Edge Transport Server                   | New    |
| Workload-Service | Certification Authority Online Responder         | New    |
| Workload-Service | Active Directory Federation Proxy                | New    |

#### **Version 3.6 - 28/05/2021**

Large update with this release. 56 new or refreshed icons added bringing the collection up to 613 items (Minus drawing tools) I have also completely re-worked the Drawing tools. I Scripted a full extract of the Hex colour values for all icons and sorted them by occurrence, after that I designed a new colour pallet using the top 30 colours that are used across the board. This helps to keep visual consistency with colouring, As well as the colour pallet I did the same for gradients so there are now two pallets to chose from. I also took the most common colours and redrew the connection objects providing a line, arc, glow line, path based and angled connection objects in each colour as well as dashed line boxes as containers. 

**Fixes**

The Azure Icon, so I could not source an SVG of the new Azure Icon so I drew it from scratch but it was not perfect and I found an alignment issue with the bottom two horizontal lines that I corrected. I have since found other “SVG” sources of the Azure Icon but these are not vector images and I refuse to use bitmaps in my stencil.

Text Box positioning, a few updates ago I changed the Y positioning of the Text box to be 14mm below the center of the icon, this lined up the text box nicely with icons of a differing height. Unfortunately this change to position breaks the text box if you resize the icon so I reverted to a calculation based on the height of the icon. 

**Significant new Icons**

Visual Studio and VS Code now have the new Fluent styling, as per the Azure Icon I had to draw these from scratch.

Azure Active Directory Sync hosts, these are based on an upcoming per workload stencil that I am working on that uses the same styling as Azure.

Full list of icon changes below:-

| Category   | Icon                                             | Status    |
| ---------- | ------------------------------------------------ | --------- |
| AI         | Cognitive Services Content Moderator             | Refreshed |
| AI         | Cognitive Services Data  Collection Rule         | Refreshed |
| AI         | Cognitive Services Face  Detection               | Refreshed |
| AI         | Cognitive Services Health Bot                    | Refreshed |
| AI         | Cognitive Services QnA Maker                     | Refreshed |
| AI         | Cognitive Services Speech                        | Refreshed |
| Identity   | AADConnect Staged Rollout                        | New       |
| Identity   | Active Directory Domain  Services                | Refreshed |
| Identity   | Active Directory Federation  Proxy               | Refreshed |
| Identity   | Active Directory Federation  Services            | Refreshed |
| Identity   | Active Directory Lightweight  Directory Services | New       |
| Identity   | Authentication Context                           | New       |
| Identity   | Azure Active Directory Sync  Primary             | New       |
| Identity   | Azure Active Directory Sync  Standby             | New       |
| Identity   | Continuous Access Evaluation                     | New       |
| Identity   | Custom Control                                   | New       |
| Identity   | Identity Governance                              | New       |
| Identity   | Terms of use                                     | New       |
| Identity   | User Setting                                     | New       |
| Identity   | VPN Connectivity                                 | Refreshed |
| IoT        | Built-in Endpoint                                | New       |
| IoT        | Certificate                                      | New       |
| IoT        | Device                                           | New       |
| IoT        | File Upload                                      | New       |
| IoT        | Identity                                         | New       |
| IoT        | Message Routing                                  | New       |
| IoT        | Query Explorer                                   | New       |
| Management | Azure Monitor AKS Health                         | New       |
| Management | Azure Monitor Azure Stack  Health                | New       |
| Management | Azure Monitor Data Collection  Rules             | New       |
| Management | Azure Monitor Data sources                       | New       |
| Management | Azure Monitor Log Analytics  Health              | New       |
| Management | Azure Monitor Service Bus  Health                | New       |

#### **Version 3.5 - 11/05/2021**

Azure received an Icon rebranding! The new icon for Azure is here and until the community starts to use it in design and documentation I have included the old one and new one labelled Azure V1 and Azure V2. I also corrected a background issue with the PNG versions. Visio does not allow you to export a PNG file with no background so I had to get a little creative. This would not have been an issue for white background diagrams but in dark mode you would have had a white background box around the icon. 

#### **Version 3.4 - 27/04/2021**

Icon refresh and new additions

**Application**	- Static Web Folder, FTP, Event Grid Partner Topic and Event Grid Input Output

**Compute**	- Server Farm

**Deployment** - Commit, Repository, Backlog and Confluent Organization

**Generic**	- Warning

**Identity** - Azure Token, Azure Active Directory Verifiable Credential, Azure Active Directory Verifiable Credentials, Admin Consent, Azure Active Directory Privileged Identity Management and Collection

**Iot** - Custom Location

**Management** - Azure LightHouse Multi Tenancy, Datadog, Diagnostics

**Storage** - Data Box Gateway

#### **Version 3.3 - 04/03/2021**

It is that time of year again. Yes Microsoft Ignite just happened and as always new services were announced. The 2 major new items announced were "Azure Managed Instance for Apache Cassandra" and the new Augmented Reality service "Azure Percept" as well as these 2 I updated or added 28 new icons. I also added 2 new containers to the drawing tools that I use for full architecture diagrams. I am looking into adding smart containers for core features such as Subscription, Resource Group and Virtual Network for the next release. 

#### **Version 3.2 - 13/02/2021**

The first update for the year. Several new and refreshed icons and a new naming convention for the stencils. 10 days ago I reached 25,000 downloads and I thank everyone for supporting my project.

#### **Version 3.1 - 05/12/2020**

Likely to be the last version release for this very interesting year of 2020. 

Search Fixes (See above) and added 5 new service icons (The icon for Azure Purview is my new favorite!) 

Over the past year I have seen incremental changes to certain icons but not others. The team is doing an amazing job at converting to super modern gradiant shaded versions which look stunning. But some icons have not received a modern revamp. 

This was a good opportunity to work through the set and start applying the same style and theme to some of the icons to make them consistent. Here is one example where I have taken the image on the right (User License Allocation) and updated it to match the modern style of other user type icons. This update has 23 new or refreshed icons bringing the total count up to 506 (Excluding drawing tools)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Icon%20Refresh%20Example.jpg)

A few more examples (left original, right modern)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Icon%20Refresh%20Examples.jpg)

#### **Version 3.0 - 14/10/2020**

Major update with this release so we are now on version 3! I have added placeholder shape data in preparation for an Azure documentor script that I am working on, essentially this will open up the capability of enumerating resources in Azure and then drawing those resources in Visio and populating each shape with the relevant meta data for the resource. I have included basic fields at this stage that can be retrieved using get-azresource and then added to the shape via PowerShell

Fields included: -

- ResourceID
- Location
- ResourceName
- ResourceGroupName
- ResourceType
- Tags
- SubscriptionID

Based on community feedback from a series of Twitter polls I posted a few months ago I have changed the default text format from dark blue to black

Also based on feedback you now have the option to use a single large stencil containing all 496 icons or you can use the category stencils for just networking, compute etc. I have placed all of the current versions at the root of the repo including categorized structured PNG and SVG versions 

Added or refreshed 66 icons

#### **Version 2.8 - 15/07/2020**

Refreshed 19 icons and added new ones, welcome Office 365 to the collection. O365 services have been requested a few times so I am starting to add them into the Stencil. These icons are more difficult to convert as sourcing SVG versions is challenging so I have had to trace some bitmap versions by hand in my SVG editor.

#### **Version 2.6 - 21/04/2020**

I noticed that the Cosmos DB Icon had broken from a previous update and while fixing that I ended up reviewing and updating 96 icons! – I extended my icon collection passed the Azure Portal as even some of those icons are out of date.

#### **Version 2.5 - 20/04/2020**

New Icons and several icon refreshers, fixed the drawing boxes that were fixed to square shapes and not adjustable. Added a new Line drawing tool with a nice glow “A_GlowLine-1” – I am toying with Dark mode designs and this new line format really makes a design jump off the page in my opinion. Below are 2 examples of the same reference architecture

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Advanced-Analytics_LIGHT.png)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Advanced-Analytics_DARK.png)

#### **Version 2.4 - 21/02/2020**

Added new drawing resources for number labels/boxes/lines and arrows. I have also included SVG and PNG versions of the icons after multiple requests, this was a challenge due to scaling but my script now builds the stencil, SVG and PNG versions of the icons.

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/PNG-Icons.png)

#### **Version 2.3 - 22/01/2020**

Added new icons for Synapse and others, refreshed 19 updated icons. Big announcement here:- </p>

<p><b>SEARCH</b> - I finally figured out how to add search metadata to each icon via PowerShell, for best results ensure that Visio search is set to OR keyword matching (Visio Options\Advanced\Show Shape Search Pane\Search for Any of the Words) </p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Search-Added.png)

#### **Version 2.2 - 05/11/2019**

Welcome to the Icon family Azure Arc and Spring Cloud

#### **Version 2.1 - 04/11/2019**

This weekend I found another major icon update. 209 icons to be precise! - I have restructured the Repo as well, created a folder structure for archived versions as I felt the landing page was getting a bit cluttered. The latest version will always be at the root of the Repo with previous versions moving into the Archive folder

#### **Version 2.0 - 22/10/2019**

Over the past week I have noticed significant updates to key Azure Service Icons and in preparation for an expected announcement at Ignite this year I have re-designed my entire conversion process, previously I had to manually work on each icon to set the initial placement of the connection points and name them for scripted modification. I finally managed to figure out the PS syntax that the Visio COM.Application is expecting for inserting new connection point rows. My process is now automated taking SVG's from a directory and inserting them into my Master Stencil for processing. Recorded a quick video showing the automation into Visio

https://github.com/David-Summers/Azure-Design/blob/master/Assets/VIDEO_Icon-Builder.mp4

Now that I have a new automated process to build the stencil I re-worked every single icon and incorporated over 60 new icon styles that have been updated in the past week. Since this is a major change, I upped the version to 2.0

One key change here is that I renamed the connection points to North, East, West, South and SouthOfText as per the example below

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/IMAGE_Connection-Points.PNG)

I use this stencil for a suite of Azure Documentor scripts and using named connection points allows you to specify direction for connections easier

#### **Version 1.6 - 8/10/2019**

Corrected mis-coloured icons, thanks to Cédric De Loor for pointing that out

Added new icons

<OL type="Circle">
  <li>
  Maintenance Configuration
  </li>
  <li>
  Azure Blockchain Service
  </li>
  <li>
  Azure Active Directory Identity Secure Score
  </li>
  <li>
  Cloud Simple Service
  </li>
    <li>
  Cloud Simple Node
  </li>
    <li>
  Cloud Simple Virtual Machine
  </li>
    <li>
  Azure Lighthouse Service Provider
  </li>
    <li>
  Peering
  </li>
    <li>
  Role
  </li>
    <li>
  Virtual Cluster
  </li>
    <li>
  Azure Active Directory Risk Detection
  </li>  
    <li>
  Azure Active Directory Risky User
  </li>
    <li>
  Azure Active Directory Identity Protection
  </li>
    <li>
  Private Link
  </li>
</ol>
#### **Version 1.5 - 26/08/2019**

Major change with this release, initially I hand placed the four connection points for each icon and that was not perfect placement. I thought it would be easy to script modify the connection point position (like I did with the Text field in V-1.1) but it turns out that Visio does not name a connection point when you add it so I could not modify it through PowerShell. I added a new script process that allowed me to hand place the connection points and then name them 1-5 (I added a new connection point under the text field for easier south connections when there is data in the text field). Now that they are named, I can modify them when I build my stencil using my gold master. Example below: -

<p>
"$shape.CellsU("Connections.1.X").Formula = "Width*0.5""
"$shape.CellsU("Connections.1.Y").Formula = "Height*1.1""
"$shape.CellsU("Connections.2.X").Formula = "Width*-0.1""
"$shape.CellsU("Connections.2.Y").Formula = "Height*0.5""
"$shape.CellsU("Connections.3.X").Formula = "Width*1.1""
"$shape.CellsU("Connections.3.Y").Formula = "Height*0.5""
"$shape.CellsU("Connections.4.X").Formula = "Width*0.5""
"$shape.CellsU("Connections.4.Y").Formula = "Height*-0.05""
"$shape.CellsU("Connections.5.X").Formula = "Width*0.5""
"$shape.CellsU("Connections.5.Y").Formula = "Height*-0.6""
</p>

<p>Added new icons</p>
<UL type="Circle">
  <li>
  Dedicated Host
  </li>
  <li>
  Dedicated Host Group
  </li>
  <li>
  Azure Artifact
  </li>
  <li>
  Azure Board
  </li>
</ul>
#### **Version 1.4 - 16/08/2019**

Started on the drawing resources, added a colour pallet for what I believe are the best mainly used colours in the stencil range. For fun I scripted an export of every Hex colour value that is being used and there are 88 total colours. Some are extremely close to each other so I selected the most common used colours and included them in the pallet. Added 3 connector styles and deciding on the remaining set. Ideas welcome! and lastly, re-worked the colour scheme on the Azure lighthouse icons.

Added new icons

<UL type="Circle">
  <li>
  SAP Hana
  </li>
  <li>
  Virtual Machine Image Classic
  </li>
  <li>
  Virtual Machine Image Version
  </li>
  <li>
  Virtual Machine Image Definition
  </li>
  <li>
  Virtual Machine Classic
  </li>
  <li>
  Quickstart Center
  </li>
  <li>
  Free Services
  </li>
  <li>
  Help and Support
  </li>
  <li>
  Recent
  </li>
</ul>
#### **Version 1.3 - 14/08/2019**

Added new Icons for storage account sub services, had to hand draw these as they did not appear to exist. Renamed Data brick to the correct name Databricks.
<UL type="Circle">
  <li>
  Azure Storage Blob
  </li>
  <li>
  Azure Storage Queue
  </li>
  <li>
  Azure Storage Table
  </li>
  </ul>    
#### **Version 1.2 - 03/08/2019**

Removed "Azure" prefix for some incorrectly named icons. Added new Icons

<UL type="Circle">
  <li>
  Azure LightHouse Projection
  </li>
  <li>
  Azure LightHouse Management
  </li>
  <li>
  Azure LightHouse Protection
  </li>
  <li>
  Azure LightHouse RBAC
  </li>
  <li>
  Azure Batch
  </li>
  <li>
  Azure Batch Accounts
  </li>
  </ul>    
#### **Version 1.1 - 27/07/2019**

First major change, I realized that some of the text fields were not perfectly aligned so I rebuilt my PowerShell process to use dynamic  values for the text field. Since the shapes differ in Height\Width my initial placement was slightly off due to distance from center. This placement is now relative to the bottom edge of the icon. I also inserted the name of the icon into the Text field for page drop as well and reformatted the text to a dark Blue. Final change was to add a subtle drop shadow to each icon as I feel they jump off the page with a small amount of depth.

#### **Version 1.0 - 25/07/2019**

Initial release of the stencil and bonus SVG and PNG versions. I built a conversion process that can re-colour each icon and these initial versions were made with a Blue and Grey scale pallet.
