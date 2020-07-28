#!/bin/sh -l

command="eb use $1 && eb setenv $2"

$command