## Overview

<p>Welcome to my Azure Visio Stencil project! here you will find my most up to date Visio stencil for Azure architecture design and documentation. I started this project over a year ago as I needed current and up to date complete icon sets for Azure. There are many collections of icons for diagrams available both on the Microsoft site and through individuals such as myself, however I needed Visio stencils that could be used for programmatic diagram creation.</p>

<p>True that the Microsoft provided SVG version of the Azure icons can be imported into Visio, however actually using these icons with connection points, manual re-scaling etc is a time consuming process. I built a PowerShell method of scanning a local directory and for each SVG icon, import into Visio and re-scale to either 20mm width or height depending on the largest value.</p>

<p>After the import my script then adds 5 connection points, adds a shadow effect, formats moves and re-sizes the Text field before dropping into my Stencil and adding search meta-data to the icon master</p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Icon.png)

<p>in the above example there are 4 main connection points in the exact same position for each icon, North East South and West with a 5th connection point below the text field. Each connection point is labelled as such and can be referenced by PowerShell to create hierarchal diagrams. Below is an example of how easy it is to quickly build diagrams that require minimal adjustment and connection position placement</p>

![Picture]( https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_ConnectionPointUsage.png)

<p>With each release I include the full Stencil with bonus drawing tools such as pre-coloured lines\arrows and boxes along with a zipped archive of PowerShell exported PNG and re-scaled SVG versions for use with other drawing platforms</p>

<p><strong>For the latest Visio stencil click here - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.8.vssx</strong></p>

<p>Below is an image of the full icon collection for a preview before you download</p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.8.png)

## Installation

Save the Stencil to your "..\Documents\My Shapes" directory for use within Visio. 

## Work in Progress

Next on my list is Shape Data. I will be adding key Azure specific Shape Data fields for richer Azure diagram creation, this will allow my documentation scripts to add data to shapes such as regional location, Resource Group, tags etc.

<p><b>Search</b> this is killing me right now. I managed to add keyword search into the shape master a few versions ago and searched worked (Well for my specific setup at the time but does not work for me now) I have received multiple comments about search not working as well and I am working out why Visio and the Windows Search service is not playing nice. If search is working for you can you paste a comment in the issues area please and add a brief note as to what you did to get it working please?</p>
  
## Revision History

<B>Current</B>

<p>Update version 2.8 15/07/2020</p>

<p>Refreshed 19 icons and added new ones, welcome Office 365 to the collection. O365 services have been requested a few times so I am starting to add them into the Stencil. These icons are more difficult to convert as sourcing SVG versions is challenging so I have had to trace bitmap versions by hand in my SVG editor.</p>

<B><I>Previous</I></B>

<p>Update version 2.6 21/04/2020</p>

<p>I noticed that the Cosmos DB Icon had broken from a previous update and while fixing that I ended up reviewing and updating 96 icons! – I extended my icon collection passed the Azure Portal as even some of those icons are out of date. </p>

<p>Update version 2.5 20/04/2020</p>

<p> New Icons and several icon refreshers, fixed the drawing boxes that were fixed to square shapes and not adjustable. Added a new Line drawing tool with a nice glow “A_GlowLine-1” – I am toying with Dark mode designs and this new line format really makes a design jump off the page in my opinion. Below are 2 examples of the same reference architecture</p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Advanced-Analytics_LIGHT.png)

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/SAMPLE_Advanced-Analytics_DARK.png)

<p>Update Version 2.4 - 21/02/2020</p>

<p>Added new drawing resources for number labels/boxes/lines and arrows. I have also included SVG and PNG versions of the icons after multiple requests, this was a challenge due to scaling but my script now builds the stencil, SVG and PNG versions of the icons.</p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/PNG-Icons.png)

<p>Update Version 2.3 - 22/01/2020 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.3.vssx</p>

<p>Added new icons for Synapse and others, refreshed 19 updated icons. Big announcement here:- </p>

<p><b>SEARCH</b> - I finally figured out how to add search metadata to each icon via PowerShell, for best results ensure that Visio search is set to OR keyword matching (Visio Options\Advanced\Show Shape Search Pane\Search for Any of the Words) </p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/Search-Added.png)

<p>Minor update Version 2.2 - 05/11/2019 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-2.2.vssx</p>

<p>Welcome to the Icon family Azure Arc and Spring Cloud</p>

<p>Another huge update! Version 2.1 - 04/11/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-2.1/ICONS_Azure-Full-Colour_V-2.1.vssx</p>

<p>This weekend I found another major icon update. 209 icons to be precise! - I have restructured the Repo as well, created a folder structure for archived versions as I felt the landing page was getting a bit cluttered. The latest version will always be at the root of the Repo with previous versions moving into the Archive folder</p>

<p>Huge update! Version 2.0 - 22/10/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-2.0/ICONS_Azure-Full-Colour_V-2.0.vssx</p>

<p>Over the past week I have noticed significant updates to key Azure Service Icons and in preperation for an expected announcement at Ignite this year I have re-designed my entire conversion process, previously I had to manually work on each icon to set the initial placement of the connection points and name them for scripted modification. I finally managed to figure out the PS syntax that the Visio COM.Application is expecting for inserting new connection point rows. My process is now automated taking SVG's from a directory and inserting them into my Master Stencil for processing. Recorded a quick video showing the automation into Visio</p> https://github.com/David-Summers/Azure-Design/blob/master/Assets/VIDEO_Icon-Builder.mp4

<p>Now that I have a new automated process to build the stencil I re-worked every single icon and incorporated over 60 new icon styles that have been updated in the past week. Since this is a major change, I upped the version to 2.0</p>

<p>One key change here is that I renamed the connection points to North, East, West, South and SouthOfText as per the example below</p>

![Picture](https://github.com/David-Summers/Azure-Design/blob/master/Assets/IMAGE_Connection-Points.PNG)

<p>I use this stencil for a suite of Azure Documentor scripts and using named connection points allows you to specify direction for connections easier</p>

<p>Version 1.6 - 8/10/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.6/ICONS_Azure-Full-Colour_V-1.6.vssx</p>

<p>Corrected mis-coloured icons, thanks to Cédric De Loor for pointing that out </p>

<p>Added new icons</p>

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

<p>Version 1.5 - 26/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.5/ICONS_Azure-Full-Colour_V-1.5.vssx</p>

<p>Major change with this release, initially I hand placed the four connection points for each icon and that was not perfect placement. I thought it would be easy to script modify the connection point position (like I did with the Text field in V-1.1) but it turns out that visio does not name a connection point when you add it so I could not modify it through PowerShell. I added a new script process that allowed me to hand place the connection points and then name them 1-5 (I added a new connection point under the text field for easier south connections when there is data in the text field). Now that they are named, I can modify them when I build my stencil using my gold master. Example below:- </p>

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

<p>Version 1.4 - 16/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.4/ICONS_Azure-Full-Colour_V-1.4.vssx</p>

<p>Started on the drawing resources, added a colour pallet for what I believe are the best mainly used colours in the stencil range. For fun I scripted an export of every Hex colour value that is being used and there are 88 total colours. Some are extremely close to each other so I selected the most common used colours and included them in the pallet. Added 3 connector styles and deciding on the remaining set. Ideas welcome! and lastly, re-worked the colour scheme on the Azure lighthouse icons. </p>

<p>Added new icons</p>

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


<p>Version 1.3 - 14/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.3/ICONS_Azure-Full-Colour_V-1.3.vssx</p>

<p>Added new Icons for storage account sub services, had to hand draw these as they did not appear to exist. Renamed Data brick to the correct name Databricks. </p>
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

<p>Version 1.2 - 03/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.2/ICONS_Azure-Full-Colour_V-1.2.vssx</p>

<p>Removed "Azure" prefix for some incorrectly named icons. Added new Icons</p>

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

<p>Version 1.1 - 27/07/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.1/ICONS_Azure-Full-Colour-NoShadow_V-1.1.vssx</p>

<p>First major change, I realised that some of the text fields were not perfectly aligned so I rebuilt my PowerShell process to use dynamic  values for the text field. Since the shapes differ in Height\Width my initial placement was slightly off due to distance from center. This placement is now relative to the bottom edge of the icon. I also inserted the name of the icon into the Text field for page drop as well and reformatted the text to a dark Blue. Final change was to add a subtle drop shadow to each icon as I feel they jump off the page with a small amount of depth. </p>

<p>Version 1.0 - 25/07/2019 - https://github.com/David-Summers/Azure-Design/blob/master/Archive/V-1.0/ICONS_Azure-Full-Colour_V-1.0.vssx</p>

<p>Initial release of the stencil and bonus SVG and PNG versions. I built a conversion process that can re-colour each icon and these initial versions were made with a Blue and Grey scale pallet. </p>


## Contributors

For requests, issues, idea sharing or just a quick G'Day please use the contact details below.

David Summers - Author - https://twitter.com/Xeeva_D3  

## License

I created these icons while working at www.data3.com.au and we decided to release them to the public for free usage. We felt this was a great community contribution so why keep this to ourselves. My only ask is that you create awesome diagrams and appreciate the effort that I have put into making these. I would love to see some great examples of the icons in use, so Test-Netconnection (Modern way of saying Ping) me on Twitter.
