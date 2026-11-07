package com.google.android.gms.wearable;

import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.wearable.internal.zzao;
import com.google.android.gms.wearable.internal.zzbf;
import com.google.android.gms.wearable.internal.zzev;
import com.google.android.gms.wearable.internal.zzez;
import com.google.android.gms.wearable.internal.zzfx;
import com.google.android.gms.wearable.internal.zzgm;
import com.google.android.gms.wearable.internal.zzi;
import com.google.android.gms.wearable.internal.zziu;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class zzaa extends zzez {
    final /* synthetic */ WearableListenerService zza;
    private volatile int zzb = -1;

    public /* synthetic */ zzaa(WearableListenerService wearableListenerService, zzz zzzVar) {
        this.zza = wearableListenerService;
    }

    public static final /* synthetic */ void zzm(zzev zzevVar, Task task) {
        if (task.isSuccessful()) {
            zzo(zzevVar, true, (byte[]) task.getResult());
        } else {
            Log.e("WearableLS", "Failed to resolve future, sending null response", task.getException());
            zzo(zzevVar, false, null);
        }
    }

    private final boolean zzn(Runnable runnable, String str, Object obj) {
        if (Log.isLoggable("WearableLS", 3)) {
            Log.d("WearableLS", String.format("%s: %s %s", str, this.zza.zza.toString(), obj));
        }
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.zzb) {
            if ((!zziu.zza(this.zza).zzb("com.google.android.wearable.app.cn") || !UidVerifier.uidHasPackageName(this.zza, callingUid, "com.google.android.wearable.app.cn")) && !UidVerifier.isGooglePlayServicesUid(this.zza, callingUid)) {
                Log.e("WearableLS", "Caller is not GooglePlayServices; caller UID: " + callingUid);
                return false;
            }
            this.zzb = callingUid;
        }
        synchronized (this.zza.zzf) {
            try {
                WearableListenerService wearableListenerService = this.zza;
                if (wearableListenerService.zzg) {
                    return false;
                }
                wearableListenerService.zzb.post(runnable);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static final void zzo(zzev zzevVar, boolean z, byte[] bArr) {
        try {
            zzevVar.zzd(z, bArr);
        } catch (RemoteException e) {
            Log.e("WearableLS", "Failed to send a response back", e);
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzb(zzbf zzbfVar) {
        zzn(new zzy(this, zzbfVar), "onChannelEvent", zzbfVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzc(zzao zzaoVar) {
        zzn(new zzv(this, zzaoVar), "onConnectedCapabilityChanged", zzaoVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzd(List list) {
        zzn(new zzu(this, list), "onConnectedNodes", list);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zze(DataHolder dataHolder) {
        try {
            if (zzn(new zzq(this, dataHolder), "onDataItemChanged", String.valueOf(dataHolder) + ", rows=" + dataHolder.getCount())) {
            }
        } finally {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzf(zzi zziVar) {
        zzn(new zzx(this, zziVar), "onEntityUpdate", zziVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzg(zzfx zzfxVar) {
        zzn(new zzr(this, zzfxVar), "onMessageReceived", zzfxVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzh(com.google.android.gms.wearable.internal.zzl zzlVar) {
        zzn(new zzw(this, zzlVar), "onNotificationReceived", zzlVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzi(zzgm zzgmVar) {
        zzn(new zzs(this, zzgmVar), "onPeerConnected", zzgmVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzj(zzgm zzgmVar) {
        zzn(new zzt(this, zzgmVar), "onPeerDisconnected", zzgmVar);
    }

    public final /* synthetic */ void zzk(zzfx zzfxVar, final zzev zzevVar) {
        Task<byte[]> taskOnRequest = this.zza.onRequest(zzfxVar.getSourceNodeId(), zzfxVar.getPath(), zzfxVar.getData());
        final byte[] bArr = null;
        if (taskOnRequest == null) {
            zzo(zzevVar, false, null);
        } else {
            taskOnRequest.addOnCompleteListener(new OnCompleteListener(zzevVar, bArr) { // from class: com.google.android.gms.wearable.zzo
                public final /* synthetic */ zzev zzb;

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    zzaa.zzm(this.zzb, task);
                }
            });
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzl(final zzfx zzfxVar, final zzev zzevVar) {
        final byte[] bArr = null;
        zzn(new Runnable(zzfxVar, zzevVar, bArr) { // from class: com.google.android.gms.wearable.zzp
            public final /* synthetic */ zzfx zzb;
            public final /* synthetic */ zzev zzc;

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzk(this.zzb, this.zzc);
            }
        }, "onRequestReceived", zzfxVar);
    }
}
