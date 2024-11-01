# nunu.github.io
PURPOSE

Nobody wants their mood ruined by seeing news they didn't want to see. The purpose of nunu is to tailor news segments to the emotion of the user. The goal is to help users see the information they truly want to see and filter news stories simply, weeding out unintended, uninteresting stories. 

CURRENT

Splash Screen
   The splash screen is the blue text reading “nunu” that appears when the app is opened initially. This is done by having the image show for the first few seconds and then have      transition logic to the login screen. 
Login Screen
   The login screen is the page that appears after the splash screen. As of now, it acts as a basic gateway to the home screen that can be accessed through the username “USER” and    password “PASSWORD.”
Home Screen
   The home screen appears following the login screen. It has a header that says “home” and seven different colored buttons with various emotions. Each button leads to the            individual views. 
Individual Views
   The individual views are to be chosen based on the emotion of the user. Each view has a different sentiment analysis to provide a news feed in line with what the user would        likely want. The news feed itself is drawn from an API called “News API.” 
Sentiment Analysis
   Sentiment analysis is the strategy used to attribute news stories to different emotions. This is crucial to the project because it is directly related to the purpose at hand.      It works by scanning the news stories and their titles for keywords. From there, the key words are filtered into positive, negative, and neutral categories that get attributed     to the seven different emotion buttons.

FUTURE

In the future, each button will lead to a page filled with news stories that can be scrolled through and selected to see in a larger view. Aforementioned news stories will be tailored specifically to the emotion selected as defined in the purpose of the application itself. There are also plans to improve the user experience by adding the option to create an account that can be signed into later on. This would allow users to save news stories they find interesting and even build an algorithm within the different emotion selections to better suit the user. Finally, the application design will also be modified. The intention is to have a sleek, modern design that doesn't sacrifice usability. 
