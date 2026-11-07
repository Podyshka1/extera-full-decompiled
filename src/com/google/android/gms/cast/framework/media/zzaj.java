package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzaj extends zzbc {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ JSONObject zzc;
    final /* synthetic */ RemoteMediaClient zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(RemoteMediaClient remoteMediaClient, int i, int i2, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zza = i;
        this.zzb = i2;
        this.zzc = jSONObject;
        Objects.requireNonNull(remoteMediaClient);
        this.zzd = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        MediaQueueItem queueItem;
        Preconditions.checkMainThread("Must be called from the main thread.");
        RemoteMediaClient remoteMediaClient = this.zzd;
        MediaQueue mediaQueue = remoteMediaClient.getMediaQueue();
        int i = this.zza;
        int iIndexOfItemWithId = mediaQueue.indexOfItemWithId(i);
        int itemId = 0;
        if (iIndexOfItemWithId == -1) {
            MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(remoteMediaClient.getMediaStatus());
            int i2 = 0;
            while (true) {
                if (i2 >= mediaStatus.getQueueItemCount()) {
                    iIndexOfItemWithId = -1;
                    break;
                } else {
                    if (((MediaQueueItem) Preconditions.checkNotNull(mediaStatus.getQueueItem(i2))).getItemId() == i) {
                        iIndexOfItemWithId = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        int i3 = this.zzb;
        if (i3 < 0) {
            setResult(new zzbb(this, new Status(CastStatusCodes.INVALID_REQUEST, String.format(Locale.ROOT, "Invalid request: Invalid newIndex %d.", Integer.valueOf(i3)))));
            return;
        }
        if (iIndexOfItemWithId == i3) {
            setResult(new zzbb(this, new Status(0)));
            return;
        }
        if (i3 > iIndexOfItemWithId) {
            i3++;
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        int iItemIdAtIndex = remoteMediaClient.getMediaQueue().itemIdAtIndex(i3);
        if (iItemIdAtIndex != 0) {
            itemId = iItemIdAtIndex;
        } else {
            MediaStatus mediaStatus2 = remoteMediaClient.getMediaStatus();
            if (mediaStatus2 != null && (queueItem = mediaStatus2.getQueueItem(i3)) != null) {
                itemId = queueItem.getItemId();
            }
        }
        remoteMediaClient.zzt().zzG(zzb(), new int[]{i}, itemId, this.zzc);
    }
}
