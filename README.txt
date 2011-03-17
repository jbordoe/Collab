Chrome extension demo

17/03/2011

Use: 
Save all this stuff to a folder

Bring up the extensions management page by clicking the wrench icon and choosing Tools > Extensions

If Developer mode has a + by it, click the + to add developer information to the page. 
The + changes to a -, and more buttons and information appear.

Click the Load unpacked extension button. A file dialog appears.

In the file dialog, navigate to the extension's folder and click OK

If your extension is valid, its icon appears next to the address bar, 
and information about the extension appears in the extensions page


Start browsing the web. Hopefully annoying little things will pop up on the lower right of your screen
they contain details about the pages you visit. It's not well formatted, but it shows a few of the things
it's able to detect

Upon switching tabs, you should see a message telling how long you spent on the previous tab, and the total time for which
that tab has been active. Note that this value should reset if the tab's page is changed at some point. 
The idea is, given two pages open for the same amount of time, the time spent actively viewing it
may be a good indicator of relevance/utility. 

If you move to a new page, a bigger message pops up. It should be able to tell whether this new page is in a previously
unvisited domain

Todo: 
add more event listeners
update JSON objects accordingly
figure out what to do with the JSON :S
