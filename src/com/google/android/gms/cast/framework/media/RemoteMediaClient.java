package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadOptions;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzfk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class RemoteMediaClient implements Cast.MessageReceivedCallback {
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    private final com.google.android.gms.cast.internal.zzar zzd;
    private final zzax zze;

    @NotOnlyInitialized
    private final MediaQueue zzf;
    private com.google.android.gms.cast.zzq zzg;
    private TaskCompletionSource zzh;
    private ParseAdsInfoCallback zzm;
    private static final Logger zza = new Logger("RemoteMediaClient");
    public static final String NAMESPACE = com.google.android.gms.cast.internal.zzar.zzb;
    private final List zzi = new CopyOnWriteArrayList();
    private final List zzj = new CopyOnWriteArrayList();
    private final Map zzk = new ConcurrentHashMap();
    private final Map zzl = new ConcurrentHashMap();
    private final Object zzb = new Object();
    private final Handler zzc = new zzfk(Looper.getMainLooper());

    public static abstract class Callback {
        public void onAdBreakStatusUpdated() {
        }

        public void onMediaError(MediaError mediaError) {
        }

        public void onMetadataUpdated() {
        }

        public void onPreloadStatusUpdated() {
        }

        public void onQueueStatusUpdated() {
        }

        public void onSendingRemoteMediaRequest() {
        }

        public void onStatusUpdated() {
        }

        public void zza(String str, long j, int i, long j2, long j3) {
        }

        public void zzb(int[] iArr) {
        }

        public void zzc(int[] iArr, int i) {
        }

        public void zzd(int[] iArr) {
        }

        public void zze(int[] iArr) {
        }

        public void zzf(MediaQueueItem[] mediaQueueItemArr) {
        }

        public void zzg(List list, List list2, int i) {
        }

        public void zzh() {
        }
    }

    @Deprecated
    public interface Listener {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onSendingRemoteMediaRequest();

        void onStatusUpdated();
    }

    public interface MediaChannelResult extends Result {
        JSONObject getCustomData();

        MediaError getMediaError();

        @Override // com.google.android.gms.common.api.Result
        /* synthetic */ Status getStatus();
    }

    public interface ParseAdsInfoCallback {
        List<AdBreakInfo> parseAdBreaksFromMediaStatus(MediaStatus mediaStatus);

        boolean parseIsPlayingAdFromMediaStatus(MediaStatus mediaStatus);
    }

    public interface ProgressListener {
        void onProgressUpdated(long j, long j2);
    }

    public RemoteMediaClient(com.google.android.gms.cast.internal.zzar zzarVar) {
        zzax zzaxVar = new zzax(this);
        this.zze = zzaxVar;
        com.google.android.gms.cast.internal.zzar zzarVar2 = (com.google.android.gms.cast.internal.zzar) Preconditions.checkNotNull(zzarVar);
        this.zzd = zzarVar2;
        zzarVar2.zzi(new zzbe(this, null));
        zzarVar2.zze(zzaxVar);
        this.zzf = new MediaQueue(this, 20, 20);
    }

    public static PendingResult zzn(int i, String str) {
        zzaz zzazVar = new zzaz();
        zzazVar.setResult(new zzay(zzazVar, new Status(i, str)));
        return zzazVar;
    }

    private final boolean zzx() {
        return this.zzg != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public final void zzo(Set set) {
        MediaInfo media;
        HashSet hashSet = new HashSet(set);
        if (isPlaying() || isPaused() || isBuffering() || zzi()) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((ProgressListener) it.next()).onProgressUpdated(getApproximateStreamPosition(), getStreamDuration());
            }
        } else {
            if (!isLoadingNextItem()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ProgressListener) it2.next()).onProgressUpdated(0L, 0L);
                }
                return;
            }
            MediaQueueItem loadingItem = getLoadingItem();
            if (loadingItem == null || (media = loadingItem.getMedia()) == null) {
                return;
            }
            Iterator it3 = hashSet.iterator();
            while (it3.hasNext()) {
                ((ProgressListener) it3.next()).onProgressUpdated(0L, media.getStreamDuration());
            }
        }
    }

    private static final zzbc zzz(zzbc zzbcVar) {
        try {
            zzbcVar.zzc();
            return zzbcVar;
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Throwable unused) {
            zzbcVar.setResult(new zzbb(zzbcVar, new Status(2100)));
            return zzbcVar;
        }
    }

    @Deprecated
    public void addListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.zzi.add(listener);
        }
    }

    public boolean addProgressListener(ProgressListener progressListener, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (progressListener == null) {
            return false;
        }
        Map map = this.zzk;
        if (map.containsKey(progressListener)) {
            return false;
        }
        Map map2 = this.zzl;
        Long lValueOf = Long.valueOf(j);
        zzbg zzbgVar = (zzbg) map2.get(lValueOf);
        if (zzbgVar == null) {
            zzbgVar = new zzbg(this, j);
            map2.put(lValueOf, zzbgVar);
        }
        zzbgVar.zzb(progressListener);
        map.put(progressListener, zzbgVar);
        if (!hasMediaSession()) {
            return true;
        }
        zzbgVar.zze();
        return true;
    }

    public long getApproximateAdBreakClipPositionMs() {
        long jZzy;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            jZzy = this.zzd.zzy();
        }
        return jZzy;
    }

    public long getApproximateLiveSeekableRangeEnd() {
        long jZzx;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            jZzx = this.zzd.zzx();
        }
        return jZzx;
    }

    public long getApproximateLiveSeekableRangeStart() {
        long jZzw;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            jZzw = this.zzd.zzw();
        }
        return jZzw;
    }

    public long getApproximateStreamPosition() {
        long jZzv;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            jZzv = this.zzd.zzv();
        }
        return jZzv;
    }

    public MediaQueueItem getCurrentItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getCurrentItemId());
    }

    public int getIdleReason() {
        int idleReason;
        synchronized (this.zzb) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus mediaStatus = getMediaStatus();
                idleReason = mediaStatus != null ? mediaStatus.getIdleReason() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return idleReason;
    }

    public MediaQueueItem getLoadingItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getLoadingItemId());
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfoZzB;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaInfoZzB = this.zzd.zzB();
        }
        return mediaInfoZzB;
    }

    public MediaQueue getMediaQueue() {
        MediaQueue mediaQueue;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaQueue = this.zzf;
        }
        return mediaQueue;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatusZzA;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaStatusZzA = this.zzd.zzA();
        }
        return mediaStatusZzA;
    }

    public String getNamespace() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzd.zzd();
    }

    public int getPlayerState() {
        int playerState;
        synchronized (this.zzb) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus mediaStatus = getMediaStatus();
                playerState = mediaStatus != null ? mediaStatus.getPlayerState() : 1;
            } catch (Throwable th) {
                throw th;
            }
        }
        return playerState;
    }

    public MediaQueueItem getPreloadedItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getPreloadedItemId());
    }

    public long getStreamDuration() {
        long jZzz;
        synchronized (this.zzb) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            jZzz = this.zzd.zzz();
        }
        return jZzz;
    }

    public boolean hasMediaSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return isBuffering() || zzi() || isPlaying() || isPaused() || isLoadingNextItem();
    }

    public boolean isBuffering() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 4;
    }

    public boolean isLiveStream() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null && mediaInfo.getStreamType() == 2;
    }

    public boolean isLoadingNextItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || mediaStatus.getLoadingItemId() == 0) ? false : true;
    }

    public boolean isPaused() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return false;
        }
        if (mediaStatus.getPlayerState() != 3) {
            return isLiveStream() && getIdleReason() == 2;
        }
        return true;
    }

    public boolean isPlaying() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 2;
    }

    public boolean isPlayingAd() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.isPlayingAd();
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo) {
        return load(mediaInfo, new MediaLoadOptions.Builder().build());
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzd.zzL(str2);
    }

    public PendingResult<MediaChannelResult> pause() {
        return pause(null);
    }

    public PendingResult<MediaChannelResult> play() {
        return play(null);
    }

    public PendingResult<MediaChannelResult> queueAppendItem(MediaQueueItem mediaQueueItem, JSONObject jSONObject) {
        return queueInsertItems(new MediaQueueItem[]{mediaQueueItem}, 0, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzz zzzVar = new zzz(this, mediaQueueItem, i, j, jSONObject);
        zzz(zzzVar);
        return zzzVar;
    }

    public PendingResult<MediaChannelResult> queueInsertItems(MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzy zzyVar = new zzy(this, mediaQueueItemArr, i, jSONObject);
        zzz(zzyVar);
        return zzyVar;
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, long j, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzai zzaiVar = new zzai(this, i, j, jSONObject);
        zzz(zzaiVar);
        return zzaiVar;
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzx zzxVar = new zzx(this, mediaQueueItemArr, i, i2, j, jSONObject);
        zzz(zzxVar);
        return zzxVar;
    }

    public PendingResult<MediaChannelResult> queueMoveItemToNewIndex(int i, int i2, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzaj zzajVar = new zzaj(this, i, i2, jSONObject);
        zzz(zzajVar);
        return zzajVar;
    }

    public PendingResult<MediaChannelResult> queueNext(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzaf zzafVar = new zzaf(this, jSONObject);
        zzz(zzafVar);
        return zzafVar;
    }

    public PendingResult<MediaChannelResult> queuePrev(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzae zzaeVar = new zzae(this, jSONObject);
        zzz(zzaeVar);
        return zzaeVar;
    }

    public PendingResult<MediaChannelResult> queueRemoveItem(int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzah zzahVar = new zzah(this, i, jSONObject);
        zzz(zzahVar);
        return zzahVar;
    }

    public PendingResult<MediaChannelResult> queueRemoveItems(int[] iArr, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzab zzabVar = new zzab(this, iArr, jSONObject);
        zzz(zzabVar);
        return zzabVar;
    }

    public PendingResult<MediaChannelResult> queueReorderItems(int[] iArr, int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzac zzacVar = new zzac(this, iArr, i, jSONObject);
        zzz(zzacVar);
        return zzacVar;
    }

    public PendingResult<MediaChannelResult> queueSetRepeatMode(int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzag zzagVar = new zzag(this, i, jSONObject);
        zzz(zzagVar);
        return zzagVar;
    }

    public PendingResult<MediaChannelResult> queueShuffle(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzad zzadVar = new zzad(this, true, jSONObject);
        zzz(zzadVar);
        return zzadVar;
    }

    public PendingResult<MediaChannelResult> queueUpdateItems(MediaQueueItem[] mediaQueueItemArr, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzaa zzaaVar = new zzaa(this, mediaQueueItemArr, jSONObject);
        zzz(zzaaVar);
        return zzaaVar;
    }

    public void registerCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.zzj.add(callback);
        }
    }

    @Deprecated
    public void removeListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.zzi.remove(listener);
        }
    }

    public void removeProgressListener(ProgressListener progressListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzbg zzbgVar = (zzbg) this.zzk.remove(progressListener);
        if (zzbgVar != null) {
            zzbgVar.zzc(progressListener);
            if (zzbgVar.zzd()) {
                return;
            }
            this.zzl.remove(Long.valueOf(zzbgVar.zza()));
            zzbgVar.zzf();
        }
    }

    public PendingResult<MediaChannelResult> requestStatus() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzu zzuVar = new zzu(this);
        zzz(zzuVar);
        return zzuVar;
    }

    @Deprecated
    public PendingResult<MediaChannelResult> seek(long j) {
        return seek(j, 0, null);
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(long[] jArr) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzv zzvVar = new zzv(this, jArr);
        zzz(zzvVar);
        return zzvVar;
    }

    public void setParseAdsInfoCallback(ParseAdsInfoCallback parseAdsInfoCallback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzm = parseAdsInfoCallback;
    }

    public PendingResult<MediaChannelResult> setPlaybackRate(double d) {
        return setPlaybackRate(d, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z) {
        return setStreamMute(z, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d) {
        return setStreamVolume(d, null);
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(TextTrackStyle textTrackStyle) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzw zzwVar = new zzw(this, textTrackStyle);
        zzz(zzwVar);
        return zzwVar;
    }

    public PendingResult<MediaChannelResult> skipAd() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzt zztVar = new zzt(this);
        zzz(zztVar);
        return zztVar;
    }

    public PendingResult<MediaChannelResult> stop() {
        return stop(null);
    }

    public void togglePlayback() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        int playerState = getPlayerState();
        if (playerState == 4 || playerState == 2) {
            pause();
        } else {
            play();
        }
    }

    public void unregisterCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.zzj.remove(callback);
        }
    }

    public final void zza(com.google.android.gms.cast.zzq zzqVar) {
        com.google.android.gms.cast.zzq zzqVar2 = this.zzg;
        if (zzqVar2 == zzqVar) {
            return;
        }
        if (zzqVar2 != null) {
            this.zzd.zzh();
            this.zzf.zza();
            zzqVar2.zzr(getNamespace());
            this.zze.zza(null);
            this.zzc.removeCallbacksAndMessages(null);
        }
        this.zzg = zzqVar;
        if (zzqVar != null) {
            this.zze.zza(zzqVar);
        }
    }

    public final void zzb() {
        com.google.android.gms.cast.zzq zzqVar = this.zzg;
        if (zzqVar == null) {
            return;
        }
        zzqVar.zzq(getNamespace(), this);
        requestStatus();
    }

    public final PendingResult zzc() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzak zzakVar = new zzak(this, true);
        zzz(zzakVar);
        return zzakVar;
    }

    public final PendingResult zzd(int[] iArr) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzal zzalVar = new zzal(this, true, iArr);
        zzz(zzalVar);
        return zzalVar;
    }

    public final PendingResult zze(int i, int i2, int i3) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzam zzamVar = new zzam(this, true, i, i2, i3);
        zzz(zzamVar);
        return zzamVar;
    }

    public final Task zzf(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return Tasks.forException(new com.google.android.gms.cast.internal.zzap());
        }
        this.zzh = new TaskCompletionSource();
        zza.m282d("create SessionState with cached mediaInfo and mediaStatus", new Object[0]);
        MediaInfo mediaInfo = getMediaInfo();
        MediaStatus mediaStatus = getMediaStatus();
        SessionState sessionStateBuild = null;
        if (mediaInfo != null && mediaStatus != null) {
            MediaLoadRequestData.Builder builder = new MediaLoadRequestData.Builder();
            builder.setMediaInfo(mediaInfo);
            builder.setCurrentTime(getApproximateStreamPosition());
            builder.setQueueData(mediaStatus.getQueueData());
            builder.setPlaybackRate(mediaStatus.getPlaybackRate());
            builder.setActiveTrackIds(mediaStatus.getActiveTrackIds());
            builder.setCustomData(mediaStatus.getCustomData());
            MediaLoadRequestData mediaLoadRequestDataBuild = builder.build();
            SessionState.Builder builder2 = new SessionState.Builder();
            builder2.setLoadRequestData(mediaLoadRequestDataBuild);
            sessionStateBuild = builder2.build();
        }
        TaskCompletionSource taskCompletionSource = this.zzh;
        if (sessionStateBuild != null) {
            taskCompletionSource.setResult(sessionStateBuild);
        } else {
            taskCompletionSource.setException(new com.google.android.gms.cast.internal.zzap());
        }
        return this.zzh.getTask();
    }

    public final void zzg(SessionState sessionState) {
        MediaLoadRequestData loadRequestData;
        if (sessionState == null || (loadRequestData = sessionState.getLoadRequestData()) == null) {
            return;
        }
        zza.m282d("resume SessionState", new Object[0]);
        load(loadRequestData);
    }

    public final PendingResult zzh(String str, List list) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzao zzaoVar = new zzao(this, true, str, null);
        zzz(zzaoVar);
        return zzaoVar;
    }

    public final boolean zzi() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 5;
    }

    public final boolean zzj() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!isLiveStream()) {
            return true;
        }
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || !mediaStatus.isMediaCommandSupported(2L) || mediaStatus.getLiveSeekableRange() == null) ? false : true;
    }

    public final int zzk() {
        MediaQueueItem loadingItem;
        if (getMediaInfo() != null && hasMediaSession()) {
            if (isBuffering()) {
                return 6;
            }
            if (isPlaying()) {
                return 3;
            }
            if (isPaused()) {
                return 2;
            }
            if (isLoadingNextItem() && (loadingItem = getLoadingItem()) != null && loadingItem.getMedia() != null) {
                return 6;
            }
        }
        return 0;
    }

    public final boolean zzl() {
        if (!hasMediaSession()) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(getMediaStatus());
        if (mediaStatus.isMediaCommandSupported(128L) || mediaStatus.getQueueRepeatMode() != 0) {
            return true;
        }
        Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
        return indexById != null && indexById.intValue() > 0;
    }

    public final boolean zzm() {
        if (!hasMediaSession()) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(getMediaStatus());
        if (mediaStatus.isMediaCommandSupported(64L) || mediaStatus.getQueueRepeatMode() != 0) {
            return true;
        }
        Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
        return indexById != null && indexById.intValue() < mediaStatus.getQueueItemCount() + (-1);
    }

    public final /* synthetic */ void zzp() {
        for (zzbg zzbgVar : this.zzl.values()) {
            if (hasMediaSession() && !zzbgVar.zzg()) {
                zzbgVar.zze();
            } else if (!hasMediaSession() && zzbgVar.zzg()) {
                zzbgVar.zzf();
            }
            if (zzbgVar.zzg() && (isBuffering() || zzi() || isPaused() || isLoadingNextItem())) {
                zzo(zzbgVar.zzh());
            }
        }
    }

    public final /* synthetic */ Object zzr() {
        return this.zzb;
    }

    public final /* synthetic */ Handler zzs() {
        return this.zzc;
    }

    public final /* synthetic */ com.google.android.gms.cast.internal.zzar zzt() {
        return this.zzd;
    }

    public final /* synthetic */ List zzu() {
        return this.zzi;
    }

    public final /* synthetic */ List zzv() {
        return this.zzj;
    }

    public final /* synthetic */ ParseAdsInfoCallback zzw() {
        return this.zzm;
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, MediaLoadOptions mediaLoadOptions) {
        MediaLoadRequestData.Builder builder = new MediaLoadRequestData.Builder();
        builder.setMediaInfo(mediaInfo);
        builder.setAutoplay(Boolean.valueOf(mediaLoadOptions.getAutoplay()));
        builder.setCurrentTime(mediaLoadOptions.getPlayPosition());
        builder.setPlaybackRate(mediaLoadOptions.getPlaybackRate());
        builder.setActiveTrackIds(mediaLoadOptions.getActiveTrackIds());
        builder.setCustomData(mediaLoadOptions.getCustomData());
        builder.setCredentials(mediaLoadOptions.getCredentials());
        builder.setCredentialsType(mediaLoadOptions.getCredentialsType());
        return load(builder.build());
    }

    public PendingResult<MediaChannelResult> pause(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzap zzapVar = new zzap(this, jSONObject);
        zzz(zzapVar);
        return zzapVar;
    }

    public PendingResult<MediaChannelResult> play(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzar zzarVar = new zzar(this, jSONObject);
        zzz(zzarVar);
        return zzarVar;
    }

    @Deprecated
    public PendingResult<MediaChannelResult> seek(long j, int i) {
        return seek(j, i, null);
    }

    public PendingResult<MediaChannelResult> setPlaybackRate(double d, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzav zzavVar = new zzav(this, d, jSONObject);
        zzz(zzavVar);
        return zzavVar;
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzau zzauVar = new zzau(this, z, jSONObject);
        zzz(zzauVar);
        return zzauVar;
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzat zzatVar = new zzat(this, d, jSONObject);
        zzz(zzatVar);
        return zzatVar;
    }

    public PendingResult<MediaChannelResult> stop(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzaq zzaqVar = new zzaq(this, jSONObject);
        zzz(zzaqVar);
        return zzaqVar;
    }

    @Deprecated
    public PendingResult<MediaChannelResult> seek(long j, int i, JSONObject jSONObject) {
        MediaSeekOptions.Builder builder = new MediaSeekOptions.Builder();
        builder.setPosition(j);
        builder.setResumeState(i);
        builder.setCustomData(jSONObject);
        return seek(builder.build());
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, JSONObject jSONObject) {
        return queueInsertAndPlayItem(mediaQueueItem, i, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, JSONObject jSONObject) {
        return queueJumpToItem(i, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, JSONObject jSONObject) {
        return queueLoad(mediaQueueItemArr, i, i2, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> seek(MediaSeekOptions mediaSeekOptions) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzas zzasVar = new zzas(this, mediaSeekOptions);
        zzz(zzasVar);
        return zzasVar;
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z) {
        MediaLoadOptions.Builder builder = new MediaLoadOptions.Builder();
        builder.setAutoplay(z);
        return load(mediaInfo, builder.build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j) {
        MediaLoadOptions.Builder builder = new MediaLoadOptions.Builder();
        builder.setAutoplay(z);
        builder.setPlayPosition(j);
        return load(mediaInfo, builder.build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        MediaLoadOptions.Builder builder = new MediaLoadOptions.Builder();
        builder.setAutoplay(z);
        builder.setPlayPosition(j);
        builder.setCustomData(jSONObject);
        return load(mediaInfo, builder.build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) {
        MediaLoadOptions.Builder builder = new MediaLoadOptions.Builder();
        builder.setAutoplay(z);
        builder.setPlayPosition(j);
        builder.setActiveTrackIds(jArr);
        builder.setCustomData(jSONObject);
        return load(mediaInfo, builder.build());
    }

    public PendingResult<MediaChannelResult> load(MediaLoadRequestData mediaLoadRequestData) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzx()) {
            return zzn(17, null);
        }
        zzan zzanVar = new zzan(this, mediaLoadRequestData);
        zzz(zzanVar);
        return zzanVar;
    }
}
