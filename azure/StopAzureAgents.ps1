# Login to Azure
#Login-AzureRmAccount

. .\AzureAgents.ps1

$MachineList = @(
  'WinopsDemo-101',
  'WinopsDemo-102',
  'WinopsDemo-103',
  'WinopsDemo-104',
  'WinopsDemo-105',
  'WinopsDemo-106',
  'WinopsDemo-107',
  'WinopsDemo-108',
  'WinopsDemo-109',
  'WinopsDemo-110',
  'WinopsDemo-111',
  'WinopsDemo-112',
  'WinopsDemo-113',
  'WinopsDemo-114',
  'WinopsDemo-115',
  'WinopsDemo-116',
  'WinopsDemo-117',
  'WinopsDemo-118',
  'WinopsDemo-119',
  'WinopsDemo-120',
  'WinopsDemo-121',
  'WinopsDemo-122',
  'WinopsDemo-123',
  'WinopsDemo-124',
  'WinopsDemo-125',
  'WinopsDemo-126',
  'WinopsDemo-127',
  'WinopsDemo-128',
  'WinopsDemo-129',
  'WinopsDemo-130'
  )

$MachineList | % {

  $MachineName = $_.toLower()
  Stop-WinOps2017VM -MachineName $MachineName

}