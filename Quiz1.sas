LIBNAME Quiz1 '/home/u63577751/Quiz1/';
/*Q2*/
data Quiz1.quiz1;
    set Quiz1.Quiz1_data;
run;

/*Q3*/
proc contents data=Quiz1.quiz1_data;
run;

/*Q4*/
proc freq data=Quiz1.quiz1_data;
    table diabetes;
run;
/*Q5*/
proc univariate data= Quiz1.quiz1_data;
	variable X1;
	histogram X1;
run;

/*Q6+Q7+Q8*/
data work.quiz1;
	set Quiz1.quiz1_data;
	sum_V1=X1+X2+X3;
	sum_V2=sum(X1,X2,X3);
	wait_time=Surgery_dt-Consult_dt;
run;

/*Q9*/
proc univariate data=work.quiz1;
	variable X2;
	histogram X2;
run;

data work.quiz1;
	set work.quiz1;
	X2_high=0;
	if X2>=11.97 then X2_high=1;
run;

/*Q10*/
proc univariate data=work.quiz1;
	variable sum_V2;
	run;

proc univariate data=work.quiz1;
	variables wait_time;
	run;

proc freq data=work.quiz1;
	tables X2_high*diabetes;
run;

proc contents data=work.quiz1;
run;