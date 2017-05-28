# Quick, Draw! dataset by Google in Processing
This is an experiment with the [Quick, Draw! dataset](https://github.com/googlecreativelab/quickdraw-dataset) by Google and [Processing](https://github.com/processing/processing).

## Accessing the data
This script currently works only with the simplified drawing files (`.ndjson`) which don't include the timing information.

Each line of the `.ndjson` file contains a JSONObject so we need a `BufferedReader` object to access each line separately.
