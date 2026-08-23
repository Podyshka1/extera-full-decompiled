package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab {
    private static final ConcurrentHashMap zzde = new ConcurrentHashMap();
    private static final String[] zzdl = {"key", "value"};
    private final Uri uri;
    private final ContentResolver zzdf;
    private volatile Map zzdi;
    private final Object zzdh = new Object();
    private final Object zzdj = new Object();
    private final List zzdk = new ArrayList();
    private final ContentObserver zzdg = new zzac(this, null);

    private zzab(ContentResolver contentResolver, Uri uri) {
        this.zzdf = contentResolver;
        this.uri = uri;
    }

    public static zzab zza(ContentResolver contentResolver, Uri uri) {
        ConcurrentHashMap concurrentHashMap = zzde;
        zzab zzabVar = (zzab) concurrentHashMap.get(uri);
        if (zzabVar != null) {
            return zzabVar;
        }
        zzab zzabVar2 = new zzab(contentResolver, uri);
        zzab zzabVar3 = (zzab) concurrentHashMap.putIfAbsent(uri, zzabVar2);
        if (zzabVar3 != null) {
            return zzabVar3;
        }
        zzabVar2.zzdf.registerContentObserver(zzabVar2.uri, false, zzabVar2.zzdg);
        return zzabVar2;
    }

    private final Map zzi() {
        try {
            HashMap map = new HashMap();
            Cursor cursorQuery = this.zzdf.query(this.uri, zzdl, null, null, null);
            if (cursorQuery == null) {
                return map;
            }
            while (cursorQuery.moveToNext()) {
                try {
                    map.put(cursorQuery.getString(0), cursorQuery.getString(1));
                } finally {
                    cursorQuery.close();
                }
            }
            return map;
        } catch (SQLiteException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj() {
        synchronized (this.zzdj) {
            try {
                Iterator it = this.zzdk.iterator();
                if (it.hasNext()) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Map zzg() {
        Map mapZzi = zzae.zza("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? zzi() : this.zzdi;
        if (mapZzi == null) {
            synchronized (this.zzdh) {
                try {
                    mapZzi = this.zzdi;
                    if (mapZzi == null) {
                        mapZzi = zzi();
                        this.zzdi = mapZzi;
                    }
                } finally {
                }
            }
        }
        return mapZzi != null ? mapZzi : Collections.EMPTY_MAP;
    }

    public final void zzh() {
        synchronized (this.zzdh) {
            this.zzdi = null;
        }
    }
}
