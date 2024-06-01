# imprecv

<p align="center">
  <a href="https://github.com/jskherman/imprecv/stargazers">
    <img alt="Apache-2 License" src="https://img.shields.io/badge/Star%20Repo-⭐-1081c2.svg"/>
  </a>
  <a href="LICENSE">
    <img alt="Apache-2 License" src="https://img.shields.io/badge/license-Apache%202-brightgreen"/>
  </a>
  <a href="https://github.com/jskherman/imprecv/releases">
    <img alt="Release" src="https://img.shields.io/github/v/release/jskherman/imprecv"/>
  </a>
</p>

`imprecv` is a no-frills curriculum vitae (CV) template for [Typst](https://github.com/typst/typst) that uses a YAML file for data input in order to version control CV data easily.

This is based on the [popular template on Reddit](https://web.archive.org/https://old.reddit.com/r/jobs/comments/7y8k6p/im_an_exrecruiter_for_some_of_the_top_companies/) by [u/SheetsGiggles](https://web.archive.org/https://old.reddit.com/user/SheetsGiggles) and the recommendations of the [r/EngineeringResumes wiki](https://web.archive.org/https://old.reddit.com/r/EngineeringResumes/comments/m2cc65/new_and_improved_wiki).

> [!NOTE]  
> [I'm](https://github.com/jskherman) only doing programming as a hobby so it might take me a while to respond to issues and pull requests. If you would like to contribute to this project, I would be happy to review your pull requests when I can. Thank you for your understanding.

## Demo

See [**example CV**](https://github.com/jskherman/imprecv/releases/latest/download/example.pdf) and [@jskherman's CV](https://go.jskherman.com/cv):

<div align="center">
  <img src="https://github.com/jskherman/imprecv/raw/main/assets/thumbnail.1.png" alt="Sample CV Page 1" style="float: left; width: 49%; height: auto;">
  <img src="https://github.com/jskherman/imprecv/raw/main/assets/thumbnail.2.png" alt="Sample CV Page 2" style="float: left; width: 49%; height: auto;">
</div>

## Usage

This `imprecv` is intended to be used by importing the template's [package entrypoint](cv.typ) from a "content" file (see [`template.typ`](template/template.typ) as an example).
In this content file, call the functions which apply document styles, show CV components, and load CV data from a YAML file (see [`template.yml`](template/template.yml) as an example).
Inside the content file you can modify several style variables and even override existing function implementations to your own needs and preferences.

### With the [Typst CLI](https://github.com/typst/typst)

The recommended usage with the Typst CLI is by running the command `typst init @preview/imprecv:0.5.0` in your project directory.
This will create a new Typst project with the `imprecv` template and the necessary files to get started.
You can then run `typst compile template.typ` to compile your file to PDF.

Take a look at the [example setup](https://github.com/jskherman/cv.typ-example-repo) for ideas on how to get started. It includes a GitHub action workflow to compile the Typst files to PDF and upload it to Cloudflare R2.

### With [typst.app](https://typst.app)

From the Dashboard, select "Start from template", search and choose the `imprecv` template.
From there, decide on a name for your project and click "Create".
You can now edit the template files and preview the result on the right.
