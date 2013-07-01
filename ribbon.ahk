;;
;;UI Ribbon
;;


;;
;;
;;
class IUIFramework
{
  __new(){
		this.__:=ComObjCreate("{926749fa-2615-4987-8845-c33e65f2b957}","{F4F0385D-6872-43a8-AD09-4C339CB3F5C5}")
		this._i:={3:"Initialize",4:"Destroy",5:"LoadUI",6:"GetView",7:"GetUICommandProperty",8:"SetUICommandProperty",9:"InvalidateUICommand",10:"FlushPendingInvalidations",11:"SetModes"}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this.__)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  Initialize(frameWnd,application){
	return _Error(DllCallvt(this.__,3),"ptr",this.__,"ptr",frameWnd,"ptr",application),"Initialize")
  }

  Destroy(){
	return _Error(DllCallvt(this.__,4),"ptr",this.__),"Destroy")
  }

  LoadUI(instance,resourceName){
	return _Error(DllCallvt(this.__,5),"ptr",this.__,"ptr",instance,"str",resourceName),"LoadUI")
  }

  GetView(viewId,riid){
	_Error(DllCallvt(this.__,6),"ptr",this.__,"uint",viewId,"ptr",riid,"ptr*",ppv),"GetView")
	return ppv
  }

  GetUICommandProperty(commandId,key,value){
	return _Error(DllCallvt(this.__,7),"ptr",this.__,"uint",commandId,"ptr",key,"ptr",value),"GetUICommandProperty")
  }

  SetUICommandProperty(commandId,key,value){
	return _Error(DllCallvt(this.__,8),"ptr",this.__,"uint",commandId,"ptr",key,"ptr",value),"SetUICommandProperty")
  }

  InvalidateUICommand(commandId,flags,key){
	return _Error(DllCallvt(this.__,9),"ptr",this.__,"uint",commandId,"int",flags,"ptr",key),"InvalidateUICommand")
  }

  FlushPendingInvalidations(){
	return _Error(DllCallvt(this.__,10),"ptr",this.__),"FlushPendingInvalidations")
  }

  SetModes(iModes){
	return _Error(DllCallvt(this.__,11),"ptr",this.__,"int",iModes),"SetModes")
  }
}
;;
;;
;;


;;
;;
;;


;;
;;
;;


;;
;;
;;


;;
;;
;;


;;
;;
;;


;;
;;Functions
;;
; Create ribbon xml from UIA
CreateXmlFromUIA(ptr){
	
}
; Compile xml to dll
Compile(xml){
	
}
; Load ribbon ui
Load(dll){
	
}



;;
;;wrapped function
;;
; IUIImageFromBitmap::CreateImage
CreateImage(bitmap,options,image){
	static __:=ComObjCreate("{0F7434B6-59B6-4250-999E-D168D6AE4293}","{18aba7f3-4c1c-4ba2-bf6c-f5c3326fa816}")
	DllCall(vt(this.__,3),"ptr",this.__,"ptr",bitmap,"int",options,"ptr*",image)
	return image
}
; IUIImage::GetBitmap
GetBitmap(_p){
	_Error(DllCall(vt(_p,3),"ptr",_p,"ptr*",bitmap),"GetBitmap")
	return bitmap
}
; 

; 

; 
