# To-Do List App

A simple Flutter To-Do List application with features to add, delete, and mark tasks as done.

## Features

- **Add Tasks:** Users can add tasks through a form with basic validation to ensure a non-empty task description.

- **Delete Tasks:** Tasks can be deleted from the list.

- **Mark Tasks as Done:** Users can mark tasks as done, and the UI updates reactively.

## Key Concepts

### MVC Architecture

The code structure follows the Model-View-Controller (MVC) pattern:

- **Model:** The `Task` class in `models/task.dart` represents the data structure for tasks.

- **View:** The user interface components are organized in the `views` directory, including `task_form_view.dart` and `task_list_view.dart`.

- **Controller:** The `TaskController` class in `controllers/task_controller.dart` manages the application logic and state.

### State Management

The application uses the `Provider` package for state management. The `ChangeNotifierProvider` is employed to manage the state of the `TaskController` class, ensuring that UI updates reactively as tasks are manipulated.

### Form Validation

Basic form validation is implemented to ensure that task descriptions are non-empty before adding them to the list.

## Usage

Ensure you have the necessary dependencies by running:

```bash
flutter pub get
