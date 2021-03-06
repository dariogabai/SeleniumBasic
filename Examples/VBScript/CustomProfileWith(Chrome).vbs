
' ---------------------------------------------------------------------------------------
' Use the WebDriver with a customised version of Chrome.
' Can be used to :
'  Keep the same session between runs
'  Launch the browser with plug-ins
'  Launch the browser with specific preferences
' The profile is automatically created if it's not already present
' ---------------------------------------------------------------------------------------

Class Script
    Dim driver

    Sub Class_Initialize
        Set driver = CreateObject("Selenium.ChromeDriver")
        driver.SetProfile "C:\ChromeProfile"  'Full path of the profile directory
        driver.Get "https://www.google.com"
        
        WScript.Echo "Click OK to close the browser"
    End Sub

    Sub Class_Terminate
        driver.Quit
    End Sub
End Class

Set s = New Script