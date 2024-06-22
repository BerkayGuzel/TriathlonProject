##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ETE_Project_Triatlon
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1
ProjectPath            :=C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1/ETE_Project_Triatlon
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/ETE_Project_Triatlon
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Berkay
Date                   :=22/06/2024
CodeLitePath           :=D:/AllApplications/CodeLiteC++/CodeLite
MakeDirCommand         :=mkdir
LinkerName             :=D:/c++GCC_MinGW/mingw64/bin/g++.exe
SharedObjectLinkerName :=D:/c++GCC_MinGW/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1/build-$(WorkspaceConfiguration)/bin
OutputFile             :=..\build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=D:/c++GCC_MinGW/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := D:/c++GCC_MinGW/mingw64/bin/ar.exe -r
CXX      := D:/c++GCC_MinGW/mingw64/bin/g++.exe
CC       := D:/c++GCC_MinGW/mingw64/bin/gcc.exe
CXXFLAGS :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
CFLAGS   :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := D:/c++GCC_MinGW/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=D:\AllApplications\CodeLiteC++\CodeLite
SHELL := cmd.exe
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Athlete.cpp$(ObjectSuffix) $(IntermediateDirectory)/Team.cpp$(ObjectSuffix) $(IntermediateDirectory)/Triathlon.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@if not exist "$(OutputDirectory)" $(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1/ETE_Project_Triatlon/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Athlete.cpp$(ObjectSuffix): Athlete.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1/ETE_Project_Triatlon/Athlete.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Athlete.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Athlete.cpp$(PreprocessSuffix): Athlete.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Athlete.cpp$(PreprocessSuffix) Athlete.cpp

$(IntermediateDirectory)/Team.cpp$(ObjectSuffix): Team.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1/ETE_Project_Triatlon/Team.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Team.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Team.cpp$(PreprocessSuffix): Team.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Team.cpp$(PreprocessSuffix) Team.cpp

$(IntermediateDirectory)/Triathlon.cpp$(ObjectSuffix): Triathlon.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Berkay/Documents/WorkSpaces_C++/WorkSpace1/ETE_Project_Triatlon/Triathlon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Triathlon.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Triathlon.cpp$(PreprocessSuffix): Triathlon.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Triathlon.cpp$(PreprocessSuffix) Triathlon.cpp

##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


