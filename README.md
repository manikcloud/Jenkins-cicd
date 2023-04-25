# Jenkins Email Notifications

This guide will walk you through configuring post-build actions and email notifications for a Jenkins Maven job, using the following GitHub repository and branch:

- Repository: https://github.com/manikcloud/Jenkins-cicd.git
- Branch: 4.4_email_notification

## For a more detailed guide and examples, refer to this blog post: 
[DevOps Jenkins AWS Series Part 3: Jenkins Notifications and Gmail Integration - A Step-by-Step Guide](https://varunmanik1.medium.com/devops-jenkins-aws-series-part-3-jenkins-notifications-and-gmail-integration-a-step-by-step-bb2cac5dbd4c)

## Prerequisites

1. Jenkins should be installed and running on your system.
2. Make sure the Email Extension Plugin is installed in Jenkins. If not, navigate to `Manage Jenkins` > `Manage Plugins` > `Available`, search for "Email Extension Plugin" and install it.

## Step-by-Step Guide

### Configure SMTP settings to enable email alerts in Jenkins

1. **Configure SMTP settings**: Navigate to `Manage Jenkins` > `Configure System`.
   - Scroll down to the `Extended E-mail Notification` section.
   - Fill in the following details:
     - SMTP server: *your SMTP server address*
     - Default user email suffix: *your email domain suffix* (e.g., @gmail.com)
     - Use SMTP Authentication: *check if required*
     - Username: *your email address*
     - Password: *your email password or app-specific password*
     - Use SSL: *check if required*
     - SMTP Port: *your SMTP server port* (e.g., 465 for Gmail with SSL)
     - Reply-To Address: *your reply-to email address*
   - Click `Advanced` to reveal more settings and configure the following:
     - Charset: *UTF-8*
     - Default Content Type: *text/html*
     - Default Subject: *your default email subject*
     - Default Recipients: *email addresses of default recipients, separated by commas*

2. **Test email configuration**: Click `Test configuration by sending test e-mail`, enter a recipient email address, and click `Test configuration`. Verify that the test email is received.

### Define post-build actions in a build and test the SMTP settings

1. **Navigate to your Jenkins job**: Open the Jenkins job configuration page for the project associated with the GitHub repository and branch mentioned above.

2. **Configure post-build actions**:
   - In the job configuration page, navigate to the `Post-build Actions` section.
   - Click on `Add post-build action` and select `Editable Email Notification`.
   - Configure the following settings:
     - Recipients: *email addresses of recipients, separated by commas*
     - Reply To List: *your reply-to email address*
     - Attachments: *list of file patterns to attach, separated by commas (e.g., `*.log, *.txt`)*
     - Content Type: *text/html*
     - Subject: *your email subject*
     - Body: *your email body content*

3. **Save the job configuration**: Click `Save` to apply the configuration changes.

4. **Trigger a build and verify email notifications**: Click on `Build Now` to start the build process. Once the build is completed, verify that the email notification is received by the specified recipients.

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

