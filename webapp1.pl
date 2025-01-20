# 説明: Mojolicious::Liteを使用したシンプルなWebアプリケーション
use Mojolicious::Lite;

# ルートパスにアクセスした際の処理
get '/' => sub {
  # コントローラーのオブジェクトを取得
  my $self = shift;

  # レスポンスとしてHello Worldを返す
  $self->render(text => 'Hello World');
};

# ルーティングパターンの指定
get '/date/:date' => sub {
  # コントローラーのオブジェクトを取得
  my $self = shift;

  # パラメーターの取得
  my $date = $self->param('date');

  # レスポンスとしてパラメーターを返す
  $self->render(text => "Date: $date");
};

# ルーティングのパターンの指定
get '/diary' => sub {
  # コントローラーのオブジェクトを取得
  my $self = shift;
  
  # パラメーターの受け取り
  my $date = $self->param('date');
  my $user = $self->param('user');

  # レスポンスとしてパラメーターを返す
  $self->render(text => "Date: $date, User: $user");
};

# アプリケーションを開始
app->start;