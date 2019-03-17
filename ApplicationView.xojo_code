#tag IOSView
Begin iosView ApplicationView
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   False
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSButton ButtonSetActivity
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonSetActivity, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   ButtonSetActivity, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ButtonSetActivity, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   ButtonSetActivity, 10, <Parent>, 10, False, +1.00, 4, 1, -142, , True
      Caption         =   "Acivity Invisible "
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   83
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton ButtonGetActivity
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonGetActivity, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   ButtonGetActivity, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   ButtonGetActivity, 3, ButtonSetActivity, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ButtonGetActivity, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Get Activity state"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   121
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton ButtonSetIdleTimer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonSetIdleTimer, 1, ButtonGetActivity, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ButtonSetIdleTimer, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   ButtonSetIdleTimer, 3, <Parent>, 3, False, +1.00, 4, 1, 202, , True
      AutoLayout      =   ButtonSetIdleTimer, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Idletimer Enabled"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   202
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton ButtonGetIdleTimer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonGetIdleTimer, 1, ButtonSetIdleTimer, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ButtonGetIdleTimer, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   ButtonGetIdleTimer, 3, ButtonSetIdleTimer, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ButtonGetIdleTimer, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Get Idletimer state"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   240
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events ButtonSetActivity
	#tag Event
		Sub Action()
		  If Me.Caption = "Acivity Visible" Then
		    
		    App.IsNetworkActivityVisible = False
		    
		    Me.Caption = "Acivity Invisible" 
		    
		  Else
		    
		    App.IsNetworkActivityVisible = True
		    
		    Me.Caption = "Acivity Visible" 
		    
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonGetActivity
	#tag Event
		Sub Action()
		  Const default_state = "Get Activity state: "
		  
		   
		  If App.IsNetworkActivityVisible = True Then
		    
		    Me.Caption = default_state + "True"
		    
		  Else
		    
		    Me.Caption = default_state + "False"
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonSetIdleTimer
	#tag Event
		Sub Action()
		  If Me.Caption = "Idletimer Enabled" Then
		    
		    App.IsIdleTimerDisabled = False
		    
		    Me.Caption = "Idletimer Disabled" 
		    
		  Else
		    
		    App.IsIdleTimerDisabled = True
		    
		    Me.Caption = "Idletimer Enabled"
		    
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonGetIdleTimer
	#tag Event
		Sub Action()
		  Const default_state = "Idletimer enabled: "
		  
		  If App.IsIdleTimerDisabled = True Then
		    
		    Me.Caption = default_state + "True"
		    
		  Else
		    
		    Me.Caption = default_state + "False"
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
