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

@@ layouts/common.html.ep
<!DOCTYPE html>
<html>
<head>
  <title><%= stash('title') %></title>
</head>
<body>
  %= content;
</body>
</html>

@@ index.html.ep
% layout 'common', title => 'Index';
  <h1>Index</h1>

@@ company/info.html.ep
% layout 'common', title => 'Company Infomation';
  <h1>会社情報</h1>
