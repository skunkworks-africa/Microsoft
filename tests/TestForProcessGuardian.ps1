# TestForProcessGuardian.ps1

Describe "ProcessGuardian Tests" {
    Context "Process Management Functions" {
        It "Stops and blacklists a given process" {
            # Mock the behavior of stopping and blacklisting a process
            Mock Stop-Process
            Mock Add-Content

            # Call your function
            # Example: StopAndBlacklistProcesses -processNames @("TestProcess")

            # Assertions to verify the expected behavior
            Assert-MockCalled Stop-Process -Exactly 1 -Scope It
            Assert-MockCalled Add-Content -Exactly 1 -Scope It
        }

        It "Lists irregular processes correctly" {
            # Mock Get-Process to return a set of predefined processes
            Mock Get-Process { return @(@{Name="TestProcess"; CPU=11; WS=110MB}) }

            # Capture the output of your function
            # Example: $result = ListIrregularProcesses

            # Assertions
            # Example: $result.Name | Should -Contain "TestProcess"
        }
    }
}
