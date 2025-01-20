use Mojolicious::Lite;

get '/' => sub {
  my $c = shift;

  # スタッシュに値を設定してindexテンプレートをレンダリング
  $c->render('index', 'name' => 'Takatsuka', 'age' => 51);
};

app->start;

__DATA__

@@ index.html.ep
<%
  # スタッシュから値を取得
  my $name = stash->{'name'};
  my $age = stash->{'age'};
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Index</title>
  </head>
  <body>
    <h1><%= $name %>:<%= $age %></h1>
  </body>
</html>