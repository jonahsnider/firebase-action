# GitHub Action for Firebase

The GitHub Action for [Firebase](https://firebase.com) and wraps the [firebase-tools CLI](https://firebase.google.com/docs/cli1).

## Usage

### Example Workflow file

An example workflow to deploy to Firebase:

```workflow
workflow "Deploy to Firebase" {
  on = "push"
  resolves = "Deploy"
}

action "Deploy" {
  uses = "pizzafox/firebase-action@master"
  args = "deploy"
  env = {
    PROJECT_ID = "google-cloud-or-firebase-project-id"
  }
  secrets = ["FIREBASE_TOKEN"]
}
```

### Secrets

- `FIREBASE_TOKEN` **Required** Firebase access token
  - You can obtain a token with `firebase login:ci`
  - For information about access tokens please see the [Firebase docs](https://firebase.google.com/docs/cli#admin-commands)
  - For information about using Secrets in Actions please see the [Actions docs](https://developer.github.com/actions/creating-workflows/storing-secrets/).

## License

The Dockerfile and associated scripts and documentation in this project are released under the [Apache 2.0](license.md).
