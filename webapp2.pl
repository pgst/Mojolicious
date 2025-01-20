use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  
  # テンプレートの指定
  $self->render('index');
};

get '/company/info' => sub {
  my $self = shift;
  
  # テンプレートの指定
  $self->render('company/info');
};

app->start;

__DATA__

@@ index.html.ep
<!DOCTYPE html>
<html>
<head>
  <title>Index</title>
</head>
<body>
  <h1>Index</h1>
</body>
</html>

@@ company/info.html.ep
<!DOCTYPE html>
<html>
<head>
  <title>Company Infomation</title>
</head>
<body>
  会社情報
</body>
</html>
