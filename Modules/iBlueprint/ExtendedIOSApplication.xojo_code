#tag Class
Protected Class ExtendedIOSApplication
Inherits IOSApplication
	#tag Method, Flags = &h0
		Sub Constructor(launchOptions As Ptr)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(launchOptions)
		  
		  // Get sharedApplication instance
		  zSharedApplicationInstance = sharedApplication(NSClassFromString("UIApplication"))
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function NSClassFromString Lib "foundation" (ClassName As CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function sharedApplication Lib "UIKit.framework" Selector "sharedApplication" (InstancePtr As Ptr) As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  ' @property(nonatomic, getter=isIdleTimerDisabled) BOOL idleTimerDisabled;
			  ' The getter should not have ":" at the end of the selector!
			  ' As seen above the getter selector name should be "isIdleTimerDisabled"
			  ' Getters have NO prefix, and NO suffix!
			  
			  Declare Function idleTimerDisabled Lib "UIKit" selector "isIdleTimerDisabled" (ClassRef As ptr) As Boolean
			  
			  Return idleTimerDisabled(zSharedApplicationInstance)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ' @property(nonatomic, getter=isIdleTimerDisabled) BOOL idleTimerDisabled;
			  ' As seen above the setter selector name should be "setIdleTimerDisabled:"
			  ' Always make sure the first letter after "set" has a "CAPITAL" letter!
			  ' A setter always have "set" as prefix and ":" as suffix in Xojo declares!
			  
			  Declare Sub setIdleTimerDisabled Lib "UIKit" selector "setIdleTimerDisabled:" (ClassRef As ptr, Activate As Boolean)
			  
			  setIdleTimerDisabled(zSharedApplicationInstance, value)
			End Set
		#tag EndSetter
		IsIdleTimerDisabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  ' @property(nonatomic, getter=isNetworkActivityIndicatorVisible) BOOL networkActivityIndicatorVisible;
			  ' The getter should not have ":" at the end of the selector!
			  ' As seen above the getter selector name should be "isNetworkActivityIndicatorVisible"
			  ' Getters have NO prefix, and NO suffix!
			  
			  Declare Function NetworkActivityIndicatorVisible Lib "UIKit" selector "isNetworkActivityIndicatorVisible" (ClassRef As ptr) As Boolean
			  
			  Return NetworkActivityIndicatorVisible(zSharedApplicationInstance)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ' @property(nonatomic, getter=isNetworkActivityIndicatorVisible) BOOL networkActivityIndicatorVisible;
			  ' the getter should not have ":" at the end of the selector!
			  ' As seen above the setter selector name should be "setNetworkActivityIndicatorVisible:"
			  ' A setter always have "set" as prefix and ":" as suffix in Xojo declares!
			  
			  Declare Sub setNetworkActivity Lib "UIKit" selector "setNetworkActivityIndicatorVisible:" (ClassRef As ptr, Activate As Boolean)
			  
			  setNetworkActivity(zSharedApplicationInstance, value)
			End Set
		#tag EndSetter
		IsNetworkActivityVisible As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared zSharedApplicationInstance As Ptr
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="IsNetworkActivityVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsIdleTimerDisabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
