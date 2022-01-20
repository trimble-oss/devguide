module.exports = {
  plugins: {
    "@fullhuman/postcss-purgecss": {
      content: ["./layouts/**/*.html", "./public/**/index.html", "./content/**/*.md"],
      safelist: ["arrow", "bg-light", "chroma", "col", "container", "cookie-policy-description", "highlight", "language-txt", "ot-*", "row", "sr-only", "table", "text-light", "text-white"],
    },
    autoprefixer: {},
  },
};
