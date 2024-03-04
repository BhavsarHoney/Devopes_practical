# choice Job

This jenkins job allow users to choice one redio button and according to choice numeric and alphbetic option would display.

## Instructions

### Step 1: Install Active Choices Plugin

1. Open your Jenkins instance in a web browser.
2. Navigate to "Manage Jenkins" > "Manage Plugins."
3. In the "Available" tab, search for "Active Choices" in the filter.
4. Find the "Active Choices" plugin, select the checkbox, and click "Install without restart."

### Step 2: Create a New Jenkins Job

1. Click on "New Item" on the Jenkins dashboard.
2. Enter a name for your new job (e.g., "task_choise") and choose the type of job you want (Freestyle project or Pipeline).
3. Click "OK" to create the job.

### Step 3: Configure Parameters

1. In your job configuration, scroll down to the "Build Triggers" section.
2. Check the box for "This project is parameterized."

### Step 4: Add Radio Button Parameter for Choice

1. Under the "Build Environment" section, click the "Add Parameter" dropdown.
2. Choose "Active Choices Parameter."
3. Set the name of the parameter (e.g., "choise").
4. Choose "Choice Type" as "radio button."
5. In the "Groovy Script" field, enter the script.

script :
   return ["1" ,"2"]


### Step 5: Add Active Choice Reactive Parameter 

1. Under the "Build Environment" section, click the "Add Parameter" dropdown.
2. Choose "Active Choices Reactive ."
3. Set the name of the parameter (e.g., "button").
4. Set "Referenced Parameter" to "choise".
5. Choose "Choice Type" as "multiselect".
6. In the "Groovy Script" field, enter the script .

script :
if (choice == "1") {
    return ["num:selected", "alph:disabled"];
} else if (choice == "2") {
    return ["num:disabled", "alph:selected"];
} else {
    return [];
}

### Step 6: Add Active Choise Reactive Parameter for selecting value.

1. Under the "Build Environment" section, click the "Add Parameter" dropdown.
2. Choose "Active Choices Reactive parameter" .
3. Set the name of the parameter (e.g., "value").
4. Set "Referenced Parameter" to "button and choice".
5. Choose "Choice Type" as "single select".
6. In the "Groovy Script" field, enter the script provided.

script :
if (choice == "1" &&  button == "num" )
 {
return [ "1" ,"2", "3" ,"4","5","6", "7","8", "9" ] ;
}
else if ( choice == "2" &&  button == "alph" ) {
return [ "A" , "B", "C" , "D" ] ;
}
else {
return [];
}

### Step 7: Use Parameters in Build Steps (Pipeline Script)

1. If you chose a Freestyle project, you can skip this step. For a Pipeline project, add the provided pipeline script.

script:
pipeline{
    agent any
    stages{
        stage("selected num"){
            steps{
                echo "you have selected choice ${choice}"
                echo "you have selected  ${button} and value is ${num}"
            }
        }
    }
}

### Step 8: Save and Run the Job

1. Click "Save" to save your job configuration.
2. Run the job, and you will see the dropdown for selecting either "1" or "2." Depending on your selection, the variable name will be set to either "num" or "alph".

