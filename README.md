## What is this?
Repository for managing Cloud Functions and other things related to Firebase.

## What can I do?
Basically, you can develop Firebase Cloud Functions.
In addition, you can emulate Authentication, CloudStorage, and Cloud Firestore.

## Build an environment
Build & Launch
```shell
docker compose build && docker compose up -d
```

Entering the container
```shell
docker compose exec app sh
```

Log in to FirebaseCLI
```shell
firebase login --no-localhost
```

Edit .firebaserc
```json
{
  "projects": {
    "default": "YOUR_PROJECT_ID"
  }
}
````

Translated with www.DeepL.com/Translator (free version)