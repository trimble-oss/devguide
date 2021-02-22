---
title: "Publish Documentation on Confluence"
layout: "single"
description: ""
innersource: true
---

## Context

Confluence is used widely in Trimble, so it seems to be the best candidate to publish Markdown files for InnerSource documentation.
A sample page can be found [here](https://confluence.trimble.tools/display/MEPG/MEP+InnerSource).

## How to

In order to render the markdown files from Bitbucket into Confluence, you have to use the *RenderBitbucketFiles* macro with the following settings:

- Project field: the project key of the Bitbucket project
- Repository field: the name of the Bitbucket Repository

The default page that will be rendered is the *`README.md`* file from your project. You can check the result in the preview section.

Below you can find the detailed steps and info about how it works.

1. Create a new page in Confluence / Edit an existing one

![image alt text](/img/innersource/create_page_in_confluence.jpg)

or

![image alt text](/img/innersource/edit_page_in_confluence.jpg)

2. Go to "Other macros"

![image alt text](/img/innersource/other_macros.jpg)

3. Search for Render macro and select it

![image alt text](/img/innersource/search_for_render_macro.jpg)

4. Edit the project field in the macro settings

![image alt text](/img/innersource/edit_project_in_macro.jpg)

This field is the project key and it can be found from Bitbucket

* Go to Bitbucket projects

![image alt text](/img/innersource/bitbucket_projects.jpg)

* Select the desired project -> go to project settings and find the project key as it is shown in the image below

![image alt text](/img/innersource/find_project_key_in_bitbucket.jpg)

This is the value that has to be added in the *RenderBitbucketFiles* macro in the project field.

5. Edit the project field in the macro settings

![image alt text](/img/innersource/edit_repository_in_macro.jpg)

* Go to the previous selected project in Bitbucket

![image alt text](/img/innersource/select_repo_in_bitbucket.jpg)

* Go to the repository settings and find the repository name

![image alt text](/img/innersource/find_repository_name.jpg)

This is the value that has to be added in the *RenderBitbucketFiles* macro in the repository field.

6. Edit the file field

* If the first file to be rendered is the readme file, then do not change the file field.

![image alt text](/img/innersource/edit_file_default_in_macro.jpg)

* If the first file to be rendered is other than the default readme file, then change it as follows:

  * add raw keyword as first part in the file path: raw/{path_to_file}
  * add full path to the md file to be rendered: raw/Guidelines/Project_documentation.md

![image alt text](/img/innersource/edit_file_custom_in_macro.jpg)

7. With the three fields filled, save the Markdown plugin.

![image alt text](/img/innersource/save_markdown.jpg)

8. Add searchable content to the confluent page.

The source Markdown is not directly searchable but this can be solved by adding an HTML macro at the bottom of the page with only an HTML comment in it which means you can include keywords which you want to show up in search results but which are not visible to the end user. Please see the steps below:

* Add Html plugin -> Go to "Other macros"

![image alt text](/img/innersource/other_macros.jpg)

*  Search for "Html" plugin and select it

![image alt text](/img/innersource/html_plugin.jpg)

* Insert it to the page

![image alt text](/img/innersource/insert_html.jpg)

* Edit the plugin with the desired tags in an HTML comment

![image alt text](/img/innersource/add_search_tags.jpg)

9. Publish/Update confluence page

![image alt text](/img/innersource/publish_page.jpg)

