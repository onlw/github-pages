#!/bin/bash

## blue to echo
function echo_blue(){
    echo -e "\033[34m[ $1 ]\033[0m"
}

## green to echo
function echo_green(){
    echo -e "\033[32m[ $1 ]\033[0m"
}

## Error to warning with blink
function echo_red(){
    echo -e "\033[31m\033[01m\033[05m[ $1 ]\033[0m"
}

## Error to warning with blink
function echo_yellow(){
    echo -e "\033[33m\033[01m\033[05m[ $1 ]\033[0m"
}