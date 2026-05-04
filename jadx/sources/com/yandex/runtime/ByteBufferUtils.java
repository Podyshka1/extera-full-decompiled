package com.yandex.runtime;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class ByteBufferUtils {
    private ByteBufferUtils() {
    }

    public static ByteBuffer fromByteArray(byte[] bArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bArr.length);
        byteBufferAllocateDirect.put(bArr);
        return byteBufferAllocateDirect;
    }

    public static ByteBuffer fromInputStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStream.read(bArr, 0, 16384);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    byteArrayOutputStream.flush();
                    ByteBuffer byteBufferFromByteArray = fromByteArray(byteArrayOutputStream.toByteArray());
                    inputStream.close();
                    return byteBufferFromByteArray;
                }
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    public static ByteBuffer fromResource(Resources resources, int i) {
        return fromInputStream(resources.openRawResource(i));
    }

    public static ByteBuffer fromAsset(AssetManager assetManager, String str) {
        return fromInputStream(assetManager.open(str));
    }

    public static ByteBuffer fromFile(String str) throws IOException {
        File file = new File(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        DataInputStream dataInputStream = new DataInputStream(fileInputStream);
        try {
            byte[] bArr = new byte[(int) file.length()];
            dataInputStream.readFully(bArr);
            return fromByteArray(bArr);
        } finally {
            fileInputStream.close();
        }
    }
}
