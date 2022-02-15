# Challenge

A challenge about user management developed to Pharma Inc.

## Technologies

- Flutter
- Dart

## Installation

Open the project on Visual Studio Code and connect at the computer a target device. The device could be either a physical or a emulator. Open the terminal and type `adb devices` at it to check if the connected device was recognized by the current operational system.

With the environment properly configured, open the terminal on the project folder and run the command to install the dependencies:

`flutter pub get`

After dependencies have been installed:

`flutter run`

If a list was displayed, select the target device with the keyboard arrow keys and type enter to run, else just wait.

The build process will start, and then the app will be installed and will run on the selected target device.

## Using The App

### Home

<p align="center">
    <img src="/assets/pictures_doc/home.JPG" width="300">
</p>

Home page of the app, clicking on the Pharma Inc company logo it will navigate to patients list page.

### Patients List

<p align="center">
    <img src="/assets/pictures_doc/patients_list.JPG" width="300">
</p>

A page for visualization of all patients according to the filter options chosen by app user. There are some funcionalities which it is worth mentioning:

- **Search bar:** Typing any query, it is possible to filter the patient list by name at "real-time", if the typed text matches with a patient's name. _The search will consider the default filter options._
- **Filter options:** Clicking over the filter icon, a popover with some filter options will get displayed. _The default filter options will be selected._
- **Patients list:** The _virtualized_ list of patients, loading users over scroll down on demand. The results will always match and respect the _chosen search query and filter options_. If the search query was empty, _just the filter options will be considered._
- **Patient details:** On each patient card, there is some basic information about them. Click over it for show patient full details.
- **Home button:** Clicking over it the app will get back to its home page.

### Patient Filter Options

<p align="center">
    <img src="/assets/pictures_doc/default_values.JPG" width="300">
</p>

By default, the search filter is defined to find by both _genders and the CA, US and BR nationalities._

Although by changing the gender options or adding or removing any nationality option and clicking on the filter button, it will trigger the search, _considering every chosen filter option_ and _typed query in the search bar_ too. If the search query was empty, _just the filter options will be considered._ If the filter returns a empty list with a respective search query, it will be _necessary to re-open the popover filter options and re-filter the list after deleted the query search_ to get back any usernames over again at the list.

### Patient Details Modal

<p align="center">
    <img src="/assets/pictures_doc/patient_details.JPG" width="300">
</p>

A modal for display all available user details.

_A red close icon will be shown instead the user field information, if it's not available. That handling was implemented all over the app._

### Handled Request Errors

<p align="center">
    <img src="/assets/pictures_doc/excedeed_limit.JPG" width="300">
</p>

The modal message shows up if something got wrong on loading users action. In this case, the app reach the _random users API_ limit call of users, overflowing over 20.000 users in less than one minute.

## Additional Information

**Developer:** Thiago Furlan

**Email:** thiago_furlan@outlook.com

**Git repository:** [https://github.com/Cannon99/pharma_inc_challenge](https://github.com/Cannon99/pharma_inc_challenge)

**Basic project presentation:** https://www.loom.com/embed/d50b0981a86c41b6be42590a99363f31

_Challenge by Coodesh_
