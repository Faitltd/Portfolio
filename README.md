# Your Landing Hero Website

This folder contains your complete website, ready to be hosted anywhere!

## 📁 What's Inside

- `index.html` - Your homepage
- `styles.css` - All your styles (compiled from Tailwind CSS)
- Other `.html` files - Additional pages (if any)

## 🚀 How to Preview Your Site

Since this website uses absolute paths (like `/styles.css`), you need to run a local server to preview it properly. Here are the easiest options:

### Option 1: Using VS Code (Recommended for beginners)

1. Download and install [VS Code](https://code.visualstudio.com/)
2. Install the "Live Server" extension (click Extensions icon on left sidebar, search "Live Server", click Install)
3. Open this folder in VS Code (File → Open Folder)
4. Right-click on `index.html` and select "Open with Live Server"
5. Your site will open in your browser automatically!

### Option 2: Using Python (if you have it installed)

Open Terminal/Command Prompt in this folder and run:

```bash
# Python 3
python -m http.server 8000

# Then open http://localhost:8000 in your browser
```

### Option 3: Using Node.js (if you have it installed)

```bash
# Install serve globally (one time)
npm install -g serve

# Run the server
serve .

# Then open the URL shown in terminal
```

### Option 4: Using npx (no installation needed, requires Node.js)

```bash
npx serve .
```

## 🌐 Deploying to the Web

You can upload these files to any web hosting service:

- **Netlify** (free): Drag and drop this folder at [netlify.com/drop](https://app.netlify.com/drop)
- **Vercel** (free): Connect your GitHub repo at [vercel.com](https://vercel.com)
- **GitHub Pages** (free): Push to a GitHub repo and enable Pages
- **Any web host**: Upload via FTP to your hosting provider

## Auto Deploy on Git Push (GitHub Actions)

This repo is configured to auto-deploy to `https://portfolio.itsfait.com/` whenever you push to the `main` branch.

### One-time setup

1. Generate a deploy key on your local machine:

```bash
ssh-keygen -t ed25519 -f ~/.ssh/portfolio_deploy -C "github-actions-portfolio"
```

2. Add the public key to the server:

```bash
cat ~/.ssh/portfolio_deploy.pub | ssh root@89.167.74.56 'umask 077; mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys'
```

3. Add this repository secret in GitHub:

- Name: `DEPLOY_SSH_KEY`
- Value: contents of `~/.ssh/portfolio_deploy` (private key)

Optional: add `DEPLOY_PORT` if your SSH port is not `22`.

### Deploy flow

- Push to `main`:

```bash
git push origin main
```

- GitHub Actions runs `.github/workflows/deploy.yml` and publishes to `/var/www/portfolio`.

## ❓ Need Help?

Visit [landinghero.com](https://landinghero.com) for support.

---
Made with ❤️ using Landing Hero
