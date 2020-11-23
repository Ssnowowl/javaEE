
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit pacient</title>
</head>
<body>
<h3>Edit pacient</h3>
<form method="post">
<input type="hidden" value="${pacient.id}" name="id" />
<label>Name</label><br>
<input name="name" value="${pacient.name}" /><br><br>
<label>Skarga</label><br>
<input name="skarga" value="${pacient.skarga}" /><br><br>
<input type="submit" value="Send" />
</form>
</body>
 <style type="text/css">
H1 {
  font-size: 50px;
  font-weight: normal;
  cursor: pointer;
  text-shadow: -1px -1px #000,
               0 1px 0 #444;
  color: #222;
  transition: all 1s;
  }
  H1:hover {
    color: #1A1A1A;
    }
a {
  color:#34495e; 
  line-height: 1.2; 
  position: relative; 
  padding: 0 14px; 
  text-transform: uppercase;
}
a:after {
  content: "";
  height: 100%;
  min-width: 4px;
  background: #34495e;
  position: absolute;
  left: 0;
  bottom: 0;
  transition: .5s;
}
a:hover:after {
  min-width: 100%;
  background: #95a5a6;
  opacity: .35;
}
    body{
    background:#DCD4AE;
    }
</style>
</html>