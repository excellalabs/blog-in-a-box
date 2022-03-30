# Blog in a Box

A quick, all in one stop for someone to get a blog presence up and running.

## Congratulations on Getting Started! :tada: :+1:

The world needs your voice. Good on you for putting it out there.

## Need Help? Trying to accomplish something but unsure how?

If you have questions about this project or how to use it, don't hesitate to [open an issue](https://github.com/excellalabs/blog-in-a-box/issues/new) (though please check the FAQs in this doc first just ot tobe sure). We're happy to point you in the right direction.

## Topics

We've published these topics as individual blog posts so that they have their own space, and also to exercise our creation a little bit.

* [Should you fork this or copy it?](docs/_posts/2022-01-01-welcome-to-biab.md)
* [The Ingredients](docs/_posts/2022-01-02-the-ingredients.md)
* [Prerequisites](docs/_posts/2022-01-03-prerequisites.md)
* [Getting Started](docs/_posts/2022-01-04-getting-started.md)
* [Opening the Project for Development](docs/_posts/2022-01-05-opening.md)
* [Running Commands](docs/_posts/2022-01-06-running-commands.md)
* [Protecting Your Branch to ensure build steps run](docs/_posts/2022-01-07-protecting-your-branches.md)
* [Setting up Scheduled Posts](docs/_posts/2022-01-08-scheduled-posts.md)
* [Setting up comments using Giscus](docs/_posts/2022-01-09-giscus-comments.md)
* [Adding a live preview of pull requests using Netlify](docs/_posts/2022-01-10-netlify-preview.md)
* [Deploying Your Blog](docs/_posts/2022-01-11-deploying.md)
* [Updating to a later version of our theme](docs/_posts/2022-01-12-updating-theme.md)

## Q & A

### Why is the blog in a `/docs` folder?

GitHub Pages, where we presume you are deploying, has some rules for what can be deployed. If deploying from the main branch, you have two options: `(root)`, or the base directory of the repository, and `/docs`. In our case, we didn't want the other stuff in the root to get confused with the actual blog stuff, so we chose `/docs` because that's the name available that fits into our batteries-included setup with the least amount of fuss.

There are ways to customize this, particularly by using a `gh-pages` branch and creating a GitHub Action to push to it, but we figured that might be over-complicated. Feel free to reach out if you want to set that up and we may follow up with some more on this in the future.

### Why are there two `markdownlint` configuration files?

`.markdownlintrc` is for the GitHub Actions build step, and `.markdownlint.json` is for the VS Code extension that underlines issues. We'll see if we can combine them into one file, but that's why they exist currently.
