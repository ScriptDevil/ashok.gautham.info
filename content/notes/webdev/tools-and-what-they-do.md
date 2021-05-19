+++
title = "Tools and what they do"
date = 2021-05-19
+++

The javascript ecosystem seems to have a tonne of tools - this is particularly
daunting to a person like me who doesn't work in web-dev since the choices are
way too many.

- **npx**:
  - Lets you run [npm] packages without permanently installing them. Generally
    used to call packages that initially set up the project structure from
    templates or other such infrequently used tools. Comes bundled with the
    nodejs installer. So you probably already have it installed.
- **[degit]**
  - A tool that clones the current state of a git repo but without git revision
    history and so things tend to be faster than a full git clone. Uses github
    by default - so one only needs to provide a github relative package path
    like sveltejs/template. Used by svelte to get initial project scaffolding
    from a repo in github.
- [rollup]
  - A module bundler. Takes multiple javascript files and bundles them together
    - typically used to generate a single redistributable javascript file. Uses
    ES6 modules.
- [webpack]
  - A module bundler. Extremely configurable tool that can bundle css,
    javascript, html and also supports preprocessing the individual modules
    before bundling them together

# References
- [Svelte for new developers]




[npm]: https://www.npmjs.com/
[degit]: https://github.com/Rich-Harris/degit
[rollup]: https://rollupjs.org/
[webpack]: https://webpack.js.org/

[Svelte for new developers]: https://svelte.dev/blog/svelte-for-new-developers

