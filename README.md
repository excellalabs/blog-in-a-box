# Blog in a Box

A quick, all in one stop for someone to get a blog presence up and running.

## Congratulations on Getting Started! :tada: :+1:

The world needs your voice. Good on you for putting it out there.

If you have questions about this project or how to use it, don't hesitate to open an issue (though please check the FAQs in this doc first just ot be sure). We're happy to help you get going.

## Should I "fork" this, or copy its contents?

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