import 'package:idproject/stack.dart';


class calc
{
  String w = "";
  stack num = stack();
  stack m = stack();

  calc(String u) {
    //print("the w is $w\n");
    w += u;
    //print("teh w is now $w\n");
    int len = w.length;
    int prev = 0;
    int p = 0;
    if(w[0]=="-")
    {
      num.push(0);
      m.push("-");
      p++;
    }
    while (p < len) {
      String st = "";
      while (p < len && code(w[p]) == prev) {
        st += w[p];
        p++;
      }
      //print(st);
      if (st == "=")
        break;
      else if (st == "+" || st == "-" || st == "*" || st == "/") {
        if (check(m.top(), st)) {
          dynamic v = num.top();
          num.pop();
          dynamic y = num.top();
          num.pop();
          String ch = m.top();
          m.pop();
          num.push(perform(v, y, ch));
        }
        m.push(st);
      }
      else
        num.push(double.parse(st));
      if (p < len)
        prev = code(w[p]);
    }
    // while(!num.empty())
    // {
    //   print(num.top());
    //   num.pop();
    // }
    // while(!m.empty())
    // {
    //   print(m.top());m.pop();
    // }
    while (num.size() > 1) {
      dynamic v = num.top();
      num.pop();
      dynamic y = num.top();
      num.pop();
      dynamic x = (perform(v, y, m.top()));
      num.push(x);
      m.pop();
    }
    //print(num.top());
    w = (num.top()).toString();
    num.pop();
  }
}
dynamic code(String st)
{
  if(st=="+"||st=="-")return 1;
  else if(st=="*"||st=="/")return 2;
  else if(st=="=")return 3;
  else return 0;
}
bool check(String a,String b)
{
  if(a==null)return false;
  if(code(a)>=code(b))return true;
  else return false;
}
dynamic perform(dynamic a,dynamic b,dynamic sym)
{
  if(sym=="+")return a+b;
  else if(sym=="-")return b-a;
  else if(sym=="*")return a*b;
  else if(sym=="/")return b/a;
}