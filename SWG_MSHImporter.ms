rollout SWG_roll "MSH importer" (
 label lbl0 ""
 button impMGN "Import   MSH" width:150 Height:25 align:#center
 label lbl1 ""
 label lbl2 "by Rosuto" align:#right
 
 fn readInvLong f = (
	t1 = readByte f #unsigned
	t2 = readByte f #unsigned
	t3 = readByte f #unsigned
	t4 = readByte f #unsigned
	return (t4+t3*0x100+t2*0x10000+t1*0x1000000)
 )	
 
 fn readDATA f numData = (
	datasize = readInvLong f
	vertArray = #()
	normArray = #()
	uvArray1 = #()
	uvArray2 = #()
	uvArray3 = #()
	uvArray4 = #()
	uvArray5 = #()
	uvArray6 = #()
	vertColorArray = #()
	vertAlphaArray = #()
	sizeElement = datasize/numData
	
	case sizeElement of (
		28:(
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				r = readByte f #unsigned
				g = readByte f #unsigned
				b = readByte f #unsigned
				z = readByte f #unsigned
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append vertColorArray [r,g,b]
				append vertAlphaArray z
			)
		)
		
		
		32: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				u1 = readFloat f
				v1 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				
			)
		)
		36: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				r = readByte f #unsigned
				g = readByte f #unsigned
				b = readByte f #unsigned
				z = readByte f #unsigned
				u1 = readFloat f
				v1 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append vertColorArray [r,g,b]
				append vertAlphaArray z
			)
		)
		40: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
			)
		)
		44: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				r = readByte f #unsigned
				g = readByte f #unsigned
				b = readByte f #unsigned
				z = readByte f #unsigned
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append vertColorArray [r,g,b]
				append vertAlphaArray z
			)
		)
		48: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
			)
		)
		52: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				r = readByte f #unsigned
				g = readByte f #unsigned
				b = readByte f #unsigned
				z = readByte f #unsigned
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
				append vertColorArray [r,g,b]
				append vertAlphaArray z
			)
		)
		56: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				u4 = readFloat f
				v4 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
				append uvArray4 [u4,v4,0]
			)
		)
		60: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				r = readByte f #unsigned
				g = readByte f #unsigned
				b = readByte f #unsigned
				z = readByte f #unsigned
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				u4 = readFloat f
				v4 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
				append uvArray4 [u4,v4,0]
				append vertColorArray [r,g,b]
				append vertAlphaArray z
			)
		)
		64: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				u4 = readFloat f
				v4 = 1- (readfloat f)
				u5 = readFloat f
				v5 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
				append uvArray4 [u4,v4,0]
				append uvArray5 [u5,v5,0]
			)
		)
		68: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				r = readByte f #unsigned #unsigned
				g = readByte f #unsigned #unsigned
				b = readByte f #unsigned #unsigned
				z = readByte f #unsigned #unsigned
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				u4 = readFloat f
				v4 = 1- (readfloat f)
				u5 = readFloat f
				v5 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
				append uvArray4 [u4,v4,0]
				append uvArray5 [u5,v5,0]
				append vertColorArray [r,g,b]
				append vertAlphaArray z
			)
		)
		72: (
			for i = 1 to numData do (
				vx = readFloat f
				vy = readFloat f
				vz = readFloat f
				nx = readFloat f
				ny = readFloat f
				nz = readFloat f
				u1 = readFloat f
				v1 = 1- (readfloat f)
				u2 = readFloat f
				v2 = 1- (readfloat f)
				u3 = readFloat f
				v3 = 1- (readfloat f)
				u4 = readFloat f
				v4 = 1- (readfloat f)
				u5 = readFloat f
				v5 = 1- (readfloat f)
				u6 = readFloat f
				v6 = 1- (readfloat f)
				append vertArray [-vx,-vz,vy]
				append normArray [nx,-nz,ny] 
				append uvArray1 [u1,v1,0]
				append uvArray2 [u2,v2,0]
				append uvArray3 [u3,v3,0]
				append uvArray4 [u4,v4,0]
				append uvArray5 [u5,v5,0]
				append uvArray6 [u6,v6,0]
			)
		)
	)
	return #(vertArray,normArray,uvArray1,uvArray2,uvArray3,uvArray4,uvArray5,uvArray6,vertColorArray,vertAlphaArray)
 )
	
 fn readINDX f = (
	FCary = #()
	datasize = readInvLong f
	numIndex = readlong f
	sizeElement = datasize / numIndex
	for i = 1 to (numIndex/3) do (
		if sizeElement == 2 then (
			f1 = 1 + (readshort f #unsigned)
			f2 = 1 + (readshort f #unsigned)
			f3 = 1 + (readshort f #unsigned)
		) else if sizeElement == 4 then (
			f1 = 1 + (readlong f #unsigned)
			f2 = 1 + (readlong f #unsigned)
			f3 = 1 + (readlong f #unsigned)
		) else messagebox "error in face index"
			append FCary [f2,f1,f3]
	)
	return FCary
 )	
 
 fn buildmesh2 vertArray normArray uvArray1 uvArray2 uvArray3 uvArray4 uvArray5 uvArray6 vertColorArray vertAlphaArray FCary strShade = (
	msh = mesh vertices:vertArray faces:FCary
	if uvArray1.count > 0 then (
		msh.numTVerts = uvArray1.count
		buildTVFaces msh
		for j = 1 to FCary.count do setTVFace msh j FCary[j]
	)
	for j = 1 to normArray.count do setNormal msh j normArray[j]
	for j = 1 to uvArray1.count do meshop.setMapVert msh 1 j uvArray1[j]
	if uvArray2.count > 0 then meshop.setNumMaps msh ((meshop.getNumMaps msh) + 1)keep:true
	for j = 1 to uvArray2.count do meshop.setMapVert msh 2 j uvArray2[j]
	if uvArray3.count > 0 then meshop.setNumMaps msh ((meshop.getNumMaps msh) + 1)keep:true	
	for j = 1 to uvArray3.count do meshop.setMapVert msh 3 j uvArray3[j]
	if uvArray4.count > 0 then meshop.setNumMaps msh ((meshop.getNumMaps msh) + 1)keep:true
	for j = 1 to uvArray4.count do meshop.setMapVert msh 4 j uvArray4[j]
	if uvArray5.count > 0 then meshop.setNumMaps msh ((meshop.getNumMaps msh) + 1)keep:true
	for j = 1 to uvArray5.count do meshop.setMapVert msh 5 j uvArray5[j]
	if uvArray6.count > 0 then meshop.setNumMaps msh ((meshop.getNumMaps msh) + 1)keep:true
	for j = 1 to uvArray6.count do meshop.setMapVert msh 6 j uvArray6[j]
	if vertColorArray.count > 0 then (
		setNumCPVVerts msh msh.numverts
		defaultVCFaces msh
		for j = 1 to vertColorArray.count do setVertColor msh j vertColorArray[j]
		--for j = 1 to vertAlphaArray.count do meshop.setVertAlpha msh 0 j vertColorArray[j]
	)
	msh.name = strShade
	return msh
 )
	
 on impMGN pressed do ( 
	fname = getOpenFileName caption:"Select Star Wars Galaxies Model file" types:"MSH File (*.msh)|*.msh|" 
	if fname != undefined then (
		f = fopen fname "rb"
		fseek f 0 #seek_end
		ofsEOF = ftell f
		fseek f 28 #seek_set
		header = readInvLong f
		fseek f header #seek_cur
		vertArray = #()
		normArray = #()
		uvArray1 = #()
		uvArray2 = #()
		uvArray3 = #()
		uvArray4 = #()
		uvArray5 = #()
		uvArray6 = #()
		vertColorArray = #()
		vertAlphaArray = #()
		FCary = #()
		infoFlag = false
		strShade = ""
		mshVert = 0
		do (
			header = readlong f
			case header of (
				0x454D414E: ( --shader
					header = readlong f
					strShade =  readString f
					strShade = substituteString strShade "shader/" ""
					strShade = substituteString strShade ".sht" ""
					fseek f 74 #seek_cur
					mshVert = readShort f
					readShort f
					infoFlag = true
				)
				0x58444E49: ( --INDX
					FCary = readINDX f
					msh = buildmesh2 vertArray normArray uvArray1 uvArray2 uvArray3 uvArray4 uvArray5 uvArray6 vertColorArray vertAlphaArray FCary strShade
				)
				0x41544144: ( --DATA
					if infoFlag == true then (
						rslt = readDATA f mshVert
							if rslt != undefined then (
							vertArray = rslt[1]
							normArray = rslt[2]
							uvArray1 = rslt[3]
							uvArray2 = rslt[4]
							uvArray3 = rslt[5]
							uvArray4 = rslt[6]
							uvArray5 = rslt[7]
							uvArray6 = rslt[8]
							vertColorArray = rslt[9]
							vertAlphaArray = rslt[10]
						)
						infoFlag = false
					) else (
						fseek f 5 #seek_cur
					)
				)   
			)--end case
		) while (ftell f) != ofsEOF
		fclose f
	)
 )
)

if Fatduck_SWG != undefined then closeRolloutFloater Fatduck_SWG
Fatduck_SWG = newRolloutFloater "Star Wars Galaxies" 200 175 10 70
addRollout SWG_roll Fatduck_SWG
	
