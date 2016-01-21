# StringLoginator
Test code illustrating a bug in the Coldfusion/.NET integrations

The ColdFusion integration with .NET will crash when the .NET side tries to return a large string.
This sample code will trigger the problem.

According to my tests, a string of length 49994 or greater will cause the crash,
while anything smaller is safe.