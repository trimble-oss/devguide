# Trimble Developer Guidelines

## Running the site locally

### Requirements
- Ruby
- Jekyll and Builder (Ruby Gems)

### Jekyll Installation

#### Windows
- Step 1 - Install Ruby Installer for windows
  - https://rubyinstaller.org/downloads/
- Step - 2 Install Jekyll and Builder:
  - $ gem install jekyll bundler
- Step 3 - Verify Jekyll Installation
  - jekyll -v
- Step 4 - Go to root folder of docs (Root folder is where the config.yml is located)
  - jekyll serve
- Step 5 - Open the localhost address
  - http://127.0.0.1:4000/\<sitetitle\>/

#### Mac
- Step - 1  Open terminal and verify Xcode installation else run
  - xcode-select --install
- Step - 2 Check if ruby is installed 
  - ruby -v
- Step 3 - Install jekyll
  - gem install jekyll
- Step 4 - Go to root folder of docs
  - jekyll serve
- Step 5 - Open the localhost address
  - http://127.0.0.1:4000/\<servicename\>/

## More Information

There is also some documentation that should help get you started developing:

- [CONTRIBUTING.md](./CONTRIBUTING.md) - document on contribution conventions
