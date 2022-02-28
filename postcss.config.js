module.exports = {
  plugins: {
    "@fullhuman/postcss-purgecss": {
      content: ["./layouts/**/*.html", "./public/**/index.html", "./content/**/*.md"],
      safelist: [
        "arrow",
        "autocomplete-suggestion",
        "autocomplete-suggestions",
        "bg-light",
        "bg-white",
        "chroma",
        "col",
        "container",
        "container-fluid",
        "cookie-policy-description",
        "d-block",
        "d-inline-block",
        "footer",
        "highlight",
        "language-txt",
        "main",
        "mt-md-0",
        "mt-sm-0",
        "navbar",
        "onetrust*",
        "optanon*",
        "ot-*",
        "row",
        "sr-only",
        "table",
        "td",
        "text-light",
        "text-white",
        "thead",
        "w-50",
        "w-100",
      ],
    },
    autoprefixer: {},
  },
};
