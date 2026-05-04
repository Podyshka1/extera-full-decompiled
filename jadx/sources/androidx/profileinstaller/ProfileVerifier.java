package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import androidx.concurrent.futures.ResolvableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.mvel2.asm.Opcodes;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class ProfileVerifier {
    private static final ResolvableFuture sFuture = ResolvableFuture.create();
    private static final Object SYNC_OBJ = new Object();
    private static CompilationStatus sCompilationStatus = null;

    /* JADX WARN: Removed duplicated region for block: B:110:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static CompilationStatus writeProfileVerification(Context context, boolean z) {
        int i;
        boolean z2;
        int i2;
        boolean z3;
        long length;
        boolean z4;
        File file;
        Cache fromFile;
        Cache cache;
        int i3;
        AssetFileDescriptor assetFileDescriptorOpenFd;
        CompilationStatus compilationStatus;
        if (!z && (compilationStatus = sCompilationStatus) != null) {
            return compilationStatus;
        }
        synchronized (SYNC_OBJ) {
            if (!z) {
                CompilationStatus compilationStatus2 = sCompilationStatus;
                if (compilationStatus2 != null) {
                    return compilationStatus2;
                }
                i = 0;
                try {
                    assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                    try {
                        z2 = assetFileDescriptorOpenFd.getLength() <= 0;
                        assetFileDescriptorOpenFd.close();
                    } finally {
                    }
                } catch (IOException unused) {
                    z2 = false;
                }
                i2 = Build.VERSION.SDK_INT;
                if (i2 >= 28 && i2 != 30) {
                    File file2 = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length2 = file2.length();
                    z3 = !file2.exists() && length2 > 0;
                    File file3 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    length = file3.length();
                    z4 = !file3.exists() && length > 0;
                    try {
                        long packageLastUpdateTime = getPackageLastUpdateTime(context);
                        file = new File(context.getFilesDir(), "profileInstalled");
                        if (file.exists()) {
                            fromFile = null;
                        } else {
                            try {
                                fromFile = Cache.readFromFile(file);
                            } catch (IOException unused2) {
                                return setCompilationStatus(131072, z3, z4, z2);
                            }
                        }
                        if (fromFile == null && fromFile.mPackageLastUpdateTime == packageLastUpdateTime && (i3 = fromFile.mResultCode) != 2) {
                            i = i3;
                        } else if (z2) {
                            i = Opcodes.ASM5;
                        } else if (z3) {
                            i = 1;
                        } else if (z4) {
                            i = 2;
                        }
                        if (z && z4 && i != 1) {
                            i = 2;
                        }
                        if (fromFile != null && fromFile.mResultCode == 2 && i == 1 && length2 < fromFile.mInstalledCurrentProfileSize) {
                            i = 3;
                        }
                        int i4 = i;
                        cache = new Cache(1, i4, packageLastUpdateTime, length);
                        if (fromFile != null || !fromFile.equals(cache)) {
                            try {
                                cache.writeOnFile(file);
                            } catch (IOException unused3) {
                                i4 = 196608;
                            }
                        }
                        return setCompilationStatus(i4, z3, z4, z2);
                    } catch (PackageManager.NameNotFoundException unused4) {
                        return setCompilationStatus(65536, z3, z4, z2);
                    }
                }
                return setCompilationStatus(262144, false, false, z2);
            }
            i = 0;
            assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
            if (assetFileDescriptorOpenFd.getLength() <= 0) {
            }
            assetFileDescriptorOpenFd.close();
            i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                File file22 = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                long length22 = file22.length();
                if (file22.exists()) {
                    File file32 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    length = file32.length();
                    if (file32.exists()) {
                        long packageLastUpdateTime2 = getPackageLastUpdateTime(context);
                        file = new File(context.getFilesDir(), "profileInstalled");
                        if (file.exists()) {
                        }
                        if (fromFile == null) {
                            if (z2) {
                            }
                        }
                        if (z) {
                            i = 2;
                        }
                        if (fromFile != null) {
                            i = 3;
                        }
                        int i42 = i;
                        cache = new Cache(1, i42, packageLastUpdateTime2, length);
                        if (fromFile != null) {
                            cache.writeOnFile(file);
                        }
                        return setCompilationStatus(i42, z3, z4, z2);
                    }
                }
            }
            return setCompilationStatus(262144, false, false, z2);
        }
    }

    private static CompilationStatus setCompilationStatus(int i, boolean z, boolean z2, boolean z3) {
        CompilationStatus compilationStatus = new CompilationStatus(i, z, z2, z3);
        sCompilationStatus = compilationStatus;
        sFuture.set(compilationStatus);
        return sCompilationStatus;
    }

    private static long getPackageLastUpdateTime(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getPackageInfo(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    static class Cache {
        final long mInstalledCurrentProfileSize;
        final long mPackageLastUpdateTime;
        final int mResultCode;
        final int mSchema;

        Cache(int i, int i2, long j, long j2) {
            this.mSchema = i;
            this.mResultCode = i2;
            this.mPackageLastUpdateTime = j;
            this.mInstalledCurrentProfileSize = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Cache)) {
                Cache cache = (Cache) obj;
                if (this.mResultCode == cache.mResultCode && this.mPackageLastUpdateTime == cache.mPackageLastUpdateTime && this.mSchema == cache.mSchema && this.mInstalledCurrentProfileSize == cache.mInstalledCurrentProfileSize) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mResultCode), Long.valueOf(this.mPackageLastUpdateTime), Integer.valueOf(this.mSchema), Long.valueOf(this.mInstalledCurrentProfileSize));
        }

        void writeOnFile(File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.mSchema);
                dataOutputStream.writeInt(this.mResultCode);
                dataOutputStream.writeLong(this.mPackageLastUpdateTime);
                dataOutputStream.writeLong(this.mInstalledCurrentProfileSize);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        static Cache readFromFile(File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return cache;
            } finally {
            }
        }
    }

    public static class CompilationStatus {
        private final boolean mHasCurrentProfile;
        private final boolean mHasEmbeddedProfile;
        private final boolean mHasReferenceProfile;
        final int mResultCode;

        CompilationStatus(int i, boolean z, boolean z2, boolean z3) {
            this.mResultCode = i;
            this.mHasCurrentProfile = z2;
            this.mHasReferenceProfile = z;
            this.mHasEmbeddedProfile = z3;
        }
    }

    private static class Api33Impl {
        static PackageInfo getPackageInfo(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }
}
