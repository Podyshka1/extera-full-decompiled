package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.common.zzh;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
final class zzc {
    private final Map zza = DesugarCollections.synchronizedMap(new ArrayMap());
    private int zzb = 0;
    private Bundle zzc;

    zzc() {
    }

    final LifecycleCallback zzc(String str, Class cls) {
        return (LifecycleCallback) cls.cast(this.zza.get(str));
    }

    final void zzd(String str, LifecycleCallback lifecycleCallback) {
        if (this.zza.containsKey(str)) {
            throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
        }
        this.zza.put(str, lifecycleCallback);
        if (this.zzb > 0) {
            new zzh(Looper.getMainLooper()).post(new zzb(this, lifecycleCallback, str));
        }
    }

    final void zze(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    final void zzf(int i, int i2, Intent intent) {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onActivityResult(i, i2, intent);
        }
    }

    final void zzg(Bundle bundle) {
        this.zzb = 1;
        this.zzc = bundle;
        for (Map.Entry entry : this.zza.entrySet()) {
            ((LifecycleCallback) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    final void zzh() {
        this.zzb = 5;
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onDestroy();
        }
    }

    final void zzi() {
        this.zzb = 3;
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onResume();
        }
    }

    final void zzj(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.zza.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    final void zzk() {
        this.zzb = 2;
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStart();
        }
    }

    final void zzl() {
        this.zzb = 4;
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStop();
        }
    }
}
