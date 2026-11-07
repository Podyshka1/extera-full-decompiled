package com.google.android.recaptcha.internal;

import android.app.Application;
import android.database.Cursor;
import android.view.MotionEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbb {
    private final Application zza;
    private final CoroutineScope zzb;
    private final zzav zzc;
    private zzay zzd;
    private boolean zze;
    private final zzas zzf;

    public zzbb(Application application, CoroutineScope coroutineScope, zzav zzavVar) {
        this.zza = application;
        this.zzb = coroutineScope;
        this.zzc = zzavVar;
        zzas zzasVar = new zzas(zzavVar);
        this.zzf = zzasVar;
        application.registerActivityLifecycleCallbacks(zzasVar);
    }

    public static /* synthetic */ Unit zzf(zzbb zzbbVar, String str, MotionEvent motionEvent) {
        BuildersKt__Builders_commonKt.launch$default(zzbbVar.zzb, null, null, new zzba(zzbbVar, str, MotionEvent.obtain(motionEvent), null), 3, null);
        return Unit.INSTANCE;
    }

    public final zzay zza() {
        return this.zzd;
    }

    public final boolean zzb() {
        return this.zze;
    }

    public final void zzc(int i, long j) {
        if (this.zze) {
            return;
        }
        if (this.zzd == null) {
            this.zzd = new zzay(this.zza.getApplicationContext(), i, j, true, 0.2f);
        }
        this.zze = true;
        this.zzc.zzb(new Function2() { // from class: com.google.android.recaptcha.internal.zzaz
            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ Object invoke(Object obj, Object obj2) {
                return zzbb.zzf(this.zza, (String) obj, (MotionEvent) obj2);
            }
        });
    }

    public final Cursor zzd(String str, String[] strArr) {
        zzay zzayVar = this.zzd;
        if (zzayVar != null) {
            return zzayVar.zzc(str, strArr);
        }
        return null;
    }

    public final void zze() {
        if (this.zze) {
            this.zzc.zzb(null);
            this.zze = false;
            zzay zzayVar = this.zzd;
            if (zzayVar != null) {
                zzayVar.zzb();
            }
        }
    }
}
