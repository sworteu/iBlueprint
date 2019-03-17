#tag Class
Protected Class App
Inherits iBlueprint.ExtendedIOSApplication
	#tag CompatibilityFlags = TargetIOS
	#tag ViewBehavior
		#tag ViewProperty
			Name="NetworkActivityVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IdleTimerActive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
