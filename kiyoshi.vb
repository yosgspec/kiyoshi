Option Strict On
Option Infer On
Imports System.Collections.Generic
Imports System.Threading

Module Program
	ReadOnly rand As New Random()

	Sub Main()
		Dim ptn={"ズン","ドコ"}
		Const fin="キ・ヨ・シ!"
		Dim log As New LinkedList(Of String)({"","","","",""})
		Const ans="ズンズンズンズンドコ"

		Do
			Dim last=ptn(rand.Next(ptn.Length))
			Console.Write(last)
			log.RemoveFirst()
			log.AddLast(last)
			If ans=string.Join("",log) Then Exit Do
			Thread.Sleep(200)
		Loop
		Console.WriteLine(fin)
	End Sub
End Module
