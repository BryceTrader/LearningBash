#!/bin/bash

BIRTHDATE="Mar 26, 1996"
Presents=10
BIRTHDAY=$(date -d "${BIRTHDATE}" +%A)

echo "${BIRTHDAY}, ${BIRTHDATE} is the date of my birth. I recieved ${Presents} presents."