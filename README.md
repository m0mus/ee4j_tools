# EE4J Tools

A set of scripts simplifying work with EE4J project.

## batch_create_issues

Creates issues in multiple EE4J repositories based on provided template. You need to be a committer of a project to create issue there. 

Usage:

- Modify `repos` list in `create_issues.sh` with names of repositories you want to create an issue in
- Put your issue text in `issue.md` file. First line is a title. Empty line after the first line is required.
- Run `create_issues.sh`
