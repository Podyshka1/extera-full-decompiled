package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.MediaQueue;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzp extends MediaQueue.Callback {
    final /* synthetic */ MediaQueueRecyclerViewAdapter zza;

    public /* synthetic */ zzp(MediaQueueRecyclerViewAdapter mediaQueueRecyclerViewAdapter, byte[] bArr) {
        Objects.requireNonNull(mediaQueueRecyclerViewAdapter);
        this.zza = mediaQueueRecyclerViewAdapter;
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsInsertedInRange(int i, int i2) {
        this.zza.notifyItemRangeInserted(i, i2);
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsReloaded() {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsRemovedAtIndexes(int[] iArr) {
        if (iArr.length > 1) {
            this.zza.notifyDataSetChanged();
            return;
        }
        for (int i : iArr) {
            this.zza.notifyItemRemoved(i);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsReorderedAtIndexes(List<Integer> list, int i) {
        this.zza.notifyDataSetChanged();
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void itemsUpdatedAtIndexes(int[] iArr) {
        for (int i : iArr) {
            this.zza.notifyItemChanged(i);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void mediaQueueChanged() {
    }

    @Override // com.google.android.gms.cast.framework.media.MediaQueue.Callback
    public final void mediaQueueWillChange() {
    }
}
