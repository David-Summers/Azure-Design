## Overview

This is my Azure Icon Design project for Visio, I aim to maintain this project and provide icon updates as soon new service offerings are available in Azure.  
<br></br>
Current version (With Shadow and Fixed dark Blue Text) = https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.4.vssx
<br></br>
Current Icon set in Picture format (With Shadow and Fixed dark Blue Text)
<br></br>
![Picture](https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.4.png)
<br></br>
## Motivation

As far as I know this complete set of Azure Icons in Visio format does not exist, I decided to build a standard set of icons that could be used easily in Design and As-Built diagrams. PowerShell has been used for the conversion process, essentially importing an SVG image into an XML variable and then converting it into Visio Stencil XML format. Most of the icons are based on the publicly available Azure portal icons and some have been drawn by hand as they do not exist.

## Installation

Save the Stencil to your "..\Documents\My Shapes" directory for use within Visio.

## Work in Progress

Design drawing resources, such as Lines\Arrows\Boxes
<br></br>
Blue, Grey and white shaded Visio stencil versions as per the SVG and PNG Icons, I can re-colour every icon into any colour I like using PowerShell.
<br></br>

## Revision History

<B>Current</B>
<br></br>
Update Version 2.4 - 21/02/2020
<br></br>
Added new drawing resources for number labels/boxes/lines and arrows. I have also included SVG and PNG versions of the icons after multiple requests, this was a challenge due to scaling but my script now builds the stencil, SVG and PNG versions of the icons. 
<br></br>
![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/PNG-Icons.png)
<br></br>
<B><I>Previous</I></B>
<br></br>
Update Version 2.3 - 22/01/2020 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.3.vssx
<br></br>
Added new icons for Synapse and others, refreshed 19 updated icons. Big announcement here:-
<br></br>
<b>SEARCH</b> - I finally figured out how to add search metadata to each icon via PowerShell, for best results ensure that Visio search is set to OR keyword matching (Visio Options\Advanced\Show Shape Search Pane\Search for Any of the Words)
<br></br>
![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Search-Added.png)
<br></br>
Minor update Version 2.2 - 05/11/2019 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.2.vssx
<br></br>
Welcome to the Icon family Azure Arc and Spring Cloud
<br></br>
Another huge update! Version 2.1 - 04/11/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-2.1/ICONS_Azure-Full-Colour_V-2.1.vssx
<br></br>
This weekend I found another major icon update. 209 icons to be precise! - I have restructured the Repo as well, created a folder structure for archived versions as I felt the landing page was getting a bit cluttered. The latest version will always be at the root of the Repo with previous versions moving into the Archive folder
<br></br>
Huge update! Version 2.0 - 22/10/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-2.0/ICONS_Azure-Full-Colour_V-2.0.vssx
<br></br>
Over the past week I have noticed significant updates to key Azure Service Icons and in preperation for an expected announcement at Ignite this year I have re-designed my entire conversion process, previously I had to manually work on each icon to set the initial placement of the connection points and name them for scripted modification. I finally managed to figure out the PS syntax that the Visio COM.Application is expecting for inserting new connection point rows. My process is now automated taking SVG's from a directory and inserting them into my Master Stencil for processing. Recorded a quick video showing the automation into Visio -  https://github.com/David-Summers/Azure-Design/blob/master/Assets/VIDEO_Icon-Builder.mp4
<br></br>
Now that I have a new automated process to build the stencil I re-worked every single icon and incorporated over 60 new icon styles that have been updated in the past week. Since this is a major change, I upped the version to 2.0
<br></br>
One key change here is that I renamed the connection points to North, East, West, South and SouthOfText as per the example below
![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/IMAGE_Connection-Points.PNG)
I use this stencil for a suite of Azure Documentor scripts and using named connection points allows you to specify direction for connections easier

<br></br>
Version 1.6 - 8/10/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.6/ICONS_Azure-Full-Colour_V-1.6.vssx
<br></br>
Corrected mis-coloured icons, thanks to Cédric De Loor for pointing that out 
<br></br>
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
<br></br>
Version 1.5 - 26/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.5/ICONS_Azure-Full-Colour_V-1.5.vssx
<br></br>
Major change with this release, initially I hand placed the four connection points for each icon and that was not perfect placement. I thought it would be easy to script modify the connection point position (like I did with the Text field in V-1.1) but it turns out that visio does not name a connection point when you add it so I could not modify it through powershell. I added a new script process that allowed me to hand place the connection points and then name them 1-5 (I added a new connection point under the text field for easier south connections when there is data in the text field). Now that they are named, I can modify them when I build my stencil using my gold master. Example below:-
<br></br>
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
<br></br>
Added new icons
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
<br></br>
Version 1.4 - 16/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.4/ICONS_Azure-Full-Colour_V-1.4.vssx
<br></br>
Started on the drawing resources, added a colour pallet for what I believe are the best mainly used colours in the stencil range. For fun I scripted an export of every Hex colour value that is being used and there are 88 total colours. Some are extremely close to each other so I selected the most common used colours and included them in the pallet. Added 3 connector styles and deciding on the remaining set. Ideas welcome! and lastly, re-worked the colour scheme on the Azure lighthouse icons.
<br></br>
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
<br></br>
<br></br>
Version 1.3 - 14/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.3/ICONS_Azure-Full-Colour_V-1.3.vssx
<br></br>
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
<br></br>
<br></br>
Version 1.2 - 03/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.2/ICONS_Azure-Full-Colour_V-1.2.vssx
<br></br>
Removed "Azure" prefix for some incorrectly named icons. 
<br></br>
Added new Icons
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
<br></br>
Version 1.1 - 27/07/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.1/ICONS_Azure-Full-Colour-NoShadow_V-1.1.vssx
<br></br>
First major change, I realised that some of the text fields were not perfectly aligned so I rebuilt my PowerShell process to use dynamic  values for the text field. Since the shapes differ in Height\Width my initial placement was slightly off due to distance from center. This placement is now relative to the bottom edge of the icon. I also inserted the name of the icon into the Text field for page drop as well and reformatted the text to a dark Blue. Final change was to add a subtle drop shadow to each icon as I feel they jump off the page with a small amount of depth. 
<br></br>
Version 1.0 - 25/07/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.0/ICONS_Azure-Full-Colour_V-1.0.vssx
<br></br>
Initial release of the stencil and bonus SVG and PNG versions. I built a conversion process that can re-colour each icon and these initial versions were made with a Blue and Grey scale pallet. 


## Contributors

For requests, issues, idea sharing or just a quick G'Day please use the contact details below.
<br></br>
David Summers - Author - https://twitter.com/Xeeva_D3  

## License

I created these icons while working at www.data3.com.au and we decided to release them to the public for free usage. We felt this was a great community contribution so why keep this to ourselves. My only ask is that you create awesome diagrams and appreciate the effort that I have put into making these. I would love to see some great examples of the icons in use, so Test-Netconnection (Modern way of saying Ping) me on Twitter.
