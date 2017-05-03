@echo off 
REM #####################################################
REM # Applies NCAR-specific configurations to CatMDEdit,
REM # updating thesauri and adding our Contacts list. 
REM # Run this after installing CatMDEdit 
REM #   updated for ver.5.2.0 
REM #####################################################
echo.
set /P catBase= Enter the full path to the base CatMDEdit directory (e.g. C:\CatMDEdit): 
echo "Files within the %catBase% installation directory will be updated"
pause
@echo on
xcopy /S "Expert Mode" "%catBase%\template\genericEditor\gui\Expert Mode" /i
xcopy /S "NCAR Dialect" "%catBase%\template\genericEditor\gui\NCAR Dialect" /i
xcopy /S "FAST" "%catBase%\template\genericEditor\gui\FAST" /i
copy /Y iso19115.xml "%catBase%\repository\standards"
copy Default.theme "%catBase%"
copy /Y internat.properties "%catBase%"
copy /Y splash_Cat_5.0_NMDEdit.jpg "%catBase%\imagen\generalIcons"
copy /Y icons.properties "%catBase%"  
xcopy .\contact "%catBase%\repository\contact"
copy /Y CSDGM_FormatNameCode.dat "%catBase%\repository\thesaurus"
copy /Y "CSDGM_FormatNameCode.MD.DC_externo.xml" "%catBase%\repository\thesaurus"
copy ResourceTypeNameCode.dat "%catBase%\repository\thesaurus"
copy ResourceType.MD.DC.xml "%catBase%\repository\thesaurus"
copy nmdedit-5.2.0.jar "%catBase%\lib"
copy NMDEdit.launch "%catBase%"
copy NMDEdit.properties "%catBase%"
copy about.html "%catBase%\doc\about"
copy ncar_highres_transparent.png "%catBase%\doc\about\about_files"
copy ncar_metatata_template___eng.xml "%catBase%\repository\templates" 
copy FAST_Template.xml "%catBase%\repository\templates" 
del "%catBase%\repository\metadata\*.xml"
copy sample_XML\*.xml "%catBase%\repository\metadata"
copy NMDEdit.bat "%catBase%"
cd "%catBase%"
@echo off
echo "NMDEdit is now ready to use"
echo. 
echo "To start, double click on the NMDEdit batch file in the install directory." 
REM echo "done"
echo.
pause

