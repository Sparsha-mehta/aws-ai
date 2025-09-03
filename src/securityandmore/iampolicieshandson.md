# IAM Policies : Hands-On Lab 

This hands-on lab demonstrates how IAM policies work by manipulating user permissions through groups and direct policy attachments. You'll see how removing and adding permissions affects access to AWS services, explore policy structure in JSON format, and create custom policies using the visual editor.

## **Prerequisites**
- AWS account with admin access
- User account (example uses "Stephane") that is part of an admin group

## **Part 1: Understanding Permission Inheritance Through Groups**

### **Step 1: Verify Initial Admin Access**
1. Navigate to the IAM console
2. Click "Users" in the left-hand navigation
3. Locate your user (Stephane in the example)
4. Verify the user is part of the "admin" group

[SCREENSHOT: IAM Users page showing user with admin group membership]

**Note**: Users in the admin group have administrator access permissions to AWS.

### **Step 2: Remove User from Admin Group**
1. Navigate to "Groups" in the IAM console
2. Click on the "admin" group
3. Select your user and remove them from the group
4. Confirm the removal

[SCREENSHOT: Admin group page with user removal interface]

### **Step 3: Test Access After Removal**
1. Refresh the IAM Users page
2. Observe the access denied error
3. Note the specific error message: "don't have permission to do iamListUsers"

[SCREENSHOT: Access denied error in IAM console]

**Warning**: Removing yourself from the admin group immediately restricts your access to AWS services.

## **Part 2: Attaching Policies Directly to Users**

### **Step 4: Add Read-Only IAM Access**
1. Navigate to "Users" in IAM
2. Click on your user account
3. Click "Add permissions"
4. Select "Attach policies directly"
5. Search for and select "IAMReadOnlyAccess"
6. Click "Add permissions"

[SCREENSHOT: Add permissions interface with policy selection]

### **Step 5: Verify Read-Only Access**
1. Refresh the IAM Users page
2. Confirm you can now view users and groups
3. Attempt to create a new group called "developer"
4. Observe the creation failure due to read-only permissions

[SCREENSHOT: Failed group creation due to insufficient permissions]

## **Part 3: Working with Multiple Permission Sources**

### **Step 6: Create Developer Group**
1. Navigate to "User groups" in IAM
2. Click "Create group"
3. Name the group "developers"
4. Add your user to this group
5. Attach any available policy (example uses "AlexaForBusiness")
6. Click "Create group"

[SCREENSHOT: Group creation interface with user and policy selection]

### **Step 7: Re-add User to Admin Group**
1. Navigate to the "admin" group
2. Click "Add users"
3. Select your user account
4. Confirm the addition

### **Step 8: Review Combined Permissions**
1. Navigate to your user account in IAM
2. Review the "Permission policies" section
3. Observe three permission sources:
   - **Administrator access** (inherited from admin group)
   - **AlexaForBusiness managed policy** (inherited from developers group)
   - **IAMReadOnlyAccess** (attached directly)

[SCREENSHOT: User permissions page showing multiple policy sources]

## **Part 4: Exploring Policy Structure**

### **Step 9: Examine AdministratorAccess Policy**
1. Navigate to "Policies" in IAM
2. Search for and click "AdministratorAccess"
3. Review the permissions summary showing all AWS services
4. Click the "JSON" tab to view the policy structure:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
```

**Note**: The asterisk (*) means "anything" in AWS - allowing any action on any resource equals administrator access.

[SCREENSHOT: AdministratorAccess policy JSON view]

### **Step 10: Analyze IAMReadOnlyAccess Policy**
1. Navigate to the "IAMReadOnlyAccess" policy
2. Review the permissions showing "Full: List and Limited: Read" for IAM
3. Click "JSON" tab to examine the structure:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:GenerateCredentialReport",
                "iam:Get*",
                "iam:List*"
            ],
            "Resource": "*"
        }
    ]
}
```

**Key Concept**: Using wildcards like "Get*" and "List*" groups multiple API calls together (e.g., GetUsers, GetGroups, ListUsers, ListGroups).

[SCREENSHOT: IAMReadOnlyAccess policy JSON and permissions breakdown]

## **Part 5: Creating Custom Policies**

### **Step 11: Create Custom Policy Using Visual Editor**
1. Navigate to "Policies" in IAM
2. Click "Create policy"
3. Choose the "Visual editor" tab
4. Select "IAM" as the service
5. Under Actions, select:
   - "ListUsers" (from List category - 1 out of 38)
   - "GetUser" (from Read category - 1 out of 32)
6. Keep "All resources" selected
7. Click "Next"

[SCREENSHOT: Visual policy editor with IAM service and actions selected]

### **Step 12: Name and Create the Policy**
1. Enter policy name: "MyIAMPermissions"
2. Click "Create policy"
3. Navigate to the newly created policy
4. Review the auto-generated JSON:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:ListUsers",
                "iam:GetUser"
            ],
            "Resource": "*"
        }
    ]
}
```

[SCREENSHOT: Custom policy JSON output from visual editor]

## **Part 6: Cleanup**

### **Step 13: Remove Unnecessary Permissions**
1. Navigate to "User groups"
2. Delete the "developers" group
3. Go to your user account
4. Remove the "IAMReadOnlyAccess" policy that was directly attached
5. Verify your user only has admin group membership
6. Test access to confirm everything works correctly

[SCREENSHOT: Final user permissions showing only admin group membership]

## **Key Takeaways**

- **Permission Inheritance**: Users can inherit permissions from groups, have policies attached directly, or both
- **Policy Structure**: JSON policies use Effect (Allow/Deny), Action (API calls), and Resource (what the actions apply to)
- **Wildcards**: Use asterisks (*) to represent "anything" or group similar actions (Get*, List*)
- **Visual vs JSON**: AWS provides both visual editors and direct JSON editing for policy creation
- **Immediate Effect**: Permission changes take effect immediately and can lock you out if you remove your own access