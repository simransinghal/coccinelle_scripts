@@
type T,T2;
identifier I1,I2;
expression e1,e2;
iterator name list_for_each_entry;
iterator name list_for_each;
@@

- T *I1;
...
- list_for_each(I1,e1)
+ list_for_each_entry(I2,e1,e2)
{
...when!=T *I1;
- I2=list_entry(I1,T2,e2);
...
}
...when!=I2;

@@
type T,T2,T3;
identifier I1,I2,I3;
expression e1,e2;
@@

- T *I1;
+ T3 *I3;
...
- list_for_each(I1,e1)
+ list_for_each_entry(I3,e1,e2)
{
...when!=T *I1;
- T3 *I3=list_entry(I1,T2,e2);
...
}
...when!=I3; 
