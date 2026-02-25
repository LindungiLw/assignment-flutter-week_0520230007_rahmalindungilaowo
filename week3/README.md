student_krs_apps
A new Flutter project.

krs-flutter-week3_Rahma_Lindungi_Laowo
Reflection
Hardest part this week The hardest part was understanding the Navigation Stack concept (specifically the difference between push and pop) and troubleshooting the Android Emulator storage issues during development.

Errors encountered I encountered an error during the Debugging Challenge (Part C.2). The error message was: The return type 'Type' isn't a 'Widget', as required by the closure's context. This happened because I wrote: MaterialPageRoute(builder: (_) => KrsScreen) without parentheses.

How I fixed them I fixed it by adding parentheses () after the class name, changing it to KrsScreen(). The reason is that KrsScreen is just the Class Type, but the builder requires an instantiated Widget Object to render the screen.

Remaining questions How do I pass data between screens? For example, I want to send the Student Name from the Login Screen so it appears dynamically on the Profile Screen.

Thinking Questions
Why does each Flutter screen usually use Scaffold? Scaffold provides the basic visual layout structure for Material Design. Without a Scaffold, we cannot easily add standard elements like an AppBar, FloatingActionButton, or Drawer. The screen would also appear black by default.

What happens if Navigator.pop(context) is called in HomeScreen? Since HomeScreen is the root (bottom) of the navigation stack, calling pop() will either close the application (on Android) or show a black screen because there is no previous route to go back to.

Are these two MaterialPageRoute implementations equivalent? Why? Yes, (context) => Screen() and (_) => Screen() are equivalent. The underscore _ is a Dart convention used to indicate that the parameter (in this case, context) exists, but we are ignoring it because it is not used inside the function.

When should a screen use StatefulWidget instead of StatelessWidget? A StatefulWidget should be used when the screen has dynamic content that changes during runtime. Examples include form inputs, animations, checkboxes, or data fetched from an API. StatelessWidget is used for static layouts that do not change.

Design Decisions (Profile Screen)
Why you chose those widgets?

Column: Used to arrange elements (Photo, Text, Button) vertically from top to bottom.
CircleAvatar: The standard widget for displaying a circular profile picture.
ElevatedButton.icon: Used for navigation because it provides a clear call-to-action with a visual icon.
Why you arranged them that way? I used MainAxisAlignment.center within the Column to align all content in the center of the screen. This creates a balanced look and focuses attention on the profile information.

How this screen could evolve in a real KRS system? In a real system, the Name and Student ID would not be hardcoded. Instead, they would be fetched from a Student Database via an API. The screen could also include dynamic academic data like GPA (IPK) and semester status.

Berikut versi singkat untuk README.md 🌿

