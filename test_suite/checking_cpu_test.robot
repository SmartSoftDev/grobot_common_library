*** Settings ***
Documentation          Checking CPU arhitecture of binary files
Resource               user_operations.rst
Library                checking_cpu.py
*** Test Cases ***
Test case
    [Documentation]    Execute echo on Gateway and verify output
    [Tags]  smoke
    Keyword
    #Check binary ARCH x86_64 /lib64/ld-linux-x86-64.so.2 /usr/bin/find
    Check binary ARCH  x86_64 /lib64/ld-linux-x86-64.so.2 /usr/bin/find