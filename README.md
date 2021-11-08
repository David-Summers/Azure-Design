# Background

Visio remains to this day an industry standard for the depiction of IT infrastructure from both a conceptual and design perspective, over the years I have built diagrams using Visio stencils created by Microsoft and the IT Tech community to convey my ideas accurately and effectively as design documentation. 

Over a year ago I set out to locate current, up to date and relevant Visio stencils for Azure with the intent on building reference architecture patterns for Azure services that could be used as templates for design material. Unfortunately my search came up short and I found that Microsoft had shifted from providing Visio stencils in favor of more application generic Scalable Vector Graphic (SVG) icons for Azure services and configuration items. 

SVG's can easily be imported into Visio and due to the file format supporting raster scaling with no loss of image quality these icons work great. The issue however when working with Visio is that functionality wise these icons are tedious to work with. Some examples of what I mean: -

- **No connection points** (when you draw a line from icon A to icon B, Visio will either attach the line to the icon edge or the center)
- **No properly positioned text field** (when adding descriptive text to the icon Visio will place the text at the center of the icon, requiring manual repositioning)
- **Import size is dependent on the source SVG view box and scale** (depending on the source file, when it is dropped onto a drawing it may need to be down\up sized to match the scale of other icons)
- **Lack of programmability** (having icons in a stencil allows you to leverage PowerShell or other languages to programmatically draw diagrams)

With these limitations and the lack of standardized up to date stencils I set out on a personal mission to build my own functional, relevant and as up to date as possible Visio stencil for anyone to use. With permission (and the only caveat that I maintain an up to date collection) from the Microsoft Cloud and Enterprise team to build an icon collection based on the publicly available icons, I built a fully programmatic method to build a stencil collection using SVG's as the source icons. 

## My process and methodology

### **Project ultimate goal**

***Function > Ease of use > Form***

This is my driving factor behind this project. I know that others prefer drawing tools such as Draw.io but Visio offers an amazing amount of capability from a programmatic perspective. Icons need to not just be pretty images, they need technical function with the ability to be used easily. Proper stencil objects with pre-defined mathematically perfect placed connection points make drawing by hand or script so much easier. The icon itself although important is third on my priority list and will always remain so. I want these stencils to be as useful as possible while maintaining the relevance and breath of Azure services.

**First a bit of history for this project**

I started with a collection process, gathering as many useful and up to date SVG icons as possible and collating them in a folder with a descriptive naming convention and classification. I initially started by dragging an icon onto the Visio drawing canvas and then adding in connection points for North, East, South and West of the icon and moving the text box to the bottom of the icon. After that I scaled the icon using a guide background box to be either 20mm wide or 20mm high before dropping it into my stencil and entering in it's service name. 

Now I am pretty good at performing mundane repetitive operations like this and with a few key bind mappings\macros on a gaming mouse I was able to process each icon in around 45 seconds. Problem was that I had 300 plus icons to work through. Initially I just sucked it up and processed each one manually, after just under four hours and at least 3,600 mouse clicks, I had a functional stencil. 

However things started getting messy when Microsoft updated a huge collection of Azure Service icons a short while after I was finished that made my version irrelevant.  So I looked for a better way to build this stencil, as I knew that that Microsoft would forever be adding new services to Azure and or refreshing current service icons (which is a good thing by the way!) and I just did not have the time or energy to perform a few thousand mouse clicks after each version update.  

### **My method of building**

Enter PowerShell and the Visio COM application method. If you review my version history below you will see that this project has evolved significantly since I started and I have built a full import and conversion process that performs the following. 

1. Scans a build directory for SVG's and sorts a list of icons by name 
2. Launches Visio as a COM application and performs a page drop for the SVG
3. Gets the current width and height of the icon and scales up or down until either the width or height of the icon is 20mm
4. Adds Shape data placeholders to support adding metadata when using PowerShell to enumerate Azure resources such as ResourceID for example
5. Adds connection points to the icon (North, East, South, West, South of Textbox, North East, South East, South West and North West)
6. Adds a slight drop shadow to the icon
7. Repositions the default text field to the bottom of the icon
8. Drops the icon into the main stencil and another copy into the by category stencil
9. Adds metadata to the stencil master such as Name, Hover, Search (Including the category and icon name)
10. Imports my drawing tools from a stencil 
11. Sorts all of the imported icons into a grid for inspection and then export to PNG as a visual index for the stencil content
12. Exports out a high resolution PNG and SVG version of the now re-scaled icon for use in other applications
13. Saves everything to my GitHub Repo staging folder   

With this process I can build and re-build over and over again in minutes and this allows me to keep this collection up to date and focus on adding more functionality. 

#### SVG image of the current full stencil content

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Example_All-Icons_V-3.9.svg)

Some example images to show stencil functionality: -

#### **Source SVG files**

This is where I pick up the source SVG Files, using an _ as a delimiter this allows me to classify the type of icon for the grouping process.

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SourceFiles.png)

#### **Connection points**

Exact connection points relative to the center of the icon

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Connection-Points.png)

#### **Connection point usage**

Easily connect to and from the icon in multiple directions

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Connection-Point-Example.png)

#### **Shape Data**

Coming soon, super awesome programmatic diagram creation. Enumerating resources from Azure and then populating the resources into Visio and adding the relevant metadata to the shape. This unlocks a massive initiative I am working on which is a reverse of this. Design in Visio, add Azure metadata and then push the deployment to Azure via PowerShell. 

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Shape-Data.png)

# Sponsorship

If you would like to support my development or just say thank you! Then check out my Sponsorship page:-

-  https://github.com/sponsors/David-Summers 

# Stencil Usage

Download only what you need or the entire collection using the links below. 

## **Option 1 - Download the single stencil file that contains all of the icons and drawing tools**

- https://github.com/David-Summers/Azure-Design/raw/master/Azure_All-Icons_V-3.9.vssx

## Option 2 - Download the latest full ZIP package containing all stencils, PNG and SVG versions.

- https://github.com/David-Summers/Azure-Design/raw/master/V-3.9.zip

## **Option 3 - Download just the category stencil files that you need** 

- https://github.com/David-Summers/Azure-Design/raw/master/Azure_AI_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Application_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Compute_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Data_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Deployment_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Drawing-Tools_V-3.6.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Dynamics-365_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Endpoint_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Generic_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Identity_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_IoT_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Management_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Networking_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Office365_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Security_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Storage_V-3.9.vssx
- https://github.com/David-Summers/Azure-Design/raw/master/Azure_Workload_V-3.9.vssx

## **Option 4 - Don't use Visio?**

You also have the PNG and SVG versions of the Icons, they have been scaled the same way as the stencil and can be used in other applications. 

## 

# Installation

Download the stencil(s) and save to your "My Shapes" folder (normally under "C:\ Users \ %YourUserName% \Documents \My Shapes")

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Collection-Example.png)

## Special note on Search

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

# Version History

## Current

**Version 3.9 - 08/11/2021**

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

## Previous

**Version 3.8 - 09/10/2021**

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

**Version 3.7 - 23/07/2021**

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

**Version 3.6 - 28/05/2021**

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

**Version 3.5 - 11/05/2021**

Azure received an Icon rebranding! The new icon for Azure is here and until the community starts to use it in design and documentation I have included the old one and new one labelled Azure V1 and Azure V2. I also corrected a background issue with the PNG versions. Visio does not allow you to export a PNG file with no background so I had to get a little creative. This would not have been an issue for white background diagrams but in dark mode you would have had a white background box around the icon. 

**Version 3.4 - 27/04/2021**

Icon refresh and new additions

**Application**	- Static Web Folder, FTP, Event Grid Partner Topic and Event Grid Input Output

**Compute**	- Server Farm

**Deployment** - Commit, Repository, Backlog and Confluent Organization

**Generic**	- Warning

**Identity** - Azure Token, Azure Active Directory Verifiable Credential, Azure Active Directory Verifiable Credentials, Admin Consent, Azure Active Directory Privileged Identity Management and Collection

**Iot** - Custom Location

**Management** - Azure LightHouse Multi Tenancy, Datadog, Diagnostics

**Storage** - Data Box Gateway

**Version 3.3 - 04/03/2021**

It is that time of year again. Yes Microsoft Ignite just happened and as always new services were announced. The 2 major new items announced were "Azure Managed Instance for Apache Cassandra" and the new Augmented Reality service "Azure Percept" as well as these 2 I updated or added 28 new icons. I also added 2 new containers to the drawing tools that I use for full architecture diagrams. I am looking into adding smart containers for core features such as Subscription, Resource Group and Virtual Network for the next release. 

**Version 3.2 - 13/02/2021**

The first update for the year. Several new and refreshed icons and a new naming convention for the stencils. 10 days ago I reached 25,000 downloads and I thank everyone for supporting my project.

**Version 3.1 - 05/12/2020**

Likely to be the last version release for this very interesting year of 2020. 

Search Fixes (See above) and added 5 new service icons (The icon for Azure Purview is my new favorite!) 

Over the past year I have seen incremental changes to certain icons but not others. The team is doing an amazing job at converting to super modern gradiant shaded versions which look stunning. But some icons have not received a modern revamp. 

This was a good opportunity to work through the set and start applying the same style and theme to some of the icons to make them consistent. Here is one example where I have taken the image on the right (User License Allocation) and updated it to match the modern style of other user type icons. This update has 23 new or refreshed icons bringing the total count up to 506 (Excluding drawing tools)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Icon%20Refresh%20Example.jpg)

A few more examples (left original, right modern)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Icon%20Refresh%20Examples.jpg)

**Version 3.0 - 14/10/2020**

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

**Version 2.8 - 15/07/2020**

Refreshed 19 icons and added new ones, welcome Office 365 to the collection. O365 services have been requested a few times so I am starting to add them into the Stencil. These icons are more difficult to convert as sourcing SVG versions is challenging so I have had to trace some bitmap versions by hand in my SVG editor.

**Version 2.6 - 21/04/2020**

I noticed that the Cosmos DB Icon had broken from a previous update and while fixing that I ended up reviewing and updating 96 icons! – I extended my icon collection passed the Azure Portal as even some of those icons are out of date.

**Version 2.5 - 20/04/2020**

New Icons and several icon refreshers, fixed the drawing boxes that were fixed to square shapes and not adjustable. Added a new Line drawing tool with a nice glow “A_GlowLine-1” – I am toying with Dark mode designs and this new line format really makes a design jump off the page in my opinion. Below are 2 examples of the same reference architecture

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Advanced-Analytics_LIGHT.png)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Advanced-Analytics_DARK.png)

**Version 2.4 - 21/02/2020**

Added new drawing resources for number labels/boxes/lines and arrows. I have also included SVG and PNG versions of the icons after multiple requests, this was a challenge due to scaling but my script now builds the stencil, SVG and PNG versions of the icons.

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/PNG-Icons.png)

**Version 2.3 - 22/01/2020**

Added new icons for Synapse and others, refreshed 19 updated icons. Big announcement here:- </p>

<p><b>SEARCH</b> - I finally figured out how to add search metadata to each icon via PowerShell, for best results ensure that Visio search is set to OR keyword matching (Visio Options\Advanced\Show Shape Search Pane\Search for Any of the Words) </p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Search-Added.png)

**Version 2.2 - 05/11/2019**

Welcome to the Icon family Azure Arc and Spring Cloud

**Version 2.1 - 04/11/2019**

This weekend I found another major icon update. 209 icons to be precise! - I have restructured the Repo as well, created a folder structure for archived versions as I felt the landing page was getting a bit cluttered. The latest version will always be at the root of the Repo with previous versions moving into the Archive folder

**Version 2.0 - 22/10/2019**

Over the past week I have noticed significant updates to key Azure Service Icons and in preparation for an expected announcement at Ignite this year I have re-designed my entire conversion process, previously I had to manually work on each icon to set the initial placement of the connection points and name them for scripted modification. I finally managed to figure out the PS syntax that the Visio COM.Application is expecting for inserting new connection point rows. My process is now automated taking SVG's from a directory and inserting them into my Master Stencil for processing. Recorded a quick video showing the automation into Visio

https://github.com/David-Summers/Azure-Design/blob/master/Assets/VIDEO_Icon-Builder.mp4

Now that I have a new automated process to build the stencil I re-worked every single icon and incorporated over 60 new icon styles that have been updated in the past week. Since this is a major change, I upped the version to 2.0

One key change here is that I renamed the connection points to North, East, West, South and SouthOfText as per the example below

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/IMAGE_Connection-Points.PNG)

I use this stencil for a suite of Azure Documentor scripts and using named connection points allows you to specify direction for connections easier

**Version 1.6 - 8/10/2019**

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
**Version 1.5 - 26/08/2019**

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
**Version 1.4 - 16/08/2019**

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
**Version 1.3 - 14/08/2019**

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
**Version 1.2 - 03/08/2019**

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
**Version 1.1 - 27/07/2019**

First major change, I realized that some of the text fields were not perfectly aligned so I rebuilt my PowerShell process to use dynamic  values for the text field. Since the shapes differ in Height\Width my initial placement was slightly off due to distance from center. This placement is now relative to the bottom edge of the icon. I also inserted the name of the icon into the Text field for page drop as well and reformatted the text to a dark Blue. Final change was to add a subtle drop shadow to each icon as I feel they jump off the page with a small amount of depth.

**Version 1.0 - 25/07/2019**

Initial release of the stencil and bonus SVG and PNG versions. I built a conversion process that can re-colour each icon and these initial versions were made with a Blue and Grey scale pallet.
