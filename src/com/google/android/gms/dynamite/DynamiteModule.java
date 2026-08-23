package com.google.android.gms.dynamite;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class DynamiteModule {
    private static Boolean zzb = null;
    private static String zzc = null;
    private static boolean zzd = false;
    private static int zze = -1;
    private static Boolean zzf;
    private static zzp zzk;
    private static zzq zzl;
    private final Context zzj;
    private static final ThreadLocal zzg = new ThreadLocal();
    private static final ThreadLocal zzh = new zzd();
    private static final VersionPolicy.IVersions zzi = new zze();
    public static final VersionPolicy PREFER_REMOTE = new zzf();
    public static final VersionPolicy PREFER_LOCAL = new zzg();
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzh();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzi();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzj();
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzk();
    public static final VersionPolicy zza = new zzl();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, zzo zzoVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, zzo zzoVar) {
            super(str, th);
        }
    }

    public interface VersionPolicy {

        public interface IVersions {
            int zza(Context context, String str);

            int zzb(Context context, String str, boolean z);
        }

        public static class SelectionResult {
            public int localVersion = 0;
            public int remoteVersion = 0;
            public int selection = 0;
        }

        SelectionResult selectModule(Context context, String str, IVersions iVersions);
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzj = context;
    }

    public static int getLocalVersion(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e.getMessage())));
            return 0;
        }
    }

    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0089 A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #7 {all -> 0x007d, blocks: (B:7:0x0040, B:11:0x0077, B:18:0x0083, B:21:0x0089, B:24:0x0091, B:103:0x01f7, B:104:0x0202, B:107:0x0205, B:108:0x0206, B:109:0x020e, B:126:0x0265, B:127:0x027c, B:110:0x020f, B:112:0x022d, B:114:0x023c, B:124:0x025c, B:125:0x0264, B:128:0x027d, B:129:0x02ad), top: B:149:0x0040, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DynamiteModule load(Context context, VersionPolicy versionPolicy, String str) throws Throwable {
        long j;
        DynamiteModule dynamiteModuleZzc;
        Boolean bool;
        IObjectWrapper iObjectWrapperZzh;
        DynamiteModule dynamiteModule;
        zzq zzqVar;
        boolean z;
        IObjectWrapper iObjectWrapperZze;
        Cursor cursor;
        Context applicationContext = context.getApplicationContext();
        zzo zzoVar = null;
        if (applicationContext == null) {
            throw new LoadingException("null application Context", null);
        }
        ThreadLocal threadLocal = zzg;
        zzm zzmVar = (zzm) threadLocal.get();
        zzm zzmVar2 = new zzm(null);
        threadLocal.set(zzmVar2);
        ThreadLocal threadLocal2 = zzh;
        Long l = (Long) threadLocal2.get();
        long jLongValue = l.longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.uptimeMillis()));
            VersionPolicy.SelectionResult selectionResultSelectModule = versionPolicy.selectModule(context, str, zzi);
            int i = selectionResultSelectModule.localVersion;
            j = 0;
            try {
                Log.i("DynamiteModule", "Considering local module " + str + ":" + i + " and remote module " + str + ":" + selectionResultSelectModule.remoteVersion);
                int i2 = selectionResultSelectModule.selection;
                if (i2 != 0) {
                    if (i2 != -1) {
                        if (i2 == 1 || selectionResultSelectModule.remoteVersion != 0) {
                            if (i2 != -1) {
                                dynamiteModuleZzc = zzc(applicationContext, str);
                            } else {
                                if (i2 != 1) {
                                    throw new LoadingException("VersionPolicy returned invalid code:" + i2, null);
                                }
                                try {
                                    int i3 = selectionResultSelectModule.remoteVersion;
                                    try {
                                        synchronized (DynamiteModule.class) {
                                            if (!zzf(context)) {
                                                throw new LoadingException("Remote loading disabled", null);
                                            }
                                            bool = zzb;
                                        }
                                        if (bool == null) {
                                            throw new LoadingException("Failed to determine which loading route to use.", null);
                                        }
                                        if (bool.booleanValue()) {
                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i3);
                                            synchronized (DynamiteModule.class) {
                                                zzqVar = zzl;
                                            }
                                            if (zzqVar == null) {
                                                throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                            }
                                            zzm zzmVar3 = (zzm) threadLocal.get();
                                            if (zzmVar3 == null || zzmVar3.zza == null) {
                                                throw new LoadingException("No result cursor", null);
                                            }
                                            Context applicationContext2 = context.getApplicationContext();
                                            Cursor cursor2 = zzmVar3.zza;
                                            ObjectWrapper.wrap(null);
                                            synchronized (DynamiteModule.class) {
                                                z = zze >= 2;
                                            }
                                            if (z) {
                                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                iObjectWrapperZze = zzqVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor2));
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                iObjectWrapperZze = zzqVar.zze(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor2));
                                            }
                                            Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapperZze);
                                            if (context2 == null) {
                                                throw new LoadingException("Failed to get module context", zzoVar);
                                            }
                                            dynamiteModule = new DynamiteModule(context2);
                                        } else {
                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i3);
                                            zzp zzpVarZzg = zzg(context);
                                            if (zzpVarZzg == null) {
                                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                            }
                                            int iZze = zzpVarZzg.zze();
                                            if (iZze >= 3) {
                                                zzm zzmVar4 = (zzm) threadLocal.get();
                                                if (zzmVar4 == null) {
                                                    throw new LoadingException("No cached result cursor holder", null);
                                                }
                                                iObjectWrapperZzh = zzpVarZzg.zzi(ObjectWrapper.wrap(context), str, i3, ObjectWrapper.wrap(zzmVar4.zza));
                                            } else if (iZze == 2) {
                                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                iObjectWrapperZzh = zzpVarZzg.zzj(ObjectWrapper.wrap(context), str, i3);
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                iObjectWrapperZzh = zzpVarZzg.zzh(ObjectWrapper.wrap(context), str, i3);
                                            }
                                            Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzh);
                                            if (objUnwrap == null) {
                                                throw new LoadingException("Failed to load remote module.", null);
                                            }
                                            dynamiteModule = new DynamiteModule((Context) objUnwrap);
                                        }
                                        dynamiteModuleZzc = dynamiteModule;
                                    } catch (RemoteException e) {
                                        throw new LoadingException("Failed to load remote module.", e, null);
                                    } catch (LoadingException e2) {
                                        throw e2;
                                    } catch (Throwable th) {
                                        CrashUtils.addDynamiteErrorToDropBox(context, th);
                                        throw new LoadingException("Failed to load remote module.", th, null);
                                    }
                                } catch (LoadingException e3) {
                                    Log.w("DynamiteModule", "Failed to load remote module: " + e3.getMessage());
                                    int i4 = selectionResultSelectModule.localVersion;
                                    if (i4 == 0 || versionPolicy.selectModule(context, str, new zzn(i4, 0)).selection != -1) {
                                        throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                                    }
                                    dynamiteModuleZzc = zzc(applicationContext, str);
                                }
                            }
                            if (jLongValue != 0) {
                                zzh.remove();
                            } else {
                                zzh.set(l);
                            }
                            cursor = zzmVar2.zza;
                            if (cursor != null) {
                                cursor.close();
                            }
                            zzg.set(zzmVar);
                            return dynamiteModuleZzc;
                        }
                    } else if (selectionResultSelectModule.localVersion != 0) {
                        i2 = -1;
                        if (i2 == 1) {
                        }
                        if (i2 != -1) {
                        }
                        if (jLongValue != 0) {
                        }
                        cursor = zzmVar2.zza;
                        if (cursor != null) {
                        }
                        zzg.set(zzmVar);
                        return dynamiteModuleZzc;
                    }
                }
                throw new LoadingException("No acceptable module " + str + " found. Local version is " + selectionResultSelectModule.localVersion + " and remote version is " + selectionResultSelectModule.remoteVersion + ".", null);
            } catch (Throwable th2) {
                th = th2;
                if (jLongValue == j) {
                    zzh.remove();
                } else {
                    zzh.set(l);
                }
                Cursor cursor3 = zzmVar2.zza;
                if (cursor3 != null) {
                    cursor3.close();
                }
                zzg.set(zzmVar);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x017e A[Catch: all -> 0x00ed, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00ed, blocks: (B:3:0x0002, B:64:0x00e2, B:66:0x00e8, B:74:0x010e, B:102:0x0170, B:106:0x017e, B:124:0x01d3, B:125:0x01d6, B:119:0x01ca, B:72:0x00f3, B:127:0x01d8, B:4:0x0003, B:7:0x0009, B:8:0x0026, B:62:0x00df, B:21:0x004a, B:45:0x00a2, B:48:0x00a5, B:55:0x00bd, B:63:0x00e1, B:61:0x00c3), top: B:134:0x0002, inners: #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b1 A[Catch: all -> 0x0037, TryCatch #11 {, blocks: (B:9:0x0027, B:11:0x0033, B:52:0x00ba, B:16:0x003c, B:18:0x0043, B:20:0x0049, B:25:0x0050, B:27:0x0054, B:31:0x005e, B:33:0x0066, B:36:0x006d, B:43:0x0099, B:44:0x00a1, B:39:0x0074, B:41:0x007a, B:42:0x008b, B:47:0x00a4, B:50:0x00a7, B:51:0x00b1, B:17:0x003f), top: B:143:0x0027, inners: #12 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x01c8 -> B:135:0x01cd). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x01ca -> B:135:0x01cd). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(Context context, String str, boolean z) {
        Field declaredField;
        Throwable th;
        RemoteException remoteException;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
                int iZzf = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e.toString());
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                zzd(classLoader);
                            } catch (LoadingException unused) {
                            }
                            bool = Boolean.TRUE;
                        } else {
                            if (!zzf(context)) {
                                return 0;
                            }
                            if (!zzd) {
                                Boolean bool2 = Boolean.TRUE;
                                if (bool2.equals(null)) {
                                    declaredField.set(null, ClassLoader.getSystemClassLoader());
                                    bool = Boolean.FALSE;
                                } else {
                                    try {
                                        int iZzb = zzb(context, str, z, true);
                                        String str2 = zzc;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader classLoaderZza = zzb.zza();
                                            if (classLoaderZza == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    DynamiteModule$$ExternalSyntheticApiModelOutline1.m351m();
                                                    String str3 = zzc;
                                                    Preconditions.checkNotNull(str3);
                                                    classLoaderZza = DynamiteModule$$ExternalSyntheticApiModelOutline0.m350m(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = zzc;
                                                    Preconditions.checkNotNull(str4);
                                                    classLoaderZza = new zzc(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            zzd(classLoaderZza);
                                            declaredField.set(null, classLoaderZza);
                                            zzb = bool2;
                                            return iZzb;
                                        }
                                        return iZzb;
                                    } catch (LoadingException unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            Log.w("DynamiteModule", "Failed to load module via V2: " + e.toString());
                            bool = Boolean.FALSE;
                            zzb = bool;
                        }
                        zzb = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return zzb(context, str, z, false);
                    } catch (LoadingException e2) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e2.getMessage());
                        return 0;
                    }
                }
                zzp zzpVarZzg = zzg(context);
                try {
                    if (zzpVarZzg != null) {
                        try {
                            int iZze = zzpVarZzg.zze();
                            if (iZze >= 3) {
                                zzm zzmVar = (zzm) zzg.get();
                                if (zzmVar == null || (cursor = zzmVar.zza) == null) {
                                    Cursor cursor2 = (Cursor) ObjectWrapper.unwrap(zzpVarZzg.zzk(ObjectWrapper.wrap(context), str, z, ((Long) zzh.get()).longValue()));
                                    if (cursor2 != null) {
                                        try {
                                            if (cursor2.moveToFirst()) {
                                                int i = cursor2.getInt(0);
                                                cursor = (i <= 0 || !zze(cursor2)) ? cursor2 : null;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                iZzf = i;
                                            } else {
                                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                            }
                                        } catch (RemoteException e3) {
                                            remoteException = e3;
                                            cursor = cursor2;
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + remoteException.getMessage());
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor = cursor2;
                                            if (cursor == null) {
                                                throw th;
                                            }
                                            cursor.close();
                                            throw th;
                                        }
                                    } else {
                                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                        if (cursor2 != null) {
                                        }
                                    }
                                } else {
                                    iZzf = cursor.getInt(0);
                                }
                            } else if (iZze == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                iZzf = zzpVarZzg.zzg(ObjectWrapper.wrap(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                iZzf = zzpVarZzg.zzf(ObjectWrapper.wrap(context), str, z);
                            }
                        } catch (RemoteException e4) {
                            remoteException = e4;
                        }
                    }
                    return iZzf;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0146: MOVE (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:93:0x0146 */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int zzb(Context context, String str, boolean z, boolean z2) throws Throwable {
        Throwable th;
        Exception exc;
        Cursor cursor;
        Cursor cursorQuery;
        MatrixCursor matrixCursor;
        Cursor cursor2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        try {
            try {
                boolean z3 = true;
                Uri uriBuild = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartUptime", String.valueOf(((Long) zzh.get()).longValue())).build();
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uriBuild);
                boolean z4 = false;
                if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                    matrixCursor = null;
                    if (matrixCursor != null) {
                        try {
                            if (matrixCursor.moveToFirst()) {
                                int i = matrixCursor.getInt(0);
                                if (i > 0) {
                                    synchronized (DynamiteModule.class) {
                                        try {
                                            zzc = matrixCursor.getString(2);
                                            int columnIndex = matrixCursor.getColumnIndex("loaderVersion");
                                            if (columnIndex >= 0) {
                                                zze = matrixCursor.getInt(columnIndex);
                                            }
                                            int columnIndex2 = matrixCursor.getColumnIndex("disableStandaloneDynamiteLoader2");
                                            if (columnIndex2 >= 0) {
                                                if (matrixCursor.getInt(columnIndex2) == 0) {
                                                    z3 = false;
                                                }
                                                zzd = z3;
                                                z4 = z3;
                                            }
                                        } finally {
                                        }
                                    }
                                    if (zze(matrixCursor)) {
                                        matrixCursor = null;
                                    }
                                }
                                if (z2 && z4) {
                                    throw new LoadingException("forcing fallback to container DynamiteLoader impl", objArr2 == true ? 1 : 0);
                                }
                                if (matrixCursor != null) {
                                    matrixCursor.close();
                                }
                                return i;
                            }
                        } catch (Exception e) {
                            exc = e;
                        }
                    }
                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                    throw new LoadingException("Failed to connect to dynamite module ContentResolver.", objArr3 == true ? 1 : 0);
                }
                try {
                    cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uriBuild, null, null, null, null);
                } catch (RemoteException unused) {
                } catch (Throwable th2) {
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    throw th2;
                }
                if (cursorQuery != null) {
                    try {
                        int count = cursorQuery.getCount();
                        int columnCount = cursorQuery.getColumnCount();
                        matrixCursor = new MatrixCursor(cursorQuery.getColumnNames(), count);
                        for (int i2 = 0; i2 < count; i2++) {
                            if (!cursorQuery.moveToPosition(i2)) {
                                throw new RemoteException("Cursor read incomplete (ContentProvider dead?)");
                            }
                            Object[] objArr4 = new Object[columnCount];
                            for (int i3 = 0; i3 < columnCount; i3++) {
                                int type = cursorQuery.getType(i3);
                                if (type == 0) {
                                    objArr4[i3] = null;
                                } else if (type == 1) {
                                    objArr4[i3] = Long.valueOf(cursorQuery.getLong(i3));
                                } else if (type == 2) {
                                    objArr4[i3] = Double.valueOf(cursorQuery.getDouble(i3));
                                } else if (type == 3) {
                                    objArr4[i3] = cursorQuery.getString(i3);
                                } else {
                                    if (type != 4) {
                                        throw new RemoteException("Unknown column type");
                                    }
                                    objArr4[i3] = cursorQuery.getBlob(i3);
                                }
                            }
                            matrixCursor.addRow(objArr4);
                        }
                        cursorQuery.close();
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        if (matrixCursor != null) {
                        }
                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                        throw new LoadingException("Failed to connect to dynamite module ContentResolver.", objArr3 == true ? 1 : 0);
                    } catch (Throwable th3) {
                        try {
                            cursorQuery.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                }
                contentProviderClientAcquireUnstableContentProviderClient.release();
                matrixCursor = null;
                if (matrixCursor != null) {
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", objArr3 == true ? 1 : 0);
            } catch (Throwable th5) {
                th = th5;
                cursor2 = cursor;
                if (cursor2 != null) {
                    throw th;
                }
                cursor2.close();
                throw th;
            }
        } catch (Exception e2) {
            exc = e2;
        } catch (Throwable th6) {
            th = th6;
            if (cursor2 != null) {
            }
        }
        if (exc instanceof LoadingException) {
            throw exc;
        }
        throw new LoadingException("V2 version check failed: " + exc.getMessage(), exc, objArr == true ? 1 : 0);
    }

    private static DynamiteModule zzc(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    private static void zzd(ClassLoader classLoader) throws LoadingException {
        zzq zzqVar;
        zzo zzoVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder == null) {
                zzqVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder);
            }
            zzl = zzqVar;
        } catch (ClassNotFoundException e) {
            e = e;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzoVar);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzoVar);
        } catch (InstantiationException e3) {
            e = e3;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzoVar);
        } catch (NoSuchMethodException e4) {
            e = e4;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzoVar);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzoVar);
        }
    }

    private static boolean zze(Cursor cursor) {
        zzm zzmVar = (zzm) zzg.get();
        if (zzmVar == null || zzmVar.zza != null) {
            return false;
        }
        zzmVar.zza = cursor;
        return true;
    }

    private static boolean zzf(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(zzf)) {
            return true;
        }
        boolean z = false;
        if (zzf == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", true != PlatformVersion.isAtLeastQ() ? 0 : 268435456);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z = true;
            }
            zzf = Boolean.valueOf(z);
            if (z && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                zzd = true;
            }
        }
        if (!z) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z;
    }

    private static zzp zzg(Context context) {
        zzp zzpVar;
        synchronized (DynamiteModule.class) {
            zzp zzpVar2 = zzk;
            if (zzpVar2 != null) {
                return zzpVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzpVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzpVar = iInterfaceQueryLocalInterface instanceof zzp ? (zzp) iInterfaceQueryLocalInterface : new zzp(iBinder);
                }
                if (zzpVar != null) {
                    zzk = zzpVar;
                    return zzpVar;
                }
            } catch (Exception e) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e.getMessage());
            }
            return null;
        }
    }

    public Context getModuleContext() {
        return this.zzj;
    }

    public IBinder instantiate(String str) {
        try {
            return (IBinder) this.zzj.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e, null);
        }
    }
}
