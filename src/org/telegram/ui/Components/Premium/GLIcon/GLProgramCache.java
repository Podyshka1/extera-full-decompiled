package org.telegram.ui.Components.Premium.GLIcon;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.util.AtomicFile;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class GLProgramCache {
    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int create(Context context, String str, String str2, String str3, String str4, String str5) throws Throwable {
        Throwable th;
        int iCompile;
        RuntimeException runtimeException;
        int iGlCreateProgram = GLES20.glCreateProgram();
        AtomicFile atomicFileCacheFile = cacheFile(context, str, str2, str3, str4, str5);
        int i = 0;
        if (atomicFileCacheFile != null) {
            try {
                if (!restore(iGlCreateProgram, atomicFileCacheFile)) {
                    if (atomicFileCacheFile != null) {
                        GLES30.glProgramParameteri(iGlCreateProgram, 33367, 1);
                    }
                    int iCompile2 = compile(35633, str2);
                    try {
                        iCompile = compile(35632, str3);
                    } catch (RuntimeException e) {
                        runtimeException = e;
                        iCompile = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        iCompile = 0;
                    }
                    try {
                        GLES20.glAttachShader(iGlCreateProgram, iCompile2);
                        GLES20.glAttachShader(iGlCreateProgram, iCompile);
                        GLES20.glBindAttribLocation(iGlCreateProgram, 0, str4);
                        GLES20.glBindAttribLocation(iGlCreateProgram, 1, str5);
                        GLES20.glLinkProgram(iGlCreateProgram);
                        int[] iArr = new int[1];
                        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
                        if (iArr[0] == 0) {
                            throw new IllegalStateException(GLES20.glGetProgramInfoLog(iGlCreateProgram));
                        }
                        if (atomicFileCacheFile != null) {
                            save(iGlCreateProgram, atomicFileCacheFile);
                        }
                        if (iCompile2 != 0) {
                            GLES20.glDeleteShader(iCompile2);
                        }
                        if (iCompile != 0) {
                            GLES20.glDeleteShader(iCompile);
                        }
                    } catch (RuntimeException e2) {
                        runtimeException = e2;
                        i = iCompile2;
                        try {
                            GLES20.glDeleteProgram(iGlCreateProgram);
                            throw runtimeException;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        i = iCompile2;
                        if (i != 0) {
                        }
                        if (iCompile == 0) {
                        }
                    }
                }
                return iGlCreateProgram;
            } catch (RuntimeException e3) {
                runtimeException = e3;
                iCompile = 0;
                GLES20.glDeleteProgram(iGlCreateProgram);
                throw runtimeException;
            } catch (Throwable th5) {
                th = th5;
                iCompile = 0;
            }
        }
        if (i != 0) {
            GLES20.glDeleteShader(i);
        }
        if (iCompile == 0) {
            GLES20.glDeleteShader(iCompile);
            throw th;
        }
        throw th;
    }

    private static int compile(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        String strGlGetShaderInfoLog = GLES20.glGetShaderInfoLog(iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        Segment$$ExternalSyntheticBUOutline1.m973m(strGlGetShaderInfoLog);
        return 0;
    }

    private static AtomicFile cacheFile(Context context, String str, String str2, String str3, String str4, String str5) {
        String strGlGetString = GLES20.glGetString(7938);
        if (strGlGetString != null && strGlGetString.startsWith("OpenGL ES 3.")) {
            int[] iArr = new int[1];
            GLES20.glGetIntegerv(34814, iArr, 0);
            if (iArr[0] == 0) {
                return null;
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                String[] strArr = {"gl-program-v1", str, str2, str3, str4, str5, GLES20.glGetString(7936), GLES20.glGetString(7937), GLES20.glGetString(7938), GLES20.glGetString(35724)};
                for (int i = 0; i < 10; i++) {
                    messageDigest.update(strArr[i].getBytes(StandardCharsets.UTF_8));
                    messageDigest.update((byte) 0);
                }
                StringBuilder sb = new StringBuilder();
                for (byte b2 : messageDigest.digest()) {
                    sb.append(Character.forDigit((b2 >> 4) & 15, 16));
                    sb.append(Character.forDigit(b2 & 15, 16));
                }
                File file = new File(context.getCodeCacheDir(), "gl-programs");
                if (!file.isDirectory() && !file.mkdirs()) {
                    return null;
                }
                return new AtomicFile(new File(file, ((Object) sb) + ".bin"));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static boolean restore(int i, AtomicFile atomicFile) {
        DataInputStream dataInputStream;
        if (!atomicFile.getBaseFile().isFile()) {
            return false;
        }
        try {
            dataInputStream = new DataInputStream(atomicFile.openRead());
            try {
            } finally {
            }
        } catch (Exception unused) {
        }
        if (dataInputStream.readInt() != 1145524273) {
            throw new IllegalStateException("Invalid program cache");
        }
        int i2 = dataInputStream.readInt();
        int i3 = dataInputStream.readInt();
        if (i3 <= 0 || i3 > 16777216) {
            throw new IllegalStateException("Invalid binary length");
        }
        int[] iArr = new int[1];
        byte[] bArr = new byte[i3];
        dataInputStream.readFully(bArr);
        if (dataInputStream.read() != -1) {
            throw new IllegalStateException("Invalid binary size");
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder());
        byteBufferOrder.put(bArr).position(0);
        while (GLES20.glGetError() != 0) {
        }
        GLES30.glProgramBinary(i, i2, byteBufferOrder, i3);
        int iGlGetError = GLES20.glGetError();
        GLES20.glGetProgramiv(i, 35714, iArr, 0);
        if (iGlGetError == 0 && iArr[0] != 0) {
            dataInputStream.close();
            return true;
        }
        dataInputStream.close();
        atomicFile.delete();
        return false;
    }

    private static void save(int i, AtomicFile atomicFile) {
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            GLES20.glGetProgramiv(i, 34625, iArr, 0);
            int i2 = iArr[0];
            if (i2 > 0 && i2 <= 16777216) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
                GLES30.glGetProgramBinary(i, iArr[0], iArr, 0, iArr2, 0, byteBufferOrder);
                int i3 = iArr[0];
                if (i3 <= 0) {
                    return;
                }
                byte[] bArr = new byte[i3];
                byteBufferOrder.position(0);
                byteBufferOrder.get(bArr);
                fileOutputStreamStartWrite = atomicFile.startWrite();
                DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStreamStartWrite);
                dataOutputStream.writeInt(1145524273);
                dataOutputStream.writeInt(iArr2[0]);
                dataOutputStream.writeInt(i3);
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                atomicFile.finishWrite(fileOutputStreamStartWrite);
            }
        } catch (Exception unused) {
            if (fileOutputStreamStartWrite != null) {
                atomicFile.failWrite(fileOutputStreamStartWrite);
            }
        }
    }
}
