.. code:: robotframework

    *** Settings ***
    Library                OperatingSystem
    # Library                ../robotics/test_cnc.py

    *** Keywords ***
    Keyword
        Log To Console   \n WORKS
        ${fileExists}=    File Should Exist    empty_file.log
