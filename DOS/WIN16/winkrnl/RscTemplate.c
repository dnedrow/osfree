/*    
	RscTemplate.c	2.4
    	Copyright 1997 Willows Software, Inc. 

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Library General Public License as
published by the Free Software Foundation; either version 2 of the
License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Library General Public License for more details.

You should have received a copy of the GNU Library General Public
License along with this library; see the file COPYING.LIB.  If
not, write to the Free Software Foundation, Inc., 675 Mass Ave,
Cambridge, MA 02139, USA.


For more information about the Willows Twin Libraries.

	http://www.willows.com	

To send email to the maintainer of the Willows Twin Libraries.

	mailto:twin@willows.com 

 */

#include "windows.h"

#include "Resources.h"

TYPEINFO hsmt_resource_templ[] = {
    { (LPSTR)0x8000, 	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_CURSOR,	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_BITMAP,	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_ICON, 	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_MENU, 	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_DIALOG,	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_STRING,	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_FONTDIR, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_FONT,	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_ACCELERATOR, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_RCDATA,	 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_USER_DEF, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_GROUP_CURSOR,0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_USER_DEF, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_GROUP_ICON,  0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_NAME_TABLE, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_USER_DEF, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_USER_DEF, 0 , (NAMEINFO *)NULL },
    { (LPSTR)RT_USER_DEF, 0 , (NAMEINFO *)NULL },
    { (LPSTR)NULL, 0 , (NAMEINFO *)NULL }
};
