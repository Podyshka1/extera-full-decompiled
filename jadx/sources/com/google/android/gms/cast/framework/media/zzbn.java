package com.google.android.gms.cast.framework.media;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzbn implements com.google.android.gms.cast.internal.zzan {
    final /* synthetic */ RemoteMediaClient zza;

    /* synthetic */ zzbn(RemoteMediaClient remoteMediaClient, zzbm zzbmVar) {
        this.zza = remoteMediaClient;
    }

    private final void zzn() {
        RemoteMediaClient.zzc(this.zza);
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zza() {
        Iterator it = this.zza.zzi.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        Iterator it2 = this.zza.zzj.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).onAdBreakStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzb(MediaError mediaError) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).onMediaError(mediaError);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzc() {
        zzn();
        Iterator it = this.zza.zzi.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        Iterator it2 = this.zza.zzj.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).onMetadataUpdated();
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzd() {
        Iterator it = this.zza.zzi.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        Iterator it2 = this.zza.zzj.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).onPreloadStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zze(int[] iArr) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zzb(iArr);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzf(int[] iArr, int i) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zzc(iArr, i);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzg(MediaQueueItem[] mediaQueueItemArr) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zzd(mediaQueueItemArr);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzh(int[] iArr) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zze(iArr);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzi(List list, List list2, int i) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zzf(list, list2, i);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzj(int[] iArr) {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zzg(iArr);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzk() {
        Iterator it = this.zza.zzi.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        Iterator it2 = this.zza.zzj.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).onQueueStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzl() {
        Iterator it = this.zza.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zzh();
        }
    }

    @Override // com.google.android.gms.cast.internal.zzan
    public final void zzm() {
        zzn();
        RemoteMediaClient.zzo(this.zza);
        Iterator it = this.zza.zzi.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
        Iterator it2 = this.zza.zzj.iterator();
        while (it2.hasNext()) {
            ((RemoteMediaClient.Callback) it2.next()).onStatusUpdated();
        }
    }
}
