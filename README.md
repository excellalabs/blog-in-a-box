# Blog in a Box

A quick, all in one stop for someone to get a blog presence up and running.

## Congratulations on Getting Started! :tada: :+1

The world needs your voice. Good on you for putting it out there.

## Need Help? Trying to accomplish something but unsure how?

If you have questions about this project or how to use it, don't hesitate to open an issue (though please check the FAQs in this doc first just ot tobe sure). We're happy to point you in the right direction.

## Should you "fork" this, or copy its contents?

What this heck is this `fork` term?! Don't panic.

"Forking" is the idea of copying this project into your account, but keeping a link between the project in your account and this oneprojects. In this case, this repository would become the "upstream" repository to yours.

This could be useful in some ways. For example, if we update some things, and you wanted to pull those changes in without having to copy & paste them yourself, forking can be a nice way to achieve that. If your project and our project diverge, you might run into some change conflicts when trying to do that. (you can feel free to ask for help if you do!)

If you prefer things to be isolated with no upstream link, you can download the contents of this repository and copy all the files into your repository. We recommend checking back for updates and we're happy to help you work through ay upgrade pains you have.

## Prerequisites

* Docker (if wanting to use the dev container on your local machine).
* If not using the dev container, you'll need Ruby and Node installed locally.
* A domain name. You don't strictly need one -- you could deploy to `yoursite.githubpages.io`, but we find that with a domain name things just feel snazzier. Prices vary by name. Sean likes [Namecheap](https://namecheap.com) for low cost + ease of use. If you want to search for a name, you could try using [Domainr](https://domainr.com) and see what you come up with.

## The Ingredients

This project is created to use the following:

* A dev container. This will allow us to use VSCode to open this project within the dev container we've created, saving you a bunch of setup and hassle.
  * Alternatively, you can use GitHub Codespaces and do this all in a web browser. (cool, right?!)
  * Alternatively, you can open this on your local machine as long as you have the dependencies installed.
* Jekyll -- a popular static site generator
* Minimal mistakes -- a great, clean Jekyll theme that is highly customizable
* GitHub Pages -- this is where we assume your site will be deployed. It is free and excellent.

## Using This Project to Make Your Own Blog

### Getting Started

* Delete the `CNAME` file -- that one belongs to us so you'll have a conflict if you try to publish and it's still there.
* Update the name within your `devcontainer.json` file to match your blog's name.
* Go through the [Configuration Guide for the Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/docs/configuration/), and update the `src/_config.yml` file accordingly.
  * We've configured some sensible defaults and added comments where they might be helpful.

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

### Deploying Your Blog

## Q & A

### Why is the blog in a `/docs` folder?

GitHub Pages, where we presume you are deploying, has you set up some rules for what can be deployed. If deploying from the main branch, you have two options: `(root)`, or the base directory of the repository, and `/docs`. In our case, we didn't want the other stuff in the root to get confused with the actual blog stuff, so we chose `/docs` because that's the name available that fits into our batteries-included setup with the least amount of fuss.

There are ways to customize this, particularly by using a `gh-pages` branch and creating a GitHub Action to push to it, but we figured that might be over-complicated. Feel free to reach out if you want to set that up and we may follow up with some more on this in the future.