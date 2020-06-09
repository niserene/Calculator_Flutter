import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class stack
{
  var list=[];
  int n;
  stack()
  {
    n=-1;
  }
  void push(var x)
  {
    list.add(x);
    n++;
  }
  dynamic top()
  {
    if(n>=0)
      return list[n];
  }
  void pop()
  {
    if(n>=0)
      list.remove(list[n--]);
  }
  bool empty()
  {
    if(n<0)return true;
    return false;
  }
  int size()=>n+1;

}