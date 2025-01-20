use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  
  # テンプレートの指定
  $self->render('index');
};

app->start;

__DATA__

@@ index.html.ep
<%
  my $name = 'Takatsuka';
  my $age = 51;
  my @nums = (1, 2, 3);
%>
<!DOCTYPE html>
<html>
<head>
  <title>Index</title>
</head>
<body>
  <h1>Index</h1>
  % if ($name eq 'Takatsuka') {
    Takatsuka
  % } else {
    Other
  % }
  <br>
  彼は <%= $age %> 歳です。
  <br>
  % for my $num (@nums) {
    <%= $num %>
    <br>
  % }
</body>
</html>