## Overview

This is my Azure Icon Design project for Visio, I aim to maintain this project and provide icon updates as soon new services offerings are available in Azure

For a quick view of all icons in PNG format click here - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.1.PNG

## Motivation

As far as I know this complete set of Azure Icons in Visio format does not exist, I decided to build a standard set of icons that could be used easily in Design and As-Built diagrams. PowerShell has been used for the conversion process, essentially importing an SVG image into an XML variable and then converting it into Visio Stencil XML format. 

## Installation

Save the Stencil to your "..\Documents\My Shapes" directory for use within Visio

## Work in Progress

Design drawing resources, such as Lines\Arrows\Boxes

Blue, Grey and white shaded Visio stencil versions as per the SVG and PNG Icons, I can re-colour every icon into any colour I like using PowerShell so if you would like a customised pallet then let me know and supply the desired colour range in Hex format for example:-
•	Light Blue  = #008dff
•	Medium Blue = #0072b5
•	Dark Blue   = #333366

## Revision History

Version 1.0 - 25/07/2009 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.0.vssx
Initial release of the stencil and bonus SVG and PNG versions. I built a conversion process that can re-colour each icon and these initial versions were made with a Blue and Grey scale pallet. 

Version 1.1 - 27/07/2009 - https://github.com/David-Summers/Azure-Design/blob/master/ICONS_Azure-Full-Colour_V-1.1.vssx
First major change, I realised that some of the text fields were not perfectly aligned so I rebuilt my PowerShell process to use dynamic  values for the text field. Since the shapes differ in Height\Width my initial placement was slightly off due to distance from center. This placement is now relative to the bottom edge of the icon. I also inserted the name of the icon into the Text field for page drop as well and reformatted the text to a dark Blue. Final change was to add a subtle drop shadow to each icon as I feel they jump off the page with a small amount of depth. 

## Contributors

For requests, issues, idea sharing or just a quick G'Day please use the contact details below.

David Summers - Author - https://twitter.com/Xeeva_D3  

## License

I created these icons while working at www.data3.com.au and we decided to release them to the public for free usage. We felt this was a great community contribution so why keep this to ourselves. My only ask is that you create awesome diagrams and appreciate the effort that I have put into making these. I would love to see some great examples of the icons in use, so Test-Netconnection (Modern way of saying Ping) me on Twitter.
