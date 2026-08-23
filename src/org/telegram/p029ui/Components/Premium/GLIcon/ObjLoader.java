package org.telegram.p029ui.Components.Premium.GLIcon;

import android.content.Context;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public final class ObjLoader {
    public float[] normals;
    public int numFaces;
    public float[] positions;
    public float[] textureCoordinates;

    public ObjLoader(Context context, String str, float f) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        try {
            DataInputStream dataInputStream = new DataInputStream(context.getAssets().open(str));
            int i = dataInputStream.readInt();
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(Float.valueOf(dataInputStream.readFloat()));
            }
            int i3 = dataInputStream.readInt();
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList3.add(Float.valueOf(dataInputStream.readFloat()));
            }
            int i5 = dataInputStream.readInt();
            for (int i6 = 0; i6 < i5; i6++) {
                arrayList2.add(Float.valueOf(dataInputStream.readFloat()));
            }
            int i7 = dataInputStream.readInt();
            this.numFaces = i7;
            this.normals = new float[i7 * 3];
            this.textureCoordinates = new float[i7 * 2];
            this.positions = new float[i7 * 3];
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < i7; i11++) {
                int i12 = dataInputStream.readInt() * 3;
                this.positions[i8] = ((Float) arrayList.get(i12)).floatValue() * f;
                int i13 = i8 + 2;
                this.positions[i8 + 1] = ((Float) arrayList.get(i12 + 1)).floatValue() * f;
                i8 += 3;
                this.positions[i13] = ((Float) arrayList.get(i12 + 2)).floatValue() * f;
                int i14 = dataInputStream.readInt() * 2;
                int i15 = i9 + 1;
                float fFloatValue = 0.0f;
                this.textureCoordinates[i9] = (i14 < 0 || i14 >= arrayList3.size()) ? 0.0f : ((Float) arrayList3.get(i14)).floatValue();
                int i16 = i14 + 1;
                float[] fArr = this.textureCoordinates;
                i9 += 2;
                if (i16 >= 0 && i16 < arrayList3.size()) {
                    fFloatValue = 1.0f - ((Float) arrayList3.get(i16)).floatValue();
                }
                fArr[i15] = fFloatValue;
                int i17 = dataInputStream.readInt() * 3;
                this.normals[i10] = ((Float) arrayList2.get(i17)).floatValue();
                int i18 = i10 + 2;
                this.normals[i10 + 1] = ((Float) arrayList2.get(i17 + 1)).floatValue();
                i10 += 3;
                this.normals[i18] = ((Float) arrayList2.get(i17 + 2)).floatValue();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
