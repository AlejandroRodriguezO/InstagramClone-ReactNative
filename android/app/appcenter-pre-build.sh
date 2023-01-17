#!/bin/env bash

echo "Arguments for updating:"
echo " - ENVIRONMENT: $ENVIRONMENT"

if [ "$ENVIRONMENT" == 'DEV' ];  then
echo "DEV"
else 
echo "No DEV"

# Updating WebApiSettings
