# Deployment

- Install `nbgrader`.
- Place the [nilsleiffischer/python-course](https://github.com/nilsleiffischer/python-course) repository content in a `source/course/` directory.
- To automatically `gitignore` output from the notebooks, `pip install nbstripout` and `nbstripout --install`.
- Make sure a branch `origin/deploy` is discardable. It will be overwritten with the cleaned-up course where exercise solutions have been replaced by placeholders.
- Run `./deploy.sh`. The script runs `nbgrader assign` in `../../`, commits the result to a new `deploy` branch and force-pushes it to `origin/deploy`.
- Re-compile on https://mybinder.org/.
