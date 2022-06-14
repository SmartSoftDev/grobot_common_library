*** Settings ***
Documentation          Bla bla
Resource               user_operations.robot
Library                arch_checking.py
*** Test Cases ***
My First Test case
    [Documentation]    Execute echo on Gateway amd verify output
    [Tags]  smoke
    My First Keyword
    #Check binary ARCH x86-64 /lib64/ld-linux-x86-64.so.2 /usr/bin/find
    Check binary ARCH  x86-64 /lib64/ld-linux-x86-64.so.2 /usr/bin/find

