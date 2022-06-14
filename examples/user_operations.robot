*** Settings ***
Library                OperatingSystem
# Library                ../robotics/test_cnc.py

*** Keywords ***
My First Keyword
    Log To Console   \n WORKS
    ${fileExists}=    File Should Exist    my_file.log
