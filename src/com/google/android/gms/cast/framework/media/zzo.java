package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.MediaQueue;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzo extends MediaQueue.Callback {
    final /* synthetic */ MediaQueueArrayAdapter zza;

    public /* synthetic */ zzo(MediaQueueArrayAdapter mediaQueueArrayAdapter, byte[] bArr) {
        Objects.requireNonNull(mediaQueueArrayAdapter);
        this.zza = mediaQueueArrayAdapter;
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsInsertedInRange(int i, int i2) {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsReloaded() {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsRemovedAtIndexes(int[] iArr) {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsReorderedAtIndexes(List<Integer> list, int i) {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsUpdatedAtIndexes(int[] iArr) {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void mediaQueueChanged() {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void mediaQueueWillChange() {
    }
}
