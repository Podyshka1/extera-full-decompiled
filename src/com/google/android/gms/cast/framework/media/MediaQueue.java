package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;
import android.util.SparseIntArray;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzfk;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes4.dex */
public class MediaQueue {
    long zza;
    LruCache zzd;
    private final RemoteMediaClient zzh;
    private PendingResult zzl;
    private PendingResult zzm;
    private final Set zzn = Collections.synchronizedSet(new HashSet());
    private final Logger zzg = new Logger("MediaQueue");
    private final int zzi = Math.max(20, 1);
    List zzb = new ArrayList();
    final SparseIntArray zzc = new SparseIntArray();
    final List zze = new ArrayList();
    final Deque zzf = new ArrayDeque(20);
    private final Handler zzj = new zzfk(Looper.getMainLooper());
    private final TimerTask zzk = new zzj(this);

    public static abstract class Callback {
        public void itemsInsertedInRange(int i, int i2) {
        }

        public void itemsReloaded() {
        }

        public void itemsRemovedAtIndexes(int[] iArr) {
        }

        public void itemsReorderedAtIndexes(List<Integer> list, int i) {
        }

        public void itemsUpdatedAtIndexes(int[] iArr) {
        }

        public void mediaQueueChanged() {
        }

        public void mediaQueueWillChange() {
        }
    }

    public MediaQueue(RemoteMediaClient remoteMediaClient, int i, int i2) {
        this.zzh = remoteMediaClient;
        remoteMediaClient.registerCallback(new zzn(this));
        zzp(20);
        this.zza = zze();
        zzb();
    }

    private final void zzp(int i) {
        this.zzd = new zzk(this, i);
    }

    private final void zzq() {
        zzr();
        this.zzj.postDelayed(this.zzk, 500L);
    }

    private final void zzr() {
        this.zzj.removeCallbacks(this.zzk);
    }

    private final void zzs() {
        PendingResult pendingResult = this.zzm;
        if (pendingResult != null) {
            pendingResult.cancel();
            this.zzm = null;
        }
    }

    private final void zzt() {
        PendingResult pendingResult = this.zzl;
        if (pendingResult != null) {
            pendingResult.cancel();
            this.zzl = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final long zze() {
        MediaStatus mediaStatus = this.zzh.getMediaStatus();
        if (mediaStatus == null || mediaStatus.zzc()) {
            return 0L;
        }
        return mediaStatus.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public final void zzh() {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).mediaQueueWillChange();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzw, reason: merged with bridge method [inline-methods] */
    public final void zzi() {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).mediaQueueChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzx, reason: merged with bridge method [inline-methods] */
    public final void zzj() {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsReloaded();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public final void zzl(int[] iArr) {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsUpdatedAtIndexes(iArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PendingResult<RemoteMediaClient.MediaChannelResult> fetchMoreItemsRelativeToIndex(int i, int i2, int i3) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.zza == 0) {
            return RemoteMediaClient.zzn(2100, "No active media session");
        }
        int iItemIdAtIndex = itemIdAtIndex(i);
        return iItemIdAtIndex == 0 ? RemoteMediaClient.zzn(CastStatusCodes.INVALID_REQUEST, "index out of bound") : this.zzh.zze(iItemIdAtIndex, i2, i3);
    }

    public MediaQueueItem getItemAtIndex(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return getItemAtIndex(i, true);
    }

    public int getItemCount() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzb.size();
    }

    public int[] getItemIds() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return CastUtils.zze(this.zzb);
    }

    public int indexOfItemWithId(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzc.get(i, -1);
    }

    public int itemIdAtIndex(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (i < 0 || i >= this.zzb.size()) {
            return 0;
        }
        return ((Integer) this.zzb.get(i)).intValue();
    }

    public void registerCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzn.add(callback);
    }

    public void setCacheCapacity(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        LruCache lruCache = this.zzd;
        ArrayList arrayList = new ArrayList();
        zzp(i);
        int size = lruCache.size();
        for (Map.Entry entry : lruCache.snapshot().entrySet()) {
            if (size > i) {
                int i2 = this.zzc.get(((Integer) entry.getKey()).intValue(), -1);
                if (i2 != -1) {
                    arrayList.add(Integer.valueOf(i2));
                }
            } else {
                this.zzd.put((Integer) entry.getKey(), (MediaQueueItem) entry.getValue());
            }
            size--;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Collections.sort(arrayList);
        zzh();
        zzl(CastUtils.zze(arrayList));
        zzi();
    }

    public void unregisterCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzn.remove(callback);
    }

    public final void zza() {
        zzh();
        this.zzb.clear();
        this.zzc.clear();
        this.zzd.evictAll();
        this.zze.clear();
        zzr();
        this.zzf.clear();
        zzs();
        zzt();
        zzj();
        zzi();
    }

    public final void zzb() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.zza != 0 && this.zzm == null) {
            zzs();
            zzt();
            PendingResult pendingResultZzc = this.zzh.zzc();
            this.zzm = pendingResultZzc;
            pendingResultZzc.setResultCallback(new ResultCallback() { // from class: com.google.android.gms.cast.framework.media.zzm
                @Override // com.google.android.gms.common.api.ResultCallback
                public final /* synthetic */ void onResult(Result result) {
                    this.zza.zzd((RemoteMediaClient.MediaChannelResult) result);
                }
            });
        }
    }

    public final void zzc(RemoteMediaClient.MediaChannelResult mediaChannelResult) {
        Status status = mediaChannelResult.getStatus();
        int statusCode = status.getStatusCode();
        if (statusCode != 0) {
            this.zzg.m318w(String.format("Error fetching queue items, statusCode=%s, statusMessage=%s", Integer.valueOf(statusCode), status.getStatusMessage()), new Object[0]);
        }
        this.zzl = null;
        if (this.zzf.isEmpty()) {
            return;
        }
        zzq();
    }

    public final void zzd(RemoteMediaClient.MediaChannelResult mediaChannelResult) {
        Status status = mediaChannelResult.getStatus();
        int statusCode = status.getStatusCode();
        if (statusCode != 0) {
            this.zzg.m318w(String.format("Error fetching queue item ids, statusCode=%s, statusMessage=%s", Integer.valueOf(statusCode), status.getStatusMessage()), new Object[0]);
        }
        this.zzm = null;
        if (this.zzf.isEmpty()) {
            return;
        }
        zzq();
    }

    public final /* synthetic */ void zzf() {
        Deque deque = this.zzf;
        if (deque.isEmpty() || this.zzl != null || this.zza == 0) {
            return;
        }
        PendingResult pendingResultZzd = this.zzh.zzd(CastUtils.zze(deque));
        this.zzl = pendingResultZzd;
        pendingResultZzd.setResultCallback(new ResultCallback() { // from class: com.google.android.gms.cast.framework.media.zzl
            @Override // com.google.android.gms.common.api.ResultCallback
            public final /* synthetic */ void onResult(Result result) {
                this.zza.zzc((RemoteMediaClient.MediaChannelResult) result);
            }
        });
        deque.clear();
    }

    public final /* synthetic */ void zzg() {
        SparseIntArray sparseIntArray = this.zzc;
        sparseIntArray.clear();
        for (int i = 0; i < this.zzb.size(); i++) {
            sparseIntArray.put(((Integer) this.zzb.get(i)).intValue(), i);
        }
    }

    public final /* synthetic */ void zzk(int i, int i2) {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsInsertedInRange(i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzm(int[] iArr) {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsRemovedAtIndexes(iArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzn(List list, int i) {
        Set set = this.zzn;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).itemsReorderedAtIndexes(list, i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ Logger zzo() {
        return this.zzg;
    }

    public MediaQueueItem getItemAtIndex(int i, boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (i < 0 || i >= this.zzb.size()) {
            return null;
        }
        Integer num = (Integer) this.zzb.get(i);
        num.intValue();
        MediaQueueItem mediaQueueItem = (MediaQueueItem) this.zzd.get(num);
        if (mediaQueueItem == null && z) {
            Deque deque = this.zzf;
            if (!deque.contains(num)) {
                while (deque.size() >= this.zzi) {
                    deque.removeFirst();
                }
                deque.add(num);
                zzq();
            }
        }
        return mediaQueueItem;
    }
}
