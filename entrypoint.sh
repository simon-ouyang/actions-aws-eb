#!/bin/sh -l

sh -c "eb use $application_environment && eb setenv $environment_variable"
