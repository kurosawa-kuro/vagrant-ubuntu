# vagrant-ubuntu

こちらが要求に応じた情報の清書版です：

### Vagrantを使用した開発環境の設定

1. **Vagrantの起動**
   - `vagrant up` コマンドを使用して、Vagrant環境を起動します。
   - `vagrant ssh` コマンドで起動したVagrant環境にSSH接続します。

2. **Gitのバージョン確認**
   - `git --version` コマンドを実行して、インストールされているGitのバージョンを確認します。

3. **Gitユーザー情報の設定**
   - `git config --global user.name "あなたの名前"` コマンドで、Gitのユーザー名をグローバルに設定します。
   - `git config --global user.email "あなたのメールアドレス"` コマンドで、Gitのメールアドレスをグローバルに設定します。

4. **SSHキーの生成**
   - `ssh-keygen -t ed25519` コマンドを使用して、新しいSSHキーを生成します。キーの生成時には、保存場所やパスフレーズの設定が求められますが、特に変更がなければそのままEnterキーを押して進めます。
   - `ls -la ~/.ssh/id_ed25519.pub` コマンドで、生成した公開キーが正しく保存されていることを確認します。
   - `cat ~/.ssh/id_ed25519.pub` コマンドで、公開キーの内容を表示し、コピーします。

5. **GitHubでのSSHキーの設定**
   - GitHubにログインした後、「Settings」＞「SSH and GPG keys」＞「New SSH key」ボタンをクリックして、新しいSSHキーを追加します。
   - 「Title」フィールドには、キーを識別するための名前を入力します。
   - 「Key」フィールドには、先ほどコピーした公開キーの内容を貼り付けます。
   - 「Add SSH key」ボタンをクリックして、キーをGitHubアカウントに追加します。


