$regfile = "m8def.dat"
$crystal = 1000000

Config Portb = Output
Config Portd = Output
Config Pinc.0 = Input
Config Pinc.1 = Input
Config Pinc.2 = Input


'******************************************************************
'********************        ⁄—Ì› „ €Ì—     ***********************
'******************************************************************

Dim A As Byte
Dim A2 As Byte
Dim B As Byte
Dim D1 As Byte
Dim D2 As Byte
Dim D3 As Byte
Dim D4 As Byte
Dim Cun As Byte
Dim Cun1 As Byte
Dim Cun2 As Byte
Dim Cun3 As Byte
Dim C As Byte


D5 Alias Portb

'*****************************************************
'***************       „ﬁœ«— „ €Ì—    ****************
'*****************************************************
B = 0
C = 136
Cun1 = 0
Cun = 1
A2 = 30



'*******************************************************
'*********************      »—‰«„Â          ************
'*******************************************************
Do
For A = 0 To A2

   If Pinc.0 = 0 Then
      Incr Cun
      Waitms 200

'*******************************************************
'******************         select     *****************
'*******************************************************
'--------------------------------
Select Case Cun

'Case 0 : C = 17
Case 1 : C = 136
Case 2 : C = 17
Case 3 : C = 51
Case 4 : C = 204
Case 5 : C = 51
Case 6 : C = 255
Case 7 : C = 85
Case 8 : C = 51
Case 9 : C = 238
Case 10 : C = 119
Case Else :
Cun = 1
C = 17
End Select
'-------------------------------

'**************************************
      B = 0
      Cun1 = 0
      Exit For

   End If
'----------------------------------------------



'---------------------------
If B = 1 Then
Portd = &B00010001
D5 = D1
End If

Waitus 600

If B = 2 Then
Portd = &B00100010
D5 = D2
End If

Waitus 600

If B = 3 Then
Portd = &B01000100
D5 = D3
End If

Waitus 600

If B = 4 Then
Portd = &B10001000
D5 = D4
End If

Waitus 600

Incr B
If B = 5 Then
B = 1
End If


'Waitms 2
Next

If Pinc.1 = 0 Then
A2 = A2 + 10
Waitms 200
End If

If Pinc.2 = 0 Then
A2 = A2 - 10
Waitms 200
End If

If A2 = 0 Then A2 = 10
If A2 = 250 Then A2 = 240






'-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
'-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
'-*-*-*-*-*-*                 *-*-*-*-*-*-*
'-*-*-*-*-*-*                 *-*-*-*-*-*-*
'-*-*-*-*-*-*        Ê«»⁄     *-*-*-*-*-*-*
'-*-*-*-*-*-*                 *-*-*-*-*-*-*
'-*-*-*-*-*-*                 *-*-*-*-*-*-*
'-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
'-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*




'If Cun = 0 Then
'Gosub Aa

'
'If Cun1 <= 3 Then
'D1 = C
'D2 = 0
'D3 = 0
'D4 = 0
'End If
'If Cun1 > 3 And Cun1 <= 7 Then
'D1 = 0
'D2 = C
'D3 = 0
'D4 = 0
'End If
'If Cun1 > 7 And Cun1 <= 11 Then
'D1 = 0
'D2 = 0
'D3 = C
'D4 = 0
'End If
'If Cun1 > 11 And Cun1 <= 15 Then
'D1 = 0
'D2 = 0
'D3 = 0
'D4 = C
'End If
'Incr Cun1
'If Cun1 = 16 Then
'Cun1 = 0
'Incr Cun2
'End If
'If Cun2 = 10 Then
'Incr Cun
'Cun2 = 0
'End If
'
'Rotate C , Left
'A = 0
'End If
'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/
If Cun = 1 Then

If Cun1 <= 3 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If
If Cun1 > 3 And Cun1 <= 7 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If
If Cun1 > 7 And Cun1 <= 11 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If
If Cun1 > 11 And Cun1 <= 15 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If

Rotate C , Right

Incr Cun1

If Cun1 = 16 Then
Cun1 = 0
Incr Cun2
End If

If Cun2 = 10 Then
Incr Cun
Cun2 = 0
C = 17
End If

A = 0
End If


'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/


If Cun = 2 Then


If Cun1 <= 3 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If

If Cun1 >= 4 And Cun1 <= 7 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If

If Cun1 >= 8 And Cun1 <= 11 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If

If Cun1 >= 12 And Cun1 <= 15 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If

If Cun1 >= 16 And Cun1 <= 18 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If

If Cun1 >= 19 And Cun1 <= 22 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If

If Cun1 >= 23 And Cun1 <= 26 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If

If Cun1 >= 27 And Cun1 <= 29 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If



If Cun1 <= 14 Then
Rotate C , Left
End If

If Cun1 >= 15 Then
Rotate C , Right
End If


Incr Cun1
If Cun1 = 30 Then
Cun1 = 0
Incr Cun2
End If
If Cun2 = 10 Then
Incr Cun
Cun2 = 0
C = 51
End If

A = 0
End If

'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/



If Cun = 3 Then

If Cun1 <= 3 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If

If Cun1 = 3 Then
D1 = 136
D2 = 17
D3 = 0
D4 = 0
End If

If Cun1 >= 4 And Cun1 <= 7 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If

If Cun1 = 7 Then
D1 = 0
D2 = 136
D3 = 17
D4 = 0
End If

If Cun1 >= 8 And Cun1 <= 11 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If

If Cun1 = 11 Then
D1 = 0
D2 = 0
D3 = 136
D4 = 17
End If

If Cun1 >= 12 And Cun1 <= 14 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If

If Cun1 = 15 Then
D1 = 17
D2 = 0
D3 = 0
D4 = 136
End If



Rotate C , Left

Incr Cun1
If Cun1 = 16 Then
Cun1 = 0
Incr Cun2
End If
If Cun2 = 10 Then
Incr Cun
Cun2 = 0
C = 204
End If

A = 0
End If



'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/

If Cun = 4 Then

If Cun1 <= 2 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If

If Cun1 = 3 Then
D1 = 0
D2 = 0
D3 = 136
D4 = 17
End If

If Cun1 >= 4 And Cun1 <= 6 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If

If Cun1 = 7 Then
D1 = 0
D2 = 136
D3 = 17
D4 = 0
End If

If Cun1 >= 8 And Cun1 <= 10 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If

If Cun1 = 11 Then
D1 = 136
D2 = 17
D3 = 0
D4 = 0
End If

If Cun1 >= 12 And Cun1 <= 14 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If

If Cun1 = 15 Then
D1 = 17
D2 = 0
D3 = 0
D4 = 136
End If

Rotate C , Right

Incr Cun1

If Cun1 = 16 Then
Cun1 = 0
Incr Cun2
End If

If Cun2 = 10 Then
Incr Cun
Cun2 = 0
C = 51
End If



A = 0
End If

'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/

If Cun = 5 Then

If Cun1 <= 2 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If

If Cun1 = 3 Then
D1 = 136
D2 = 17
D3 = 0
D4 = 0
End If

If Cun1 >= 4 And Cun1 <= 6 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If

If Cun1 = 7 Then
D1 = 0
D2 = 136
D3 = 17
D4 = 0
End If

If Cun1 >= 8 And Cun1 <= 10 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If

If Cun1 = 11 Then
D1 = 0
D2 = 0
D3 = 136
D4 = 17
End If

If Cun1 >= 12 And Cun1 <= 14 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If



If Cun1 >= 15 And Cun1 <= 16 Then
D1 = 0
D2 = 0
D3 = 0
D4 = C
End If

If Cun1 = 17 Then
D1 = 0
D2 = 0
D3 = 136
D4 = 17
End If

If Cun1 >= 18 And Cun1 <= 20 Then
D1 = 0
D2 = 0
D3 = C
D4 = 0
End If

If Cun1 = 21 Then
D1 = 0
D2 = 136
D3 = 17
D4 = 0
End If

If Cun1 >= 22 And Cun1 <= 24 Then
D1 = 0
D2 = C
D3 = 0
D4 = 0
End If

If Cun1 = 25 Then
D1 = 136
D2 = 17
D3 = 0
D4 = 0
End If

If Cun1 >= 26 And Cun1 <= 28 Then
D1 = C
D2 = 0
D3 = 0
D4 = 0
End If





Incr Cun1
If Cun1 = 30 Then
Cun1 = 0
Incr Cun2
End If

If Cun2 = 10 Then
Incr Cun
Cun2 = 0
C = 255
End If

If Cun1 <= 14 Then Rotate C , Left
If Cun1 >= 15 Then Rotate C , Right


A = 0
End If



'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/

If Cun = 6 Then

If Cun1 <= 15 Then
D1 = C
D2 = C
D3 = C
D4 = C
End If

Incr Cun1
If Cun1 = 16 Then
Toggle C
Cun1 = 0
Incr Cun2

End If

If Cun2 = 10 Then
Incr Cun
Cun2 = 0
C = 85
End If

A = 0


End If




'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/

If Cun = 7 Then
D1 = C
D2 = C
D3 = C
D4 = C
Rotate C , Left
Incr Cun2

If Cun2 = 100 Then
Incr Cun
Cun2 = 0
C = 51
End If

End If

'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/

If Cun = 8 Then
D1 = C
D2 = C
D3 = C
D4 = C
Rotate C , Left
Incr Cun2

If Cun2 = 100 Then
Incr Cun
Cun2 = 0
C = 238
End If

End If

'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/

If Cun = 9 Then
D1 = C
D2 = C
D3 = C
D4 = C
Rotate C , Left

Incr Cun2

If Cun2 = 100 Then
Incr Cun
Cun2 = 0
C = 119
End If

End If



'*/*/*/*/*/*/*/*/*/*/*/**//*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/
'*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
'*/*/**/*/*/*/*/*/*/*/*/*//*/*/**/*/*/*/*/*/*/*/*/*/*//**/*/


If Cun = 10 Then
D1 = C
D2 = C
D3 = C
D4 = C
Rotate C , Left

Incr Cun2

If Cun2 = 100 Then
Cun = 1
Cun2 = 0
C = 136
End If

End If





Loop



'Aa:
'
'If Cun1 <= 3 Then
'D1 = C
'D2 = 0
'D3 = 0
'D4 = 0
'End If
'If Cun1 > 3 And Cun1 <= 7 Then
'D1 = 0
'D2 = C
'D3 = 0
'D4 = 0
'End If
'If Cun1 > 7 And Cun1 <= 11 Then
'D1 = 0
'D2 = 0
'D3 = C
'D4 = 0
'End If
'If Cun1 > 11 And Cun1 <= 15 Then
'D1 = 0
'D2 = 0
'D3 = 0
'D4 = C
'End If
'Incr Cun1
'If Cun1 = 16 Then
'Cun1 = 0
'Incr Cun2
'End If
'If Cun2 = 10 Then
'Incr Cun
'Cun2 = 0
'End If
'
'Rotate C , Left
'A = 0
'Return













End