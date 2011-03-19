Chrome extension demo

19/03/2011

Use: 
Save all this stuff to a folder

Bring up the extensions management page by clicking the wrench icon and choosing Tools > Extensions

If Developer mode has a + by it, click the + to add developer information to the page. 
The + changes to a -, and more buttons and information appear.

Click the Load unpacked extension button. A file dialog appears.

In the file dialog, navigate to the extension's folder and click OK

If your extension is valid, its icon appears next to the address bar, 
and information about the extension appears in the extensions page

You should see a new little icon in the top right of chrome, saying 'hello'
Click on this to display a little popup window. Place a search item in the textbox and click search,
this should open up a new window with the google search results. In the backround, it activates the listeners
which will gather data on pages visted.

this more explicit definition makes things easier and helps to better 'encapsulate' the search session. 
All subsequent activity in this window will be assumed to be relating to the initial search query
It ignores additional pages from google for the moment

Start browsing the web. Hopefully annoying little things will pop up on the lower right of your screen
they contain details about the pages you visit. It's not well formatted, but it shows a few of the things
it's able to detect

Upon switching tabs, you should see a message telling how long you spent on the previous tab, and the total time for which
that tab has been active. Note that this value should reset if the tab's page is changed at some point. 
The idea is, given two pages open for the same amount of time, the time spent actively viewing it
may be a good indicator of relevance/utility. 

If you move to a new page, a bigger message pops up. It should be able to tell whether this new page is in a previously
unvisited domain

Note that these messages won't appear if you move to a different window


TODO:
It shouldn't be too hard to allow the user to explicity end a search session in the same popup,
otherwise it can be marked by the closing of the search window.
 
After all this happens, the script should be able to finalize the stats, and output them to a file.
this can be processed by a ranking program, which perhaps outputs some JSON, which the script will read
next time a search occurs, and use it to inject results.

