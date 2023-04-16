# Lesson 5 Demo 5: Restarting Pipelines

This section will guide you to:
* Restart a Pipeline with Jenkins

Please Note: This demo is incremental. Ensure you have completed the earlier demos.

This lab has one sub-section, namely:
1. Restarting a Pipeline with Jenkins

Step 1: Restarting a Pipeline with Jenkins
* Once your Pipeline has completed, whether it succeeds or fails, from the console output, you can go to the side panel for the run in the classic UI and click on Restart from Stage.

* You will be prompted to choose from a list of top-level stages that were executed in the original run, in the order they were executed. Stages which were skipped due to an earlier failure will not be available to be restarted, but stages which were skipped when condition was not being satisfied will be available. The parent stage for a group of parallel stages, or a group of nested stages to be run sequentially will also not be available: only top-level stages are allowed.

* Once you choose a stage to restart from and click submit, a new build, with a new build number, will be started. All stages before the selected stage will be skipped, and the Pipeline will start executing at the selected stage. From that point on, the Pipeline will run as normal.

* To access additional information and/or documentation about the step selected, click on the help icon (question mark icon in blue).
