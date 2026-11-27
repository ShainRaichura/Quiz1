options obs=100; /* cap input rows for the captured run */
/* sample data standing in for the course dataset Quiz1_data */
libname Quiz1 '.';
data Quiz1.quiz1_data;
    input ID X1 X2 X3 diabetes Consult_dt :date9. Surgery_dt :date9.;
    format Consult_dt Surgery_dt date9.;
    datalines;
1 10.2 11.5 9.8 0 02JAN2020 20JAN2020
2 12.1 12.4 10.1 1 05JAN2020 15FEB2020
3 9.7 10.9 11.3 0 07JAN2020 02FEB2020
4 11.4 13.2 8.9 1 10JAN2020 10MAR2020
5 13.0 11.9 10.5 0 12JAN2020 29JAN2020
6 10.8 12.8 9.4 1 15JAN2020 21FEB2020
7 9.9 10.2 12.0 0 18JAN2020 05FEB2020
8 12.6 14.1 10.7 1 20JAN2020 25MAR2020
9 11.1 11.3 9.9 0 22JAN2020 14FEB2020
10 10.4 12.0 11.1 0 25JAN2020 18FEB2020
;
run;
