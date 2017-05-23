# Quick, Draw! dataset by Google in Processing
This is an experiment with the [Quick, Draw! dataset](https://github.com/googlecreativelab/quickdraw-dataset) by Google and [Processing](https://github.com/processing/processing).

## Accessing the data
Since I wasn't able to read all the JSON objects through the `loadJSONObject()` function, to access the data I converted the `ndjson` file downloaded from the [Google Cloud Console](https://console.cloud.google.com/storage/browser/quickdraw_dataset/full/simplified) to an array. I added a `[` at the beginning of the file and a `]` at the end and I replaced all the `}` with `},`.

If you have a cleaner solution, please do a pull request to this repo.
