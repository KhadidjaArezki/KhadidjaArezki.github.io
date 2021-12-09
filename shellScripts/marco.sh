#!/usr/bin/bash
marco() {
     marco=$(pwd);
     export marco; 
}
polo() {
    cd "$marco" || exit;
}
