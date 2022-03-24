# Blog in a Box

A quick, all in one stop for someone to get a blog presence up and running.

## Congratulations on Getting Started! :tada: :+1:

The world needs your voice. Good on you for putting it out there.

If you have questions about this project or how to use it, don't hesitate to open an issue (though please check the FAQs in this doc first just ot be sure). We're happy to help you get going.

## Prerequisites

* Docker (if wanting to use the dev container on your local machine). 
* If not using the dev container, you'll need Ruby and Node installed locally.

## The Ingredients

This project is created to use the following:

* A dev container. This will allow us to use VSCode to open this project within the dev container we've created, saving you a bunch of setup and hassle.
    * Alternatively, you can use GitHub Codespaces and do this all in a web browser. (cool, right?!)
    * Alternatively, you can open this on your local machine as long as you have the dependencies installed.
* Jekyll -- a popular static site generator
* Minimal mistakes -- a great, clean Jekyll theme that is highly customizable
* GitHub Pages -- this is where we assume your site will be deployed. It is free and excellent.

## Using This Project to Make Your Own Blog

* Update the name within your `devcontainer.json` file to match your blog's name.
* Go through the [Configuration Guide for the Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/docs/configuration/), and update the `src/_config.yml` file accordingly.
  * We've configured some sensible defaults and added comments where they might be helpful.