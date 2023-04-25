# Jenkins Free-style Job for GitHub Repository

This guide will walk you through creating a Jenkins free-style job for the following GitHub repository and branch:

- Repository: https://github.com/manikcloud/Jenkins-cicd.git
- Branch: 3.1.2-free-style

## Prerequisites

1. Jenkins should be installed and running on your system.
2. Make sure the Git plugin is installed in Jenkins. If not, navigate to `Manage Jenkins` > `Manage Plugins` > `Available`, search for "Git plugin" and install it.

## Step-by-Step Guide

1. **Create a new Jenkins job**: Navigate to the Jenkins dashboard, click on `New Item`, select `Freestyle project`, and enter a name for your job. Click `OK` to create the job.

2. **Configure the GitHub repository**:
   - In the job configuration page, navigate to the `Source Code Management` section.
   - Select `Git` and enter the repository URL: `https://github.com/manikcloud/Jenkins-cicd.git`
   - Enter the branch specifier: `3.1.2-free-style`

3. **Configure build triggers**: (Optional) If you want to trigger the build automatically, you can set up build triggers in the `Build Triggers` section. For example, you can use the `Poll SCM` option to periodically check the repository for changes.

4. **Configure the build step to run `mvn clean install`**:
   - In the job configuration page, navigate to the `Build` section.
   - Click on `Add build step` and select `Execute shell` (for Linux/Mac) or `Execute Windows batch command` (for Windows).
   - In the command input box, enter the following command:

     \```bash
     mvn clean install
     \```

5. **Configure post-build actions**: (Optional) If you want to perform any post-build actions, such as archiving artifacts or publishing test results, configure them in the `Post-build Actions` section.

6. **Save the job configuration**: Click `Save` to apply the configuration changes.

7. **Build the job**: Click on `Build Now` to start the build process. Monitor the build progress and view the build results in the `Console Output`.

8. **Optional**: If you want to set up webhooks for automatic build triggering, follow the instructions in the GitHub and Jenkins documentation to configure webhooks for your repository and Jenkins instance.

