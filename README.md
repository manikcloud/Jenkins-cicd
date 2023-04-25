# Lesson 4 Demo 7: Building From Tags

This section will guide you to: 
- Configure a build job in Jenkins to build from a Git tag

This lab has three sub-sections, namely:
1. Adding the Git parameter plugin to Jenkins
2. Creating a tag in Git
3. Building a project from a Git tag in Jenkins

## Step 1: Adding the Git parameter plugin to Jenkins
- Go to Jenkins dashboard.
- Click on Manage Jenkins in the Jenkins dashboard and select Manage Plugins.
- Under the Available tab, search for Git Parameter and select it.
- Click on Install without restart, and the plugin will be installed.

# Adding and Pushing Tags in Git from CLI

Follow these steps to add a tag to your Git repository and push it to the remote repository:

1. Navigate to your local repository in the command line/terminal.

  ```
git status
 ```

2. Ensure you have committed all changes and are on the branch you want to tag. You can check the status of your repository using the `git status` command.

3. Create a tag using the `git tag` command followed by the tag name. To create an annotated tag, use the `-a` option, followed by the tag name and `-m` option to add a message:

  ```
git tag -a <tag_name> -m "<tag_message>"
 ```

Replace `<tag_name>` with your desired tag name and `<tag_message>` with a short description of the tag.

For example:

  ```
git tag -a v1.0.0 -m "Version 1.0.0 release"
 ```

4. Verify that the tag has been created using:

  ```
git tag
 ```

This command will list all the tags in the repository. You should see the tag you just created.

5. Push the tag to the remote repository using:

  ```
git push origin <tag_name>
 ```

Replace `<tag_name>` with the tag name you created earlier.

For example:

  ```
git push origin v1.0.0
 ```

Now, the tag is added to your local Git repository and pushed to the remote repository. Other team members can fetch the tag by executing `git fetch --tags` or `git pull --tags`.


# Step 2: Creating a tag in Git
- Go to https://github.com/manikcloud/Jenkins-cicd.git and open the repository.
- Click on the releases tab.
- Click on the Create a new release button.
- Enter a tag name and fill out the other form fields.
- Click Publish release at the bottom.

# Step 3: Building a project from a Git tag in Jenkins
- Go to Jenkins dashboard.
- Click on New Item in the Jenkins dashboard.
- Enter a name for your build job.
- Select Freestyle project as the build job type.
- Click OK.
- On the configuration page, select the checkbox next to the text that states, This project is parameterized.
- Click on the Add parameter button that appears.
- From the drop-down menu that appears, select Git parameter.
- Name the Git parameter tag, and choose parameter type Tag.
- Add a default value (main).
- Scroll down to the Source Code Management section and select Git.
- Enter the link to the repository in the field that appears: https://github.com/manikcloud/Jenkins-cicd.git
- **In the Branches to Build field, enter the variable name as, ${tag}**
- Click Save.
- Click Build With Parameters in the project window to make sure the build works.
- In the page that appears, accept the defaults if correct or enter the tag value, and click the Build button. Jenkins will now build your project.
- Click on the Build History to view the build results.
- Click on the Console Output to view the build logs.




# Disclaimer
<details>

Please note that the entire repository is owned and maintained by [Varun Kumar Manik](https://www.linkedin.com/in/vkmanik/). While every effort has been made to ensure the accuracy and reliability of the information and resources provided in this repository, Varun Kumar Manik takes full responsibility for any errors or inaccuracies that may be present.

Simplilearn is not responsible for the content or materials provided in this repository and disclaims all liability for any issues, misunderstandings, or claims that may arise from the use of the information or materials provided. By using this repository, you acknowledge that Varun Kumar Manik is solely accountable for its content, and you agree to hold Simplilearn harmless from any claims or liabilities that may arise as a result of your use or reliance on the information provided herein.

It is important to understand that this repository contains educational materials for a training course, and users are expected to apply their own judgment and discretion when utilizing the provided resources. Neither Varun Kumar Manik nor Simplilearn can guarantee specific results or outcomes from following the materials in this repository.

</details>

## Connect & Follow

For more info, please connect and follow me:

- Github: [https://github.com/manikcloud](https://github.com/manikcloud)
- LinkedIn: [https://www.linkedin.com/in/vkmanik/](https://www.linkedin.com/in/vkmanik/)
- Email: [varunmanik1@gmail.com](mailto:varunmanik1@gmail.com)
- Facebook: [https://www.facebook.com/cloudvirtualization/](https://www.facebook.com/cloudvirtualization/)
- YouTube: [https://bit.ly/32fknRN](https://bit.ly/32fknRN)
- Twitter: [https://twitter.com/varunkmanik](https://twitter.com/varunkmanik)

