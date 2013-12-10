package org.wwlib.WwColoring.fla
{		import flash.display.MovieClip;		import fl.motion.MatrixTransformer;	import fl.motion.ColorMatrix;	import fl.motion.Color;	import flash.geom.Matrix;		/**
	 * ...
	 * @author Andrew Rapo (andrew@worthwhilegames.org)
	 */	public class mcAssets extends MovieClip {				public static var label_callback:Function;		public static var anim_callback:Function;		public static var face_callback:Function;		public static var skin_callback:Function;		public static var ui_callback:Function;
		public static var alerts_callback:Function;				public function mcAssets() {		}				public static function dependencies() {			//ensure that fl.motion classes are built into the swc			MatrixTransformer.getRotation(new Matrix());			var cm:ColorMatrix = new ColorMatrix();			var c:Color = new Color();		}
		public static function updateFace(mc:MovieClip, face_mc:MovieClip = null)		{			if (face_callback != null)			{				if (face_mc == null)				{					face_mc = mc["face"];				}				face_callback(face_mc);			}		}		public static function updateSkin(mc:MovieClip):void		{			var skin1:MovieClip = mc["skin1"];			var skin2:MovieClip = mc["skin2"];			var skin3:MovieClip = mc["skin3"];			var skin4:MovieClip = mc["skin4"];			var skin5:MovieClip = mc["skin5"];			var skin6:MovieClip = mc["skin6"];			var skin7:MovieClip = mc["skin7"];			var skin8:MovieClip = mc["skin8"];			var skin9:MovieClip = mc["skin9"];			var skin10:MovieClip = mc["skin10"];			var skin_blink:MovieClip = mc["skin_blink"];						var skin_list:Array = new Array(skin1, skin2, skin3, skin4, skin5, skin6, skin7, skin8, skin9, skin10, skin_blink);						if (skin_callback != null)			{				skin_callback(skin_list);			}			}				public static function updateLabels(label_list:Array = null)		{			if (label_callback != null)			{				label_callback(label_list);			}		}
		public static function updateAnim(anim_state:String = "")		{			if (anim_callback != null)			{				anim_callback(anim_state);			}		}				public static function updateUI(ui_context:String = "", ui_state:String = "", ui_mc:MovieClip = null)		{			if (ui_callback != null)			{				ui_callback(ui_context, ui_state, ui_mc);			}		}
		
		public static function updateAlerts(alerts_context:String = "", alerts_state:String = "", alerts_mc:MovieClip = null)
		{
			if (alerts_callback != null)
			{
				alerts_callback(alerts_context, alerts_state, alerts_mc);
			}
		}	}	}