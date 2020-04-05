Function Connect-Object ($Object1, $Object2)
{
        $Connect = $VisioPage.Drop($VisioStencilConnector,5,0)
        $start = $connect.CellsU("BeginX").GlueTo($Object1.CellsU("Connections.SouthOfText.x")) 
        $end = $connect.CellsU("EndX").GlueTo($Object2.CellsU("Connections.SouthOfText.x"))
}

function Change-ShapeText ($Shape)
{
    $Shape.CellsU("TxtWidth").FormulaU = "Width*4"
    $Shape.CellsU("TxtHeight").FormulaU = "Height*0.5"
    $Shape.CellsU("TxtPinX").FormulaU = "Width*2.5"
    $Shape.CellsU("TxtPinY").FormulaU = "Height*-0.35"
    $Shape.CellsU("TxtLocPinX").FormulaU = "TxtWidth*1"
}

function Get-RandomX
{
    do
    {
        $XRand = Get-Random -Minimum -20 -Maximum 20
    }
    until ($XRand -gt 1 -or $XRand -lt -1)

    Return $Xrand
}

function Get-RandomY
{
    do
    {
        $YRand = Get-Random -Minimum -10 -Maximum 10
    }
    until ($YRand -gt 1 -or $YRand -lt -1)

    Return $Yrand
}

$VisioApplication = New-Object -ComObject Visio.Application 
$VisioDocuments = $VisioApplication.Documents 
$VisioDocument = $VisioDocuments.Add("Basic Diagram.vst") 
$VisioPages = $VisioApplication.ActiveDocument.Pages
$VisioStencil = "C:\Users\xeeva\Documents\My Shapes\ICONS_Azure-Full-Colour_V-2.4.vssx"
$VisioStencilObject = $VisioApplication.Documents.Add($VisioStencil) 
$VisioObjects = $VisioStencilObject.Masters
$VisioPage = $VisioPages.Item(1)
$CenterObjectItem = $VisioObjects | where {$_.Name -eq "Azure"}
$VisioStencilConnector = $VisioObjects | where {$_.Name -eq "A_Arrow-00"}

$Background = $VisioPage.DrawRectangle(-21.929134, 10.826772, 21.653543, -12.755906)
$Background.CellsU("FillBkgnd").FormulaU ="RGB(0,0,0)"
$Background.CellsU("FillForegnd").FormulaU ="RGB(0,0,0)"

$CenterObject = $VisioPage.drop($CenterObjectItem, $XCenter, $YCenter)
$CenterObject.CellsU("Width").FormulaU = "200mm"
$CenterObject.CellsU("Height").FormulaU = "150mm"
$CenterObject.Cells("Char.Color").FormulaU = "RGB(255, 255, 255)"
$CenterObject.Cells("Char.Font").FormulaU = "4"
$CenterObject.Cells("Char.Size").FormulaU = "125 pt"
$CenterObject.CellsU("GlowSize").FormulaU = "20.0000 pt"
$CenterObject.CellsU("GlowColor").FormulaU = "RGB(125, 255, 2555)"
$CenterObject.CellsU("GlowColorTrans").FormulaU = "0%"

Foreach ($VSObject in $VisioObjects | where {($_.Name -NotLike "A_*") -and ($_.Name -NotLike "*classic*") -and ($_.Name -Ne "jkkgfpb.266723847691537236") -and ($_.Name -Ne "Azure")})
{
    $VSObject.Name
    $DropObject = $VisioPage.Drop($VSObject, (Get-RandomX), (Get-RandomY))
    $DropObject.Cells("Char.Color").FormulaU = "RGB(255, 255, 255)"
    $DropObject.CellsU("GlowSize").FormulaU = "2.0000 pt"
    $DropObject.CellsU("GlowColor").FormulaU = "RGB(125, 255, 2555)"
    $DropObject.CellsU("GlowColorTrans").FormulaU = "0%"
    Connect-Object -Object1 $CenterObject -Object2 $DropObject
}

Foreach ($VSLine in $VisioPage.Shapes | where {$_.name -like "A_Arrow-00*"})
{
    $VSLine.SendToBack()
}
        
$Background.SendToBack()        
        
        
        
 