# Blog in a Box

A quick, all in one stop for someone to get a blog presence up and running.

## Congratulations on Getting Started! :tada: :+1:

The world needs your voice. Good on you for putting it out there.

## Need Help? Trying to accomplish something but unsure how?

If you have questions about this project or how to use it, don't hesitate to open an issue (though please check the FAQs in this doc first just ot tobe sure). We're happy to point you in the right direction.

## Should you "fork" this, or copy its contents?

What this heck is this `fork` term?! Don't panic.

"Forking" is the idea of copying this project into your account, but keeping a link between the project in your account and this project. In this case, this repository would become the "upstream" repository to yours.

This could be useful in some ways. For example, if we update some things, and you wanted to pull those changes in without having to copy & paste them yourself, forking can be a nice way to achieve that. If your project and our project diverge, you might run into some change conflicts when trying to do that. (you can feel free to ask for help if you do!)

If you prefer things to be isolated with no upstream link, you can download the contents of this repository and copy all the files into your repository. We recommend checking back for updates and we're happy to help you work through ay upgrade pains you have.

## Prerequisites

* A GitHub account (you can get one for free).
* Docker (if wanting to use the dev container on your local machine).
* If not using the dev container, you'll need Ruby and Node installed locally.
* A domain name. You don't strictly need one -- you could deploy to `yoursite.githubpages.io`, but we find that with a domain name things just feel snazzier. Prices vary by name. Sean likes [Namecheap](https://namecheap.com) for low cost + ease of use. If you want to search for a name, you could try using [Domainr](https://domainr.com) and see what you come up with.
* [VS Code](https://code.visualstudio.com/) for development.

## The Ingredients

This project is created to use the following:

* A dev container. This will allow us to use VSCode to open this project within the dev container we've created, saving you a bunch of setup and hassle. It includes shortcut commands, recommended default extensions to make authoring easier, etc.
  * Alternatively, you can use GitHub Codespaces and do this all in a web browser. The dev container can be used locally or in a browser. (cool, right?!)
  * Alternatively, you can open this on your local machine as long as you have the dependencies installed.
* Jekyll -- a popular static site generator
* Minimal mistakes -- a great, clean Jekyll theme that is highly customizable
* GitHub Pages -- this is where we assume your site will be deployed. It is free and excellent.

## Using This Project to Make Your Own Blog

### Getting Started

* Delete the `CNAME` file -- that one belongs to us so you'll have a conflict if you try to publish and it's still there. We'll walk through steps to set this up later.
* Update the name within your `devcontainer.json` file to match your blog's name.
* Go through the [Configuration Guide for the Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/docs/configuration/), and update the `docs/_config.yml` file accordingly.
  * We've configured some sensible defaults and added comments where they might be helpful.
* As you go through the posts in the `_posts` directory, feel free to delete them so that they don't ship with your site.
* You may want to replace or delete the `/docs/favicon.ico` file, which is currently the Excella logo.
* You may want to set comments in `docs/_config.yaml` from `giscus` to `false` temporarily, until you follow the docs below to set up Giscus commenting.

### Running Commands

| Goal | Within Dev Container | On Local Machine | Notes |
| ---- | -------------------- | ---------------- | ----- |
| Local Development | `localdev` | `bundle install && bundle exec jekyll serve --future` | Publishes future posts, so you can see them. Won't happen in normal publishing. |
| Serve | `serve` | `bundle exec jekyll serve --future` | Without gemfile installations.
| Spelling | `spellcheck` | The [cSpell commands](https://www.npmjs.com/package/cspell) | |
| Linting | `lint` | The [markdownlint-cli commands](https://github.com/igorshubovych/markdownlint-cli) | |
| Build | `build` | `bundle exec jekyll build` | |

### Setting up Scheduled Posts

By default, this blog has a GitHub Action that will run to publish every hour. That way, you can create a post for the future, and when the build runs and that post is no longer in the future, it will be published.

You'll need to take one of two actions. If you don't want scheduled posts, delete `scheduled-posts.yml` from the `.github` directory.

If you do want scheduled posts:

* You'll need to generate a token called `PAGES_ACCESS_TOKEN` and save it, [as described here](https://seankilleen.com/2020/02/how-to-deploy-github-pages-on-a-schedule-to-publish-future-posts/). The general summary is:
  * Go to [your GitHub tokens settings](https://github.com/settings/tokens)
  * Click the button to create a new token, and give it a name like "Scheduled Posts" or similar.
  * For the permissions, specify `public_repo`.
  * Copy the Access token for use in the next step.
* Add the secret for GitHub actions
  * Go into the settings of your GitHub repository.
  * Select `Secrets --> Actions` from the left-hand menu.
  * Click the `New Repository Secret` button
  * Name the secret `PAGES_ACCESS_TOKEN` and paste the value in.
* Update the repository value in the `scheduled-posts.yml` file -- instead of `excellalabs/blog-in-a-box`, use your username and repository name.

### Opening the Project for Development

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

#### Using VS Code and the Dev Container

* Ensure Docker is started on your machine
* Open The repository within VS Code on your machine.
* You may be prompted to reopen in the dev container. If prompted, do that.
* If not prompted, click in the bottom left corner (the green area) and select `Reopen in Container`.

#### Using GitHub Codespaces

If GitHub Codespaces is enabled, you can open this project and code on it from directly within your web browser!

* Go to your repository on GitHub
* Click the green `<> Code` button
* Click the `Codespaces` tab
* Click `New codespace`

This will open a browser window that will work exactly as if you have a local VS Code instance.

### Setting up comments using Giscus

The "minimal mistakes" theme that this ships with allows for a number of different comment set ups. But out of the box, we wanted to enable a quick path comments for your sites.

[Giscus](https://giscus.app/) allows you to use the GitHub Discussions feature, which comes built into GitHub for your repository, to host comments on your blog. To set up Giscus comments:

* Enable discussions for your repository. If you don't see the "Discussions" tab, you can go to the settings for your repository, and under the `Features` section, check the `Discussions` box.
* On the discussions tab, click the pencil icon next to Categories, and create a new category called "Blog Comments" or similar. Make sure you set the discussion format to `Announcement`, because you only want the Giscus app (which we'll set up shortly) to be the one managing comments.
* Navigate to the [Giscus app](https://giscus.app/) and follow the instructions to set it up.
  * As part of the instructions, you'll have to add the Giscus app to your repository. This will show a warning, but is perfectly fine for use and you can feel comfortable accepting it.
  * For the repository name, you'll use your username and the repository name, e.g. `excellalabs/blog-in-a-box` for this one.
  * You'll copy the ID, category ID, etc. from the Giscus app -- rather than copying the `<script>` tag that it supplies, you'll copy the informational bits into the `giscus` configuration in your `docs/_config.yml` file.

### Deploying Your Blog

This can get a little tricky so we'll walk through this example with Namecheap and provide some screenshots.

* Add a file to the root of the repository called `CNAME`. The contents of the file should be the domain name or subdomain you're deploying to, e.g. `blog.mysite.com` or `bloginaboxdemo.com`.
* Save the file, commit it, and merge the change.
  * (are these terms completely unfamiliar? That's ok! Feel free to [create an issue in this repository](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help you walk through it.)

Next up, it's time to Get the GitHub Pages settings in place.

* In your repository on GitHub, navigate to the `Settings` tab and click it.
* On the left-hand navigation, choose `Pages` for pages settings.
* From the `Source` drop-down, select the `main` branch. You can think of this branch like "production". Anything merged into it will get published (unless it's a future post).
* Change the `Folder` option from `/(root)` to `/docs` and click `Save`.
* Note: we're _not_ going to choose a theme, because we're already using a theme that comes bundled with our blog.

With those settings in place, next  we need to go to our domain registrar or the organization who handles DNS (in our example, we're using [Namecheap](https://namecheap.com), because Sean loves them.) We're going to follow the [GitHub Pages custom domain instructions](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site) here. The instructions below work if you're using an "apex" or "naked" domain, such as our `bloginaboxdemo.com` site. If you're using a sub-domain, follow the instructions at the above link. [Create an issue](https://github.com/excellalabs/blog-in-a-box/issues/new) if you get stuck, and we'll help you.

* Log into Namecheap and go to the domain's settings.
* Click the "Advanced DNS" button" to go to DNS settings
* If it's a new domain, remove any default DNS records that are there. Otherwise, be careful what you change (and feel free to ask us for help by [creating an issue](https://github.com/excellalabs/blog-in-a-box/issues/new)).
* For each of the IP Addresses [in the Apex domain instructions](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain) (at the time, `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`):  
  * Create a new record, of type `A`.
  * Make the host `@` (which is short-hand for the "naked domain", or `yoursite.com`).
  * Make the value the IP address
  * Repeat for all IP addresses
* Click to save your changes.
* Next you'll likely want to create a `www` subdomain so that `www.yoursite.com` and `yoursite.com` go to the same place.
  * Create a new DNS record, of type `CNAME`. Set the host as `www`, and the value as `yourusername.github.io`. For example, this repo is hosted on the `excellalabs` org, so our value would be `excellalabs.github.io`.

Here's an example of how the DNS records might look:

![DNS records, both A and CNAME, for bloginaboxdemo.com](readme-images/DNSConfiguration_NakedDomainPlusWWW.png)

At this point, your DNS changes should be live soon (they take some time to propagate -- sometimes more than 24 hours). Then, your blog should be available at the URL you configured.

Now we can enforce `HTTPS`, which is important for the security of the web.

* Go back to the GitHub Pages settings
* Check the `Enforce HTTPS` option. You'll see a green checkmark after it automatically saves.

### Protecting Your Branch to ensure build steps run

We don't want to merge something that could break things for us, so we want to "protect" our `main` branch and ensure that the GitHub Actions pass before something can be merged.

* Go to your repository's settings
* On the left-hand navigation, click `Branches`.
* Under the `Branch protection rules` section, click `Add rule`.
* For `branch name pattern`, specify `main`, which is the default branch for the project.
* If you'd like, check off `Require a pull request before merging`. This means that you can't just push changes to the main branch. A PR helps organize things and ensure that all checks complete.
* Check the box for `Require status checks to pass before merging`. Search for `spellchecking`, `Markdown linting`, and `build` and click on them to add them.
* Modify any other settings that might be of interest to you.
* Save the settings.

A screenshot of what the settings might look like :

> ![Branch protection settings for the main branch](readme-images/BranchProtection.png)

### Updating to a later version of our theme

This blog setup uses the [minimal mistakes theme](https://github.com/mmistakes/minimal-mistakes).

In the `docs/_config.yml` file, you'll see the line `remote_theme: "mmistakes/minimal-mistakes@4.24.0"` (at the time of this writing). This means we're using release `v4.24.0` of the theme.

From time to time, the theme may be updated and you'll see the update on [its releases page](https://github.com/mmistakes/minimal-mistakes/releases). If you want to be notified of updates, you can [go to the theme repository home page](https://github.com/mmistakes/minimal-mistakes), select `Watch --> Custom --> Releases`, which will subscribe you to release notifications.

If you want to update to a release, we recommend you:

* Read the release notes, which will contain information on breaking changes, upgrade steps, etc.
* Note the version number on the release tag
* Update the `_config.yml` to update the version in the `remote_theme` variable.

## Q & A

### Why is the blog in a `/docs` folder?

GitHub Pages, where we presume you are deploying, has some rules for what can be deployed. If deploying from the main branch, you have two options: `(root)`, or the base directory of the repository, and `/docs`. In our case, we didn't want the other stuff in the root to get confused with the actual blog stuff, so we chose `/docs` because that's the name available that fits into our batteries-included setup with the least amount of fuss.

There are ways to customize this, particularly by using a `gh-pages` branch and creating a GitHub Action to push to it, but we figured that might be over-complicated. Feel free to reach out if you want to set that up and we may follow up with some more on this in the future.

### Why are there two `markdownlint` configuration files?

`.markdownlintrc` is for the GitHub Actions build step, and `.markdownlint.json` is for the VS Code extension that underlines issues. We'll see if we can combine them into one file, but that's why they exist currently.
