# GitHub Action for Firebase

The GitHub Action for [Firebase](https://firebase.com) and wraps the [firebase-tools CLI](https://firebase.google.com/docs/cli).

## Usage

### Example job step

An example step you can add to your workflow which deploys to Firebase:

```yml
- name: Firebase GitHub Action
  uses: jonahsnider/firebase-action@1.0.7
  env:
    PROJECT_ID: "google-cloud-or-firebase-project-id"
    FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
  with:
    args: deploy
```

### Secrets

- `FIREBASE_TOKEN` - **Required** Firebase access token
  - You can obtain a token with `firebase login:ci`
  - For information about access tokens please see the [Firebase docs](https://firebase.google.com/docs/cli#admin-commands)
  - For information about using secrets in GitHub Actions please see the [Actions docs](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables)

### Environment variables

- `PROJECT_ID` - **Optional** Firebase/Google Cloud project ID

## License

The Dockerfile and associated scripts and documentation in this project are released under the [Apache 2.0](license.md).
