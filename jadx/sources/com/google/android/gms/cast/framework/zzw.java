package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.internal.zzx;
import com.google.android.gms.cast.zzbt;
import com.google.android.gms.cast.zzbu;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzw extends zzaf {
    final /* synthetic */ CastSession zza;

    /* synthetic */ zzw(CastSession castSession, zzv zzvVar) {
        this.zza = castSession;
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zzb(int i) {
        CastSession.zzh(this.zza, i);
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zzc(final String str, final String str2) {
        CastSession castSession = this.zza;
        if (castSession.zzi == null || !castSession.zzi.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) this.zza.zzi;
        final zzbu zzbuVar = null;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall(str, str2, zzbuVar) { // from class: com.google.android.gms.cast.zzbd
            public final /* synthetic */ String zzb;
            public final /* synthetic */ String zzc;

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zzG(this.zzb, this.zzc, null, (zzx) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8407).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.cast.framework.zzu
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CastSession.zzi(this.zza.zza, "joinApplication", task);
            }
        });
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zzd(final String str, final LaunchOptions launchOptions) {
        CastSession castSession = this.zza;
        if (castSession.zzi == null || !castSession.zzi.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) this.zza.zzi;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzay
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzbtVar.zzH(str, launchOptions, (zzx) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8406).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.cast.framework.zzt
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CastSession.zzi(this.zza.zza, "launchApplication", task);
            }
        });
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zze(final String str) {
        CastSession castSession = this.zza;
        if (castSession.zzi == null || !castSession.zzi.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) this.zza.zzi;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbj
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzbtVar.zzN(str, (zzx) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8409).build());
    }
}
