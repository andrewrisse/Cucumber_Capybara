#!/bin/bash
mysql -uroot -proot < bookstore/database/bookstore.sql
cucumber
