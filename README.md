## Overview

This is my Azure Icon Design project for Visio, I aim to maintain this project and provide icon updates as soon new service offerings are available in Azure. I am now maintaining 2 versions of the stencil as I received a request to provide a no-shadow version that inherits the text theme from your drawing. 
<br></br>
Current version (With Shadow and Fixed dark Blue Text) = https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.2.vssx
Current version (Without Shadow and Text theme inheritence) = https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_NoShadow-Themed_V-1.2.vssx
<br></br>
Current Icon set in Picture format (With Shadow and Fixed dark Blue Text)
<br></br>
![Picture](https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.2.png)
<br></br>
Current Icon set in Picture format (Without Shadow and Text theme inheritence)
<br></br>
![Picture](https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_NoShadow-Themed_V-1.2.png)
<br></br>
## Motivation

As far as I know this complete set of Azure Icons in Visio format does not exist, I decided to build a standard set of icons that could be used easily in Design and As-Built diagrams. PowerShell has been used for the conversion process, essentially importing an SVG image into an XML variable and then converting it into Visio Stencil XML format. Most of the icons are based on the publicly available Azure portal icons and some have been drawn by hand as they do not exist.

## Installation

Save the Stencil to your "..\Documents\My Shapes" directory for use within Visio.

## Work in Progress

Design drawing resources, such as Lines\Arrows\Boxes
<br></br>
Blue, Grey and white shaded Visio stencil versions as per the SVG and PNG Icons, I can re-colour every icon into any colour I like using PowerShell so if you would like a customised pallet then let me know and supply the desired colour range in Hex format for example:-
<UL type="Circle">
  <li>
    Light Blue  = #008dff
  </li>
  <li>
    Medium Blue = #0072b5
  </li>
  <li>
    Dark Blue   = #333366
  </li>
  </ul>

## Revision History

<B>Current</B>
<br></br>
Version 1.2 - 03/08/2019 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.2.vssx
<br></br>
Removed "Azure" prefix for some incorrectly named icons. 
Added new Icons
  Azure LightHouse Projection
  Azure LightHouse Management
  Azure LightHouse Protection
  Azure LightHouse RBAC
  Azure Batch
  Azure Batch Accounts
<br></br>
<B><I>Previous</I></B>
Version 1.1 - 27/07/2019 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.1.vssx
<br></br>
First major change, I realised that some of the text fields were not perfectly aligned so I rebuilt my PowerShell process to use dynamic  values for the text field. Since the shapes differ in Height\Width my initial placement was slightly off due to distance from center. This placement is now relative to the bottom edge of the icon. I also inserted the name of the icon into the Text field for page drop as well and reformatted the text to a dark Blue. Final change was to add a subtle drop shadow to each icon as I feel they jump off the page with a small amount of depth. 
<br></br>
Version 1.0 - 25/07/2019 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.0.vssx
<br></br>
Initial release of the stencil and bonus SVG and PNG versions. I built a conversion process that can re-colour each icon and these initial versions were made with a Blue and Grey scale pallet. 


## Contributors

For requests, issues, idea sharing or just a quick G'Day please use the contact details below.
<br></br>
David Summers - Author - https://twitter.com/Xeeva_D3  

## License

I created these icons while working at www.data3.com.au and we decided to release them to the public for free usage. We felt this was a great community contribution so why keep this to ourselves. My only ask is that you create awesome diagrams and appreciate the effort that I have put into making these. I would love to see some great examples of the icons in use, so Test-Netconnection (Modern way of saying Ping) me on Twitter.
