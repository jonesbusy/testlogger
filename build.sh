#!/usr/bin/env sh
# vi: set tw=0

dotnet pack &&\
dotnet test test/TestLogger.UnitTests/TestLogger.UnitTests.csproj -p:CollectCoverage=true &&\
dotnet test test/TestLogger.AcceptanceTests/TestLogger.AcceptanceTests.csproj
