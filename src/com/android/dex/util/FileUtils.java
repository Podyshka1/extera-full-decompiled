package com.android.dex.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.mvel2.util.ReflectionUtil$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FileUtils {
    public static byte[] readFile(String str) {
        return readFile(new File(str));
    }

    public static byte[] readFile(File file) {
        if (!file.exists()) {
            ReflectionUtil$$ExternalSyntheticBUOutline0.m977m(file, ": file not found");
            return null;
        }
        if (!file.isFile()) {
            ReflectionUtil$$ExternalSyntheticBUOutline0.m977m(file, ": not a file");
            return null;
        }
        if (!file.canRead()) {
            ReflectionUtil$$ExternalSyntheticBUOutline0.m977m(file, ": file not readable");
            return null;
        }
        long length = file.length();
        int i = (int) length;
        if (i != length) {
            ReflectionUtil$$ExternalSyntheticBUOutline0.m977m(file, ": file too long");
            return null;
        }
        byte[] bArr = new byte[i];
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int i2 = 0;
            while (i > 0) {
                int i3 = fileInputStream.read(bArr, i2, i);
                if (i3 == -1) {
                    throw new RuntimeException(file + ": unexpected EOF");
                }
                i2 += i3;
                i -= i3;
            }
            fileInputStream.close();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(file + ": trouble reading", e);
        }
    }

    public static boolean hasArchiveSuffix(String str) {
        return str.endsWith(".zip") || str.endsWith(".jar") || str.endsWith(".apk");
    }
}
