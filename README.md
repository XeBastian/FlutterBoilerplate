# Flutter App - Boilerplate [Riverpod x MVC]

This is the boilerplate of a new flutter, firebase and riverpod based project using the MVC pattern.

## Items included
> Dynamic Theme 

> Riverpod Generator

> Riverpod Custom lint 

> Firebase - Ability to switch databases based on either prod or development stages

> Environment Variable set up

> Helper functions ready

> Custom Font 

> Form validation

> Image Caching

> Logger framework


## How to Run the project

1. Using any [ Dart and Flutter ] enabled code editor like VSCode, clone the project into a folder where you have other Flutter related projects
2. Make sure you have the latest flutter version else run `flutter upgrade`

3. Once cloned run `flutter pub get` to get all dependencies.
4. If some dependencies are out of date run `flutter pub outdated` then run `flutter pub upgrade --major-versions`. This upgrades the project dependencies to the latest flutter version which you have installed in your machine. 

5. Run `flutter create [YOUR PROJECT NAME] --org com.[companyname]`, which recreates the project and automatically sets the bundle identifiers for both `Android` and `iOS`.

6. Open `main.dart` and rename the `MyApp` to the current App

7. Add `[Your App's Logo]` under images and make sure you add the path of the logo under `utils/images.dart`

8. Run the project and you should be able to see a page where you can basically just switch the theme from dark to light/ vice-versa.

9. Riverpod setup - Visit https://riverpod.dev to setup your workspace and include code generation.

## Contributing Guidelines
- First things first, `KEYS` should never be checked into `vc`.
- File naming uses the standard snake_case naming form. `file_name.dart`.
- Class names must always be descriptive and are always `PascalCase``.
- Functions and class methods use `camelCasing`.

    ### Architecture and Folder Structure
    - The App's architechure is `MVC`, always strive to follow it.
    - Models - Data Classes of our Items
    - Views - What the user interracts with. Screens and Widgets
    - Controllers - With Riverpod these are Notifiers and provide a bridge between the Data classes and the Views.

   ``` 
    lib/
        ├── controllers/
        ├── helpers/
        ├── models/
        ├── providers/
        ├── services/
        ├── theme/
        ├── utils/
        ├── views/
        │   ├── screens/
        │   ├── widgets/
        ├── main.dart  
        ├── splashscreen.dart 
    ```

    #### Explanation of the other folders
    1. Helpers - This folder contains all extra functions that are useful in app development and used throughout the app 
        
         eg: `random.string.generator.dart`

    2. Providers - Using Riverpod, the providers are what we consume in the UI and what we interract with. They are an abract layer on top of Notifiers. 
        
         eg: `theme.provider.dart`

    3. Services - These are the calls that we make with the external systems. API Calls are placed here.
        
         eg: `auto.mailer.service.dart` to send mail automatically after a certain trigger.

    4. Theme - This contains the theme elements that are re-used throught the app. 
         eg: `dark.theme.dart`

    5. Utils - This is where all utilities of the app are placed. From Strings, fonts, images etc. 
        
         eg: `app.strings.dart` which contains all Strings the app is using


## Branching

- Always use feature based branches. feat/branch1. 

- Each issue should always have one branch associated with it unless otherwise. 

- When creating the branch from github under issues, try renaming the branch to a more descriptive one.

- Use `git branch` to check which branch you are on before you start working on code on a different code.

- Always `git pull` from the remote dev branch before you start working on your features to have the latest changes in case someone else pushed and merged the commits on the remote dev branch.

