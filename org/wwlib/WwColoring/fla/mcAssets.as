﻿package org.wwlib.WwColoring.fla
{
	 * ...
	 * @author Andrew Rapo (andrew@worthwhilegames.org)
	 */
		public static var alerts_callback:Function;


		
		public static function updateAlerts(alerts_context:String = "", alerts_state:String = "", alerts_mc:MovieClip = null)
		{
			if (alerts_callback != null)
			{
				alerts_callback(alerts_context, alerts_state, alerts_mc);
			}
		}