package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class NativeLoader {
    private static final String LIB_NAME = "tmessages.49";
    private static final String LIB_SO_NAME = "libtmessages.49.so";
    private static final int LIB_VERSION = 49;
    private static final String LOCALE_LIB_SO_NAME = "libtmessages.49loc.so";
    public static StringBuilder log = new StringBuilder();
    private static volatile boolean nativeLoaded = false;

    private static File getNativeLibraryDir(Context context) {
        File file;
        if (context != null) {
            try {
                file = new File((String) ApplicationInfo.class.getField("nativeLibraryDir").get(context.getApplicationInfo()));
            } catch (Throwable th) {
                th.printStackTrace();
                file = null;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File(context.getApplicationInfo().dataDir, "lib");
        }
        if (file.isDirectory()) {
            return file;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r2v8 */
    @SuppressLint({"UnsafeDynamicallyLoadedCode", "SetWorldReadable"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean loadFromZip(Context context, File file, File file2, String str) throws Throwable {
        ?? r2;
        ZipFile zipFile;
        int length;
        try {
            File[] fileArrListFiles = file.listFiles();
            length = fileArrListFiles.length;
            for (File file3 : fileArrListFiles) {
                file3.delete();
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        InputStream inputStream = null;
        try {
            try {
                zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
                try {
                    ZipEntry entry = zipFile.getEntry("lib/" + str + "/" + LIB_SO_NAME);
                    if (entry == null) {
                        throw new Exception("Unable to find file in apk:lib/" + str + "/" + LIB_NAME);
                    }
                    InputStream inputStream2 = zipFile.getInputStream(entry);
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream2.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        Thread.yield();
                        fileOutputStream.write(bArr, 0, i);
                    }
                    fileOutputStream.close();
                    file2.setReadable(true, false);
                    file2.setExecutable(true, false);
                    file2.setWritable(true);
                    try {
                        System.load(file2.getAbsolutePath());
                        nativeLoaded = true;
                    } catch (Error e2) {
                        FileLog.m992e(e2);
                    }
                    try {
                        inputStream2.close();
                    } catch (Exception e3) {
                        FileLog.m992e(e3);
                    }
                    try {
                        zipFile.close();
                    } catch (Exception e4) {
                        FileLog.m992e(e4);
                    }
                    return true;
                } catch (Exception e5) {
                    e = e5;
                    FileLog.m992e(e);
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (Exception e6) {
                            FileLog.m992e(e6);
                        }
                    }
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (Exception e7) {
                            FileLog.m992e(e7);
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                r2 = length;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e8) {
                        FileLog.m992e(e8);
                    }
                }
                if (r2 == 0) {
                    try {
                        r2.close();
                        throw th;
                    } catch (Exception e9) {
                        FileLog.m992e(e9);
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Exception e10) {
            e = e10;
            zipFile = null;
        } catch (Throwable th2) {
            th = th2;
            r2 = 0;
            if (0 != 0) {
            }
            if (r2 == 0) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0086 A[Catch: all -> 0x0021, TryCatch #1 {all -> 0x0021, blocks: (B:9:0x000e, B:11:0x001a, B:19:0x0028, B:21:0x005b, B:23:0x005f, B:26:0x0067, B:30:0x0082, B:32:0x0086, B:33:0x00ab, B:29:0x0072), top: B:50:0x000e, outer: #4, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2 A[RETURN] */
    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void initNativeLibs(Context context) {
        if (nativeLoaded) {
            return;
        }
        try {
            try {
                System.loadLibrary(LIB_NAME);
                nativeLoaded = true;
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("loaded normal lib");
                }
            } catch (Error e) {
                FileLog.m992e(e);
                StringBuilder sb = log;
                sb.append("128: ");
                sb.append(e);
                sb.append("\n");
                String abiFolder = getAbiFolder();
                File file = new File(context.getFilesDir(), "lib");
                file.mkdirs();
                File file2 = new File(file, LOCALE_LIB_SO_NAME);
                if (file2.exists()) {
                    try {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("Load local lib");
                        }
                        System.load(file2.getAbsolutePath());
                        nativeLoaded = true;
                        return;
                    } catch (Error e2) {
                        StringBuilder sb2 = log;
                        sb2.append(e2);
                        sb2.append("\n");
                        FileLog.m992e(e2);
                        file2.delete();
                        if (BuildVars.LOGS_ENABLED) {
                        }
                        if (loadFromZip(context, file, file2, abiFolder)) {
                        }
                        System.loadLibrary(LIB_NAME);
                        nativeLoaded = true;
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m990e("Library not found, arch = " + abiFolder);
                    StringBuilder sb3 = log;
                    sb3.append("Library not found, arch = " + abiFolder);
                    sb3.append("\n");
                }
                if (loadFromZip(context, file, file2, abiFolder)) {
                    return;
                }
                try {
                    System.loadLibrary(LIB_NAME);
                    nativeLoaded = true;
                } catch (Error e3) {
                    FileLog.m992e(e3);
                    StringBuilder sb4 = log;
                    sb4.append("184: ");
                    sb4.append(e3);
                    sb4.append("\n");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            StringBuilder sb5 = log;
            sb5.append("176: ");
            sb5.append(th);
            sb5.append("\n");
            System.loadLibrary(LIB_NAME);
            nativeLoaded = true;
        }
    }

    public static String getAbiFolder() {
        String str;
        String str2 = "mips";
        String str3 = "armeabi";
        try {
            str = Build.CPU_ABI;
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        if (str.equalsIgnoreCase("x86_64")) {
            str2 = "x86_64";
        } else if (str.equalsIgnoreCase("arm64-v8a")) {
            str2 = "arm64-v8a";
        } else {
            if (!str.equalsIgnoreCase("armeabi-v7a")) {
                if (str.equalsIgnoreCase("armeabi")) {
                    str2 = "armeabi";
                } else if (str.equalsIgnoreCase("x86")) {
                    str2 = "x86";
                } else if (!str.equalsIgnoreCase("mips")) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m990e("Unsupported arch: " + str);
                    }
                    str2 = "armeabi";
                }
                String property = System.getProperty("os.arch");
                return (property == null && property.contains("686")) ? "x86" : str3;
            }
            str2 = "armeabi-v7a";
        }
        str3 = str2;
        String property2 = System.getProperty("os.arch");
        if (property2 == null) {
        }
    }

    public static boolean loaded() {
        return nativeLoaded;
    }
}
