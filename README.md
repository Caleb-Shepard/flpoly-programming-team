# flpoly-programming-team
Tools and configs for the Florida Polytechnic Programming Team  

The vim header plugin has four commands.  

- `HeaderAdd` - Adds a header to the file.  
- `HeaderSetUser <username>` - Sets the user that is displayed in the header.  
- `HeaderSetEmail <email address>` - Sets the email that is displayed in the header.  
- `HeaderSetArt <art>` - Sets the ASCII art in the header.  

The values you pick for your header will reset every time vim is closed. To make them permanent,
add them as autocommands in your `.vimrc`. For example, if my username was JohnDoe1, my email was
john_doe@aol.net, and my preferred ASCII art was 'poly1', I'd add these three lines to my `.vimrc`:
```
autocmd VimEnter * HeaderSetUser JohnDoe1
autocmd VimEnter * HeaderSetEmail john_doe@aol.net
autocmd VimEnter * HeaderSetArt poly1
```

Here are the current ASCII images to choose from:   
```
poly1:

        |\           
  ------| \----      
  |    \`  \  |  p   
  |  \`-\   \ |  o   
  |---\  \   `|  l   
  | ` .\  \   |  y  
  -------------


ucf1:

   \\ \\               
   ||_|| ____          
   \___// __/ ____     
       | |__ / ___|    
        \___|| |__     
             |  _/     
             |_|       


ucf2:

  university of          
  central                
  florida                
                   ]
 <::::::::::::::::}]xxx@
                   ]
```
