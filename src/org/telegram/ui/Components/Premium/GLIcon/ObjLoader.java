package org.telegram.ui.Components.Premium.GLIcon;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class ObjLoader {
    public float[] normals;
    public int numFaces;
    public float[] positions;
    public float[] textureCoordinates;

    public ObjLoader(Context context, String str, float f) {
        try {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(context.getAssets().open(str), 16384));
            try {
                float[] floats = readFloats(dataInputStream);
                float[] floats2 = readFloats(dataInputStream);
                float[] floats3 = readFloats(dataInputStream);
                int i = dataInputStream.readInt();
                this.numFaces = i;
                this.normals = new float[i * 3];
                this.textureCoordinates = new float[i * 2];
                this.positions = new float[i * 3];
                for (int i2 = 0; i2 < this.numFaces; i2++) {
                    int i3 = dataInputStream.readInt() * 3;
                    for (int i4 = 0; i4 < 3; i4++) {
                        this.positions[(i2 * 3) + i4] = floats[i3 + i4] * f;
                    }
                    int i5 = dataInputStream.readInt() * 2;
                    float[] fArr = this.textureCoordinates;
                    int i6 = i2 * 2;
                    float f2 = 0.0f;
                    fArr[i6] = (i5 < 0 || i5 >= floats2.length) ? 0.0f : floats2[i5];
                    int i7 = i5 + 1;
                    int i8 = i6 + 1;
                    if (i7 >= 0 && i7 < floats2.length) {
                        f2 = 1.0f - floats2[i7];
                    }
                    fArr[i8] = f2;
                    int i9 = dataInputStream.readInt() * 3;
                    for (int i10 = 0; i10 < 3; i10++) {
                        this.normals[(i2 * 3) + i10] = floats3[i9 + i10];
                    }
                }
                dataInputStream.close();
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static float[] readFloats(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = dataInputStream.readFloat();
        }
        return fArr;
    }
}
