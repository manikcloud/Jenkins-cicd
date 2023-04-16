# Lesson 4 Demo 8: Remote Triggering Parameterized Builds

This section will guide you to:
- Trigger parameterized builds in Jenkins remotely

This lab has two sub-sections, namely:
1. Configuring a parameterized build in Jenkins
2. Triggering a parameterized build remotely

## Step 1: Configuring a parameterized build in Jenkins
- Go to Jenkins dashboard.
- Navigate to Manage Jenkins → Manage Plugins → Available.
- Search for Build with Parameters Plugin and click on install without restart.
- From the Jenkins Dashboard, click on New Item.
- Enter a name for your build job.
- Select Freestyle project as the build job type.

- Click OK.
- On the configuration page, select the checkbox next to the text that states, This project is parameterized.

- Click on the Add parameter button that appears.

- From the drop-down menu that appears, select String parameter.
- Name the parameter my_param, and enter the Default Value. (Ex: Hi)

- Under the Build Triggers section, select Trigger builds remotely and type Sam as the token value.

- Scroll down to the Build section and click on Add build step.
- Select Execute Shell Command from the drop down that appears.

- In the text input area that appears, enter the following text:
```
echo $my_param
```

- Click Save.

## Step 2: Triggering a parameterized build remotely

- Copy the url to the job from the project window.

- Open the terminal.
- Suffix the parameter and its value to the url copied in the previous step and send a GET request using Curl.
```
curl -X GET <YourJenkinsJobUrl>/buildWithParameters?token=Sam
```

### Error and Error Resolution
If you receive an "Authentication required" error, it means that Jenkins requires authentication to perform the remote build trigger. To fix this issue, you need to provide your Jenkins username and API token in the curl command.

Follow these steps to obtain your Jenkins API token:

1. Log in to your Jenkins instance.
2. Click on your username in the top-right corner of the Jenkins dashboard.
3. Click "Configure" in the left sidebar.
4. Scroll down to the "API Token" section and click on "Add new Token."
5. Name your token and click "Generate."
6. Copy the generated token. **Note**: Save the token as you won't be able to view it again.

Now, modify the curl command to include your Jenkins username and API token:

 ```
curl -X GET -u <YourJenkinsUsername>:<YourJenkinsApiToken> <YourJenkinsJobUrl>/buildWithParameters?token=Sam 
```
Replace <YourJenkinsUsername> with your Jenkins username and <YourJenkinsApiToken> with the API token you just generated.

## For Example

```
curl -X GET -u admin:114637d8c9efa38b01fbaa481fa7662141 http://34.238.38.207:8080/job/remote_trigger/buildWithParameters?token=Sam
```
