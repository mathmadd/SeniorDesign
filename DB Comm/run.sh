#!/bin/sh

g++ -Wall -I/usr/include/cppconn -o commv1 comm_v1.c -L/usr/lib -lmysqlcppconn
./commv1

