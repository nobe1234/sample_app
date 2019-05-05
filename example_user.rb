class User
  attr_accessor :first_name,:last_name,:email; #getter,setterを設定してくれる。

  # 空のハッシュをデフォルトの引数に持つため、名前やメールアドレスのないユーザーを作成することが可能
  def initialize(attributes = {}) # User.newを実行すると自動的に呼び出されるメソッド.
    @first_name = attributes[:first_name] # 引数にattributesというハッシュを持たせる.
    @last_name = attributes[:last_name] # 引数にattributesというハッシュを持たせる.
    @email = attributes[:email]
  end

  # @name,@emailはインスタンス変数なので、自動的にformatted_emailで使えるようになる。
  # TODO: メソッド呼びだしがうまく行かない
  def formatted_email
    # "#{@full_name}<#{@email}>"
    full_name + "<#{@email}>"
  end

  def full_name
    @full_name = "#{@first_name} #{@last_name}"
    # "#{@name}<#{@email}>"
  end

  def alphabetical_name
    @alphabetical_name =  "#{@last_name}, #{@first_name}"
  end

end