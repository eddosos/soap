Ah, I see the issue now. Your repository is using HTTPS instead of SSH, which is why GitHub is asking for a username when you run `git push`.

Your repository is:

`https://github.com/eddosos/soap`

Let's switch it to SSH.

### 1. Change the Git remote URL

Inside `/content/soap`, execute:

```
git remote set-url origin git@github.com:eddosos/soap.git
```

### 2. Verify the remote

```
git remote -v
```

You should see:

```
origin  git@github.com:eddosos/soap.git (fetch)
origin  git@github.com:eddosos/soap.git (push)
```

### 3. Test GitHub SSH authentication

```
ssh -T git@github.com
```

### 4. Push

```
git push origin main
```

Important: If SSH authentication fails, we need to add your server's public SSH key to GitHub first.

Let's start with step 1 and 2.
