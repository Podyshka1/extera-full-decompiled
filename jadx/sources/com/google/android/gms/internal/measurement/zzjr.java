package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzjv;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjr implements zzjv {
    private final ContentResolver zzc;
    private final Uri zzd;
    private final Runnable zze;
    private volatile Map zzi;
    private static final ConcurrentMap zzb = new ConcurrentHashMap();
    public static final String[] zza = {"key", "value"};
    private ContentObserver zzf = null;
    private volatile boolean zzg = true;
    private final Object zzh = new Object();
    private final List zzj = new ArrayList();

    private zzjr(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        Preconditions.checkNotNull(contentResolver);
        Preconditions.checkNotNull(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        this.zze = runnable;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002b A[PHI: r1
  0x002b: PHI (r1v3 com.google.android.gms.internal.measurement.zzjr) = (r1v2 com.google.android.gms.internal.measurement.zzjr), (r1v4 com.google.android.gms.internal.measurement.zzjr) binds: [B:6:0x001c, B:8:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzjr zza(final ContentResolver contentResolver, final Uri uri, final Runnable runnable) {
        zzjr zzjrVar;
        if (Build.VERSION.SDK_INT >= 24) {
            zzjrVar = (zzjr) ConcurrentMap$EL.computeIfAbsent(zzb, uri, new Function() { // from class: com.google.android.gms.internal.measurement.zzjq
                public /* synthetic */ Function andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final /* synthetic */ Object apply(Object obj) {
                    return zzjr.zzf(contentResolver, uri, runnable, (Uri) obj);
                }

                public /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            });
        } else {
            ConcurrentMap concurrentMap = zzb;
            zzjr zzjrVar2 = (zzjr) concurrentMap.get(uri);
            if (zzjrVar2 == null) {
                zzjrVar2 = new zzjr(contentResolver, uri, runnable);
                zzjrVar = (zzjr) concurrentMap.putIfAbsent(uri, zzjrVar2);
                if (zzjrVar == null) {
                    zzjrVar = zzjrVar2;
                }
            }
        }
        try {
            if (!zzjrVar.zzg) {
                return zzjrVar;
            }
            synchronized (zzjrVar) {
                try {
                    if (zzjrVar.zzg) {
                        zzjo zzjoVar = new zzjo(zzjrVar, null);
                        zzjrVar.zzc.registerContentObserver(zzjrVar.zzd, false, zzjoVar);
                        zzjrVar.zzf = zzjoVar;
                        zzjrVar.zzg = false;
                    }
                } finally {
                }
            }
            return zzjrVar;
        } catch (SecurityException unused) {
            return null;
        }
    }

    static void zzd() {
        Iterator it = zzb.values().iterator();
        while (it.hasNext()) {
            zzjr zzjrVar = (zzjr) it.next();
            synchronized (zzjrVar) {
                try {
                    if (zzjrVar.zzg) {
                        zzjrVar.zzg = false;
                    } else {
                        ContentObserver contentObserver = zzjrVar.zzf;
                        if (contentObserver != null) {
                            zzjrVar.zzc.unregisterContentObserver(contentObserver);
                            zzjrVar.zzf = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            it.remove();
        }
    }

    static /* synthetic */ zzjr zzf(ContentResolver contentResolver, Uri uri, Runnable runnable, Uri uri2) {
        return new zzjr(contentResolver, uri, runnable);
    }

    public final Map zzb() {
        Map map;
        Map map2 = this.zzi;
        if (map2 == null) {
            synchronized (this.zzh) {
                map2 = this.zzi;
                if (map2 == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map = (Map) zzjv.CC.zzh(new zzju() { // from class: com.google.android.gms.internal.measurement.zzjp
                                @Override // com.google.android.gms.internal.measurement.zzju
                                public final /* synthetic */ Object zza() {
                                    return this.zza.zzg();
                                }
                            });
                        } finally {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        }
                    } catch (SQLiteException | IllegalStateException | SecurityException e) {
                        Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e);
                        map = Collections.EMPTY_MAP;
                    }
                    this.zzi = map;
                    map2 = map;
                }
            }
        }
        return map2 != null ? map2 : Collections.EMPTY_MAP;
    }

    public final void zzc() {
        synchronized (this.zzh) {
            this.zzi = null;
            this.zze.run();
        }
        synchronized (this) {
            try {
                Iterator it = this.zzj.iterator();
                if (it.hasNext()) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjv
    public final /* bridge */ /* synthetic */ Object zze(String str) {
        return (String) zzb().get(str);
    }

    final /* synthetic */ Map zzg() {
        ContentResolver contentResolver = this.zzc;
        Uri uri = this.zzd;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.EMPTY_MAP;
            }
            Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uri, zza, null, null, null);
            try {
                if (cursorQuery == null) {
                    Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                    return Collections.EMPTY_MAP;
                }
                int count = cursorQuery.getCount();
                if (count == 0) {
                    Map map = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map;
                }
                Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
                while (cursorQuery.moveToNext()) {
                    arrayMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                }
                if (cursorQuery.isAfterLast()) {
                    cursorQuery.close();
                    return arrayMap;
                }
                Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                Map map2 = Collections.EMPTY_MAP;
                cursorQuery.close();
                return map2;
            } finally {
            }
        } catch (RemoteException e) {
            Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e);
            return Collections.EMPTY_MAP;
        } finally {
            contentProviderClientAcquireUnstableContentProviderClient.release();
        }
    }
}
