package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultLoadControl implements LoadControl {
    public static final ImmutableList<String> LOCAL_PLAYBACK_SCHEMES = ImmutableList.of("file", "content", "data", "android.resource", "rawresource", "asset");
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferForLocalPlaybackUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackForLocalPlaybackUs;
    private final long bufferForPlaybackUs;
    private final ConcurrentHashMap<PlayerId, PlayerLoadingState> loadingStates;
    private final long maxBufferForLocalPlaybackUs;
    private final long maxBufferUs;
    private final long minBufferForLocalPlaybackUs;
    private final long minBufferUs;
    private final Timeline.Period period;
    private final ImmutableMap<String, Integer> playerTargetBufferBytesOverwrites;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
    private final boolean retainBackBufferFromKeyframe;
    private final int targetBufferBytesOverwrite;
    private long threadId;
    private final Timeline.Window window;

    @Deprecated
    public int calculateTargetBufferBytes(ExoTrackSelection[] exoTrackSelectionArr) {
        return -1;
    }

    public static final class Builder {
        private DefaultAllocator allocator;
        private int backBufferDurationMs;
        private int bufferForPlaybackAfterRebufferForLocalPlaybackMs;
        private int bufferForPlaybackAfterRebufferMs;
        private int bufferForPlaybackForLocalPlaybackMs;
        private int bufferForPlaybackMs;
        private boolean buildCalled;
        private int maxBufferForLocalPlaybackMs;
        private int maxBufferMs;
        private int minBufferForLocalPlaybackMs;
        private int minBufferMs;
        private Boolean onlyGenericConfigurationMethodsCalled;
        private final HashMap<String, Integer> playerTargetBufferBytes;
        private boolean prioritizeTimeOverSizeThresholds;
        private boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
        private boolean retainBackBufferFromKeyframe;
        private int targetBufferBytes;

        public Builder() {
            HashMap<String, Integer> map = new HashMap<>();
            this.playerTargetBufferBytes = map;
            map.put(PlayerId.PRELOAD.name, 144179200);
            this.minBufferMs = 50000;
            this.minBufferForLocalPlaybackMs = 1000;
            this.maxBufferMs = 50000;
            this.maxBufferForLocalPlaybackMs = 50000;
            this.bufferForPlaybackMs = 1000;
            this.bufferForPlaybackForLocalPlaybackMs = 1000;
            this.bufferForPlaybackAfterRebufferMs = CastStatusCodes.AUTHENTICATION_FAILED;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = 1000;
            this.targetBufferBytes = -1;
            this.prioritizeTimeOverSizeThresholds = false;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = true;
            this.backBufferDurationMs = 0;
            this.retainBackBufferFromKeyframe = false;
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            Preconditions.checkState(!this.buildCalled);
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBufferDurationsMs(int i, int i2, int i3, int i4) {
            Preconditions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", MVEL.VERSION_SUB);
            DefaultLoadControl.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", MVEL.VERSION_SUB);
            DefaultLoadControl.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
            this.minBufferMs = i;
            this.maxBufferMs = i2;
            this.bufferForPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferMs = i4;
            this.minBufferForLocalPlaybackMs = i;
            this.maxBufferForLocalPlaybackMs = i2;
            this.bufferForPlaybackForLocalPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = i4;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = Boolean.TRUE;
            }
            return this;
        }

        public Builder setTargetBufferBytes(int i) {
            Preconditions.checkState(!this.buildCalled);
            this.targetBufferBytes = i;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
            Preconditions.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = z;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = Boolean.TRUE;
            }
            return this;
        }

        public Builder setBackBuffer(int i, boolean z) {
            Preconditions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i, 0, "backBufferDurationMs", MVEL.VERSION_SUB);
            this.backBufferDurationMs = i;
            this.retainBackBufferFromKeyframe = z;
            return this;
        }

        public DefaultLoadControl build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            Boolean bool = this.onlyGenericConfigurationMethodsCalled;
            if (bool != null && bool.booleanValue()) {
                this.minBufferForLocalPlaybackMs = this.minBufferMs;
                this.maxBufferForLocalPlaybackMs = this.maxBufferMs;
                this.bufferForPlaybackForLocalPlaybackMs = this.bufferForPlaybackMs;
                this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = this.bufferForPlaybackAfterRebufferMs;
                this.prioritizeTimeOverSizeThresholdsForLocalPlayback = this.prioritizeTimeOverSizeThresholds;
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.minBufferForLocalPlaybackMs, this.maxBufferMs, this.maxBufferForLocalPlaybackMs, this.bufferForPlaybackMs, this.bufferForPlaybackForLocalPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.bufferForPlaybackAfterRebufferForLocalPlaybackMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.prioritizeTimeOverSizeThresholdsForLocalPlayback, this.backBufferDurationMs, this.retainBackBufferFromKeyframe, this.playerTargetBufferBytes);
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 1000, 50000, 50000, 1000, 1000, CastStatusCodes.AUTHENTICATION_FAILED, 1000, -1, false, true, 0, false);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z, boolean z2, int i10, boolean z3, Map<String, Integer> map) {
        assertGreaterOrEqual(i5, 0, "bufferForPlaybackMs", MVEL.VERSION_SUB);
        assertGreaterOrEqual(i6, 0, "bufferForPlaybackForLocalPlaybackMs", MVEL.VERSION_SUB);
        assertGreaterOrEqual(i7, 0, "bufferForPlaybackAfterRebufferMs", MVEL.VERSION_SUB);
        assertGreaterOrEqual(i8, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", MVEL.VERSION_SUB);
        assertGreaterOrEqual(i, i5, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i2, i6, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        assertGreaterOrEqual(i, i7, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i2, i8, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        assertGreaterOrEqual(i3, i, "maxBufferMs", "minBufferMs");
        assertGreaterOrEqual(i4, i2, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        assertGreaterOrEqual(i10, 0, "backBufferDurationMs", MVEL.VERSION_SUB);
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.allocator = defaultAllocator;
        this.minBufferUs = Util.msToUs(i);
        this.minBufferForLocalPlaybackUs = Util.msToUs(i2);
        this.maxBufferUs = Util.msToUs(i3);
        this.maxBufferForLocalPlaybackUs = Util.msToUs(i4);
        this.bufferForPlaybackUs = Util.msToUs(i5);
        this.bufferForPlaybackForLocalPlaybackUs = Util.msToUs(i6);
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(i7);
        this.bufferForPlaybackAfterRebufferForLocalPlaybackUs = Util.msToUs(i8);
        this.targetBufferBytesOverwrite = i9;
        this.prioritizeTimeOverSizeThresholds = z;
        this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z2;
        this.backBufferDurationUs = Util.msToUs(i10);
        this.retainBackBufferFromKeyframe = z3;
        this.loadingStates = new ConcurrentHashMap<>();
        this.playerTargetBufferBytesOverwrites = ImmutableMap.copyOf((Map) map);
        this.threadId = -1L;
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z, boolean z2, int i10, boolean z3) {
        this(defaultAllocator, i, i2, i3, i4, i5, i6, i7, i8, i9, z, z2, i10, z3, ImmutableMap.of());
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onPrepared(PlayerId playerId) {
        long id = Thread.currentThread().getId();
        long j = this.threadId;
        Preconditions.checkState(j == -1 || j == id, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.threadId = id;
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState == null) {
            this.loadingStates.put(playerId, new PlayerLoadingState());
        } else {
            playerLoadingState.referenceCount++;
        }
        resetPlayerLoadingState(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onTracksSelected(LoadControl.Parameters parameters, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(parameters.playerId);
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(parameters.playerId));
        if (targetBufferBytesOverwrite == -1) {
            targetBufferBytesOverwrite = calculateTargetBufferBytes(parameters, exoTrackSelectionArr);
        }
        playerLoadingState.targetBufferBytes = targetBufferBytesOverwrite;
        updateAllocator();
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onStopped(PlayerId playerId) {
        removePlayer(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onReleased(PlayerId playerId) {
        removePlayer(playerId);
        if (this.loadingStates.isEmpty()) {
            this.threadId = -1L;
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public Allocator getAllocator(PlayerId playerId) {
        return new PlayerIdFilteringAllocatorImpl(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public long getBackBufferDurationUs(PlayerId playerId) {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean retainBackBufferFromKeyframe(PlayerId playerId) {
        return this.retainBackBufferFromKeyframe;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinueLoading(LoadControl.Parameters parameters) {
        PlayerId playerId = parameters.playerId;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId));
        boolean z = getTotalBufferBytesAllocated(playerId) >= getTargetBufferBytes(playerId);
        if (playerId.equals(PlayerId.PRELOAD)) {
            return !z;
        }
        boolean zIsLocalPlayback = isLocalPlayback(parameters);
        long minBufferUs = getMinBufferUs(zIsLocalPlayback);
        long maxBufferUs = getMaxBufferUs(zIsLocalPlayback);
        float f = parameters.playbackSpeed;
        if (f > 1.0f) {
            minBufferUs = Math.min(Util.getMediaDurationForPlayoutDuration(minBufferUs, f), maxBufferUs);
        }
        long jMax = Math.max(minBufferUs, 500000L);
        long j = parameters.bufferedDurationUs;
        if (j < jMax) {
            boolean z2 = prioritizeTimeOverSizeThresholds(zIsLocalPlayback) || !z;
            playerLoadingState.isLoading = z2;
            if (!z2 && parameters.bufferedDurationUs < 500000) {
                Log.m164w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j >= maxBufferUs || z) {
            playerLoadingState.isLoading = false;
        }
        return playerLoadingState.isLoading;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldStartPlayback(LoadControl.Parameters parameters) {
        long bufferForPlaybackUs;
        boolean zIsLocalPlayback = isLocalPlayback(parameters);
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(parameters.bufferedDurationUs, parameters.playbackSpeed);
        if (parameters.rebuffering) {
            bufferForPlaybackUs = getBufferForPlaybackAfterRebufferUs(zIsLocalPlayback);
        } else {
            bufferForPlaybackUs = getBufferForPlaybackUs(zIsLocalPlayback);
        }
        long j = parameters.targetLiveOffsetUs;
        if (j != -9223372036854775807L) {
            bufferForPlaybackUs = Math.min(j / 2, bufferForPlaybackUs);
        }
        if (bufferForPlaybackUs <= 0 || playoutDurationForMediaDuration >= bufferForPlaybackUs) {
            return true;
        }
        return !prioritizeTimeOverSizeThresholds(zIsLocalPlayback) && getTotalBufferBytesAllocated(parameters.playerId) >= getTargetBufferBytes(parameters.playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinuePreloading(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j) {
        Iterator<PlayerLoadingState> it = this.loadingStates.values().iterator();
        while (it.hasNext()) {
            if (it.next().isLoading) {
                return false;
            }
        }
        return true;
    }

    public int calculateTargetBufferBytes(LoadControl.Parameters parameters, ExoTrackSelection[] exoTrackSelectionArr) {
        int iCalculateTargetBufferBytes = calculateTargetBufferBytes(exoTrackSelectionArr);
        if (iCalculateTargetBufferBytes != -1) {
            return iCalculateTargetBufferBytes;
        }
        boolean zIsLocalPlayback = isLocalPlayback(parameters);
        int defaultBufferSize = 0;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                defaultBufferSize += getDefaultBufferSize(exoTrackSelection.getTrackGroup().type, zIsLocalPlayback);
            }
        }
        return Util.constrainValue(defaultBufferSize, 13107200, 210239488);
    }

    public int calculateTotalTargetBufferBytes() {
        Iterator<PlayerLoadingState> it = this.loadingStates.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().targetBufferBytes;
        }
        return i;
    }

    private void resetPlayerLoadingState(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId));
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(playerId);
        if (targetBufferBytesOverwrite == -1) {
            targetBufferBytesOverwrite = 13107200;
        }
        playerLoadingState.targetBufferBytes = targetBufferBytesOverwrite;
        playerLoadingState.isLoading = false;
    }

    private int getTargetBufferBytesOverwrite(PlayerId playerId) {
        Integer num = this.playerTargetBufferBytesOverwrites.get(playerId.name);
        if (num != null && num.intValue() != -1) {
            return num.intValue();
        }
        return this.targetBufferBytesOverwrite;
    }

    private void removePlayer(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState != null) {
            int i = playerLoadingState.referenceCount - 1;
            playerLoadingState.referenceCount = i;
            if (i == 0) {
                this.loadingStates.remove(playerId);
                updateAllocator();
            }
        }
    }

    private void updateAllocator() {
        boolean zIsEmpty = this.loadingStates.isEmpty();
        DefaultAllocator defaultAllocator = this.allocator;
        if (zIsEmpty) {
            defaultAllocator.reset();
        } else {
            defaultAllocator.setTargetBufferSize(calculateTotalTargetBufferBytes());
        }
    }

    private static int getDefaultBufferSize(int i, boolean z) {
        switch (i) {
            case -2:
                return 0;
            case -1:
                return 13107200;
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return z ? 19660800 : 131072000;
            case 3:
                return 131072;
            case 4:
                return 26214400;
            case 5:
            case 6:
                return 131072;
            default:
                Segment$$ExternalSyntheticBUOutline0.m972m();
                return 0;
        }
    }

    private boolean isLocalPlayback(LoadControl.Parameters parameters) {
        MediaItem.LocalConfiguration localConfiguration = parameters.timeline.getWindow(parameters.timeline.getPeriodByUid(parameters.mediaPeriodId.periodUid, this.period).windowIndex, this.window).mediaItem.localConfiguration;
        if (localConfiguration == null) {
            return false;
        }
        String scheme = localConfiguration.uri.getScheme();
        return TextUtils.isEmpty(scheme) || LOCAL_PLAYBACK_SCHEMES.contains(scheme);
    }

    private long getMinBufferUs(boolean z) {
        return z ? this.minBufferForLocalPlaybackUs : this.minBufferUs;
    }

    private long getMaxBufferUs(boolean z) {
        return z ? this.maxBufferForLocalPlaybackUs : this.maxBufferUs;
    }

    private long getBufferForPlaybackUs(boolean z) {
        return z ? this.bufferForPlaybackForLocalPlaybackUs : this.bufferForPlaybackUs;
    }

    private long getBufferForPlaybackAfterRebufferUs(boolean z) {
        if (z) {
            return this.bufferForPlaybackAfterRebufferForLocalPlaybackUs;
        }
        return this.bufferForPlaybackAfterRebufferUs;
    }

    private boolean prioritizeTimeOverSizeThresholds(boolean z) {
        if (z) {
            return this.prioritizeTimeOverSizeThresholdsForLocalPlayback;
        }
        return this.prioritizeTimeOverSizeThresholds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertGreaterOrEqual(int i, int i2, String str, String str2) {
        Preconditions.checkArgument(i >= i2, "%s cannot be less than %s", str, str2);
    }

    private int getTotalBufferBytesAllocated(PlayerId playerId) {
        return ((PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId))).getAllocatedCounts() * this.allocator.getIndividualAllocationLength();
    }

    private int getTargetBufferBytes(PlayerId playerId) {
        return ((PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId))).targetBufferBytes;
    }

    public static class PlayerLoadingState {
        private int allocatedCounts;
        public boolean isLoading;
        public int referenceCount = 1;
        public int targetBufferBytes;

        public synchronized void increaseAllocatedCounts() {
            this.allocatedCounts++;
        }

        public synchronized void decreaseAllocatedCounts() {
            this.allocatedCounts--;
        }

        public synchronized int getAllocatedCounts() {
            return this.allocatedCounts;
        }
    }

    public final class PlayerIdFilteringAllocatorImpl implements Allocator {
        private final HashMap<Allocation, PlayerId> allocationPlayerIdMap = new HashMap<>();
        private PlayerId playerId;

        public PlayerIdFilteringAllocatorImpl(PlayerId playerId) {
            this.playerId = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized Allocation allocate() {
            Allocation allocationAllocate;
            allocationAllocate = DefaultLoadControl.this.allocator.allocate();
            this.allocationPlayerIdMap.put(allocationAllocate, this.playerId);
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get(this.playerId);
            if (playerLoadingState != null) {
                playerLoadingState.increaseAllocatedCounts();
            }
            return allocationAllocate;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocation allocation) {
            DefaultLoadControl.this.allocator.release(allocation);
            releaseInternal(allocation);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocator.AllocationNode allocationNode) {
            DefaultLoadControl.this.allocator.release(allocationNode);
            while (allocationNode != null) {
                releaseInternal(allocationNode.getAllocation());
                allocationNode = allocationNode.next();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void trim() {
            DefaultLoadControl.this.allocator.trim();
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getIndividualAllocationLength() {
            return DefaultLoadControl.this.allocator.getIndividualAllocationLength();
        }

        private void releaseInternal(Allocation allocation) {
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get((PlayerId) Preconditions.checkNotNull(this.allocationPlayerIdMap.remove(allocation)));
            if (playerLoadingState != null) {
                playerLoadingState.decreaseAllocatedCounts();
            }
        }
    }
}
