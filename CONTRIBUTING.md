# Contributing

We are happy to accept contributions from the community to improve this project.

## Editing using the Bitbucket Web Interface

1. Open the [Bitbucket site](https://bitbucket.trimble.tools/projects/TRIM/repos/devguide/browse) in your browser.
2. Navigate to the page you'd like to edit within the 'content' directory.
3. To edit, first click the grey 'Show source' button in the top-right of the content preview pane.
4. Make your text changes. When you've finished, click the blue 'Commit' button in the bottom-right.
5. In the 'Commit file' popup modal, enter a descriptive title of the change you're making and check the 'Create a pull request for this change' checkbox (you don't need to change the branch name).
6. On the 'Create pull request' screen you can enter a description for the change.
7. The Dev Guidelines Team will review, merge and publish your request or contact you with any follow-up questions.

### Setup (for creating a build of the site locally)

1. Install dependencies with `npm install`
2. Run `npm run serve` to run local server. (If fails to run you may need to install Autoprefixer globally with `npm install -g autoprefixer`).
3. The site will be available at <http://localhost:4000/> and will auto update when you make any changes

## Making a Pull Request

1. [Fork the devguide repo](https://bitbucket.trimble.tools/projects/TRIM/repos/devguide?fork).
2. Make your changes on your forked branch
3. Make a [pull request from your branch](https://bitbucket.trimble.tools/projects/TRIM/repos/devguide/pull-requests?create)

## Pull Request Checklist

- Before opening a PR run `npm run test` and wait for all tests to pass.
- If adding a new language Code Style page, please ensure that it includes Reference Code Standard and Implementing the Standard sections

### Images

- Filenames Requirements: Lowercase (not Mixed Case)
- Filenames Requirements: Separate words with dash/hyphen (not underscores or spaces)
- File formats: Icons or logos ideally SVG (minified). Use https://jakearchibald.github.io/svgomg/ for minifying a single image.
- File formats: Photos should never be in PNG24. A high quality JPEG is usually 1/4 of the size
- Always specify `alt=""` for improved accessibility
- Always specify `height` and `width` to images to improve page-rendering time (reduce repaints)
- Always add `loading="lazy"` to images below the fold for native lazy-loading (not needed for images less than 4 KB)
- Add the class `img-fluid` to images which are wider than 320 pixels so that they scale down on small screens such as iPhone 5/SE
- PNG Bitmap images should be losslessly optimized with `npm run imagemin` or https://squoosh.app/
- Image file size should never exceed 200 KB
- Tip: Don't hotlink to images on external sites - images on other sites maybe removed, renamed or changed and it means an extra TLD/DNS round-trip
