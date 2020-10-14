## Background

Visio remains to this day an industry standard for the depiction of IT infrastructure from both a conceptual and design perspective, over the years I have built diagrams using Visio stencils created by Microsoft and the IT Tech community to convey my ideas accurately and effectively as design documentation. 

Over a year ago I set out to locate current, up to date and relevant Visio stencils for Azure with the intent on building reference architecture patterns for Azure services that could be used as templates for design material. Unfortunately my search came up short and I found that Microsoft had shifted from providing Visio stencils in favor of more application generic Scalable Vector Graphic (SVG) icons for Azure services and configuration items. 

SVG's can easily be imported into Visio and due to the file format supporting raster scaling with no loss of image quality. The issue however when working with Visio is that functionality wise these icons are tedious to work with. Some examples of what I mean: -

- **No connection points** (when you draw a line from icon A to icon B, Visio will either attach the line to the icon edge or the center)
- **No properly positioned text field** (when adding descriptive text to the icon Visio will place the text at the center of the icon, requiring manual repositioning)
- **Import size is dependent on the source SVG view box and scale** (depending on the source file, when it is dropped onto a drawing it may need to be down\up sized to match the scale of other icons)
- **Lack of programmability** (having icons in a stencil allows you to leverage PowerShell or other languages to programmatically draw diagrams)

With these limitations and the lack of standardised up to date stencils I set out on a personal mission to build my own functional, relevant and as up to date as possible Visio stencil for anyone to use. With permission (and the only caveat that I maintain an up to date collection) from the Microsoft Cloud and Enterprise team to build an icon collection based on the publicly available icons I built a fully programmatic method to build a stencil collection using SVG's as the source icons. 

### My process and methodology

**First a bit of history for this project**

I started with a collection process, gathering as many useful and up to date SVG icons as possible and collating them in a folder with a descriptive naming convention and classification. I initially started by dragging an icon onto the Visio drawing canvas and then adding in connection points for North East South and West of the icon and moving the text box to the bottom of the icon. After that I scaled the icon using a guide background box to be either 2mm wide or 20mm high before dropping it into my stencil and entering in it's service name. 

Now I am pretty good at performing mundane repetitive operations like this and with a few key bind mappings\macros on a gaming mouse I was able to process each icon in around 45 seconds. Problem was that I had 300 plus icons to work through. Initially I just sucked it up and processed each one manually, after just under four hours and at least 3,600 mouse clicks, I had a functional stencil. 

However things started getting messy when Microsoft updated a huge collection of Azure Service icons a short while after I was finished that made my version irrelevant.  So I looked for a better way to build this stencil, as I knew that that Microsoft would forever be adding new services to Azure and or refreshing current service icons. 

**My current method of building**

Enter PowerShell and the Visio COM application method. If you review my version history below you will see that this project has evolved significantly since I started and I have built a full import and conversion process that performs the following. 

1. Scans a build directory for SVG's and sorts a list of icons by name 

2. Launches Visio as a COM application and performs a page drop for the SVG

3. Gets the current width and height of the icon and scales up or down until either the width or height of the icon is 20mm

4. Adds Shapedata placeholders to support adding metadata when using powershell to enumerate Azure resources such as ResourceID for example

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

## Stencil Usage

First you need to decide how you would like to use these stencils. I have provided 2 operational methods based on community feedback. 

**Option 1 - Use the single stencil file that contains all of the icons and drawing tools**

**Option 2 - Use just the category stencil files that you need** 

### Installation

Download the stencil(s) and save to your "My Shapes" folder (normally under C:\Users\%YourUserName%\Documents\My Shapes)

## Roadmap

See the [open issues](https://github.com/David-Summers/Azure-Design/issues) for a list of proposed features (and known issues).



## Contact

Your Name - David Summers https://twitter.com/Xeeva_D3/

Project Link: https://github.com/David-Summers/Azure-Design



## Version History

### Current

Version 3.0 14/10/2020



### Previous

<p>Update version 2.8 15/07/2020</p>

<p>Refreshed 19 icons and added new ones, welcome Office 365 to the collection. O365 services have been requested a few times so I am starting to add them into the Stencil. These icons are more difficult to convert as sourcing SVG versions is challenging so I have had to trace bitmap versions by hand in my SVG editor.</p>

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
