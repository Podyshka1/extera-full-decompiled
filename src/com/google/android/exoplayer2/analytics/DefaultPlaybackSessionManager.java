package com.google.android.exoplayer2.analytics;

import android.util.Base64;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.PlaybackSessionManager;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Supplier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import kotlin.jvm.internal.LongCompanionObject;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultPlaybackSessionManager implements PlaybackSessionManager {
    public static final Supplier<String> DEFAULT_SESSION_ID_GENERATOR = new Supplier() { // from class: com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager$$ExternalSyntheticLambda0
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return DefaultPlaybackSessionManager.generateDefaultSessionId();
        }
    };
    private static final Random RANDOM = new Random();
    private String currentSessionId;
    private Timeline currentTimeline;
    private PlaybackSessionManager.Listener listener;
    private final Timeline.Period period;
    private final Supplier<String> sessionIdGenerator;
    private final HashMap<String, SessionDescriptor> sessions;
    private final Timeline.Window window;

    public DefaultPlaybackSessionManager() {
        this(DEFAULT_SESSION_ID_GENERATOR);
    }

    public DefaultPlaybackSessionManager(Supplier<String> supplier) {
        this.sessionIdGenerator = supplier;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.sessions = new HashMap<>();
        this.currentTimeline = Timeline.EMPTY;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public void setListener(PlaybackSessionManager.Listener listener) {
        this.listener = listener;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized String getSessionForMediaPeriodId(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        return getOrAddSession(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId).sessionId;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r22.mediaPeriodId.windowSequenceNumber < r2.windowSequenceNumber) goto L21;
     */
    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void updateSessions(AnalyticsListener.EventTime eventTime) {
        try {
            Assertions.checkNotNull(this.listener);
            if (eventTime.timeline.isEmpty()) {
                return;
            }
            SessionDescriptor sessionDescriptor = this.sessions.get(this.currentSessionId);
            if (eventTime.mediaPeriodId != null && sessionDescriptor != null) {
                if (sessionDescriptor.windowSequenceNumber == -1) {
                    if (sessionDescriptor.windowIndex != eventTime.windowIndex) {
                        return;
                    }
                }
            }
            SessionDescriptor orAddSession = getOrAddSession(eventTime.windowIndex, eventTime.mediaPeriodId);
            if (this.currentSessionId == null) {
                this.currentSessionId = orAddSession.sessionId;
            }
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId != null && mediaPeriodId.isAd()) {
                MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
                MediaSource.MediaPeriodId mediaPeriodId3 = new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber, mediaPeriodId2.adGroupIndex);
                SessionDescriptor orAddSession2 = getOrAddSession(eventTime.windowIndex, mediaPeriodId3);
                if (!orAddSession2.isCreated) {
                    orAddSession2.isCreated = true;
                    eventTime.timeline.getPeriodByUid(eventTime.mediaPeriodId.periodUid, this.period);
                    this.listener.onSessionCreated(new AnalyticsListener.EventTime(eventTime.realtimeMs, eventTime.timeline, eventTime.windowIndex, mediaPeriodId3, Math.max(0L, Util.usToMs(this.period.getAdGroupTimeUs(eventTime.mediaPeriodId.adGroupIndex)) + this.period.getPositionInWindowMs()), eventTime.currentTimeline, eventTime.currentWindowIndex, eventTime.currentMediaPeriodId, eventTime.currentPlaybackPositionMs, eventTime.totalBufferedDurationMs), orAddSession2.sessionId);
                }
            }
            if (!orAddSession.isCreated) {
                orAddSession.isCreated = true;
                this.listener.onSessionCreated(eventTime, orAddSession.sessionId);
            }
            if (orAddSession.sessionId.equals(this.currentSessionId) && !orAddSession.isActive) {
                orAddSession.isActive = true;
                this.listener.onSessionActive(eventTime, orAddSession.sessionId);
            }
        } finally {
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void updateSessionsWithTimelineChange(AnalyticsListener.EventTime eventTime) {
        try {
            Assertions.checkNotNull(this.listener);
            Timeline timeline = this.currentTimeline;
            this.currentTimeline = eventTime.timeline;
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                if (!next.tryResolvingToNewTimeline(timeline, this.currentTimeline) || next.isFinishedAtEventTime(eventTime)) {
                    it.remove();
                    if (next.isCreated) {
                        if (next.sessionId.equals(this.currentSessionId)) {
                            this.currentSessionId = null;
                        }
                        this.listener.onSessionFinished(eventTime, next.sessionId, false);
                    }
                }
            }
            updateCurrentSession(eventTime);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void updateSessionsWithDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        try {
            Assertions.checkNotNull(this.listener);
            boolean z = i == 0;
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                if (next.isFinishedAtEventTime(eventTime)) {
                    it.remove();
                    if (next.isCreated) {
                        boolean zEquals = next.sessionId.equals(this.currentSessionId);
                        boolean z2 = z && zEquals && next.isActive;
                        if (zEquals) {
                            this.currentSessionId = null;
                        }
                        this.listener.onSessionFinished(eventTime, next.sessionId, z2);
                    }
                }
            }
            updateCurrentSession(eventTime);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized String getActiveSessionId() {
        return this.currentSessionId;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void finishAllSessions(AnalyticsListener.EventTime eventTime) {
        PlaybackSessionManager.Listener listener;
        this.currentSessionId = null;
        Iterator<SessionDescriptor> it = this.sessions.values().iterator();
        while (it.hasNext()) {
            SessionDescriptor next = it.next();
            it.remove();
            if (next.isCreated && (listener = this.listener) != null) {
                listener.onSessionFinished(eventTime, next.sessionId, false);
            }
        }
    }

    @RequiresNonNull({"listener"})
    private void updateCurrentSession(AnalyticsListener.EventTime eventTime) {
        if (eventTime.timeline.isEmpty()) {
            this.currentSessionId = null;
            return;
        }
        SessionDescriptor sessionDescriptor = this.sessions.get(this.currentSessionId);
        SessionDescriptor orAddSession = getOrAddSession(eventTime.windowIndex, eventTime.mediaPeriodId);
        this.currentSessionId = orAddSession.sessionId;
        updateSessions(eventTime);
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
            return;
        }
        if (sessionDescriptor != null && sessionDescriptor.windowSequenceNumber == eventTime.mediaPeriodId.windowSequenceNumber && sessionDescriptor.adMediaPeriodId != null && sessionDescriptor.adMediaPeriodId.adGroupIndex == eventTime.mediaPeriodId.adGroupIndex && sessionDescriptor.adMediaPeriodId.adIndexInAdGroup == eventTime.mediaPeriodId.adIndexInAdGroup) {
            return;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
        this.listener.onAdPlaybackStarted(eventTime, getOrAddSession(eventTime.windowIndex, new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber)).sessionId, orAddSession.sessionId);
    }

    private SessionDescriptor getOrAddSession(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        SessionDescriptor sessionDescriptor = null;
        long j = LongCompanionObject.MAX_VALUE;
        for (SessionDescriptor sessionDescriptor2 : this.sessions.values()) {
            sessionDescriptor2.maybeSetWindowSequenceNumber(i, mediaPeriodId);
            if (sessionDescriptor2.belongsToSession(i, mediaPeriodId)) {
                long j2 = sessionDescriptor2.windowSequenceNumber;
                if (j2 == -1 || j2 < j) {
                    sessionDescriptor = sessionDescriptor2;
                    j = j2;
                } else if (j2 == j && ((SessionDescriptor) Util.castNonNull(sessionDescriptor)).adMediaPeriodId != null && sessionDescriptor2.adMediaPeriodId != null) {
                    sessionDescriptor = sessionDescriptor2;
                }
            }
        }
        if (sessionDescriptor != null) {
            return sessionDescriptor;
        }
        String str = this.sessionIdGenerator.get();
        SessionDescriptor sessionDescriptor3 = new SessionDescriptor(str, i, mediaPeriodId);
        this.sessions.put(str, sessionDescriptor3);
        return sessionDescriptor3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String generateDefaultSessionId() {
        byte[] bArr = new byte[12];
        RANDOM.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    public final class SessionDescriptor {
        private MediaSource.MediaPeriodId adMediaPeriodId;
        private boolean isActive;
        private boolean isCreated;
        private final String sessionId;
        private int windowIndex;
        private long windowSequenceNumber;

        public SessionDescriptor(String str, int i, MediaSource.MediaPeriodId mediaPeriodId) {
            this.sessionId = str;
            this.windowIndex = i;
            this.windowSequenceNumber = mediaPeriodId == null ? -1L : mediaPeriodId.windowSequenceNumber;
            if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
                return;
            }
            this.adMediaPeriodId = mediaPeriodId;
        }

        public boolean tryResolvingToNewTimeline(Timeline timeline, Timeline timeline2) {
            int iResolveWindowIndexToNewTimeline = resolveWindowIndexToNewTimeline(timeline, timeline2, this.windowIndex);
            this.windowIndex = iResolveWindowIndexToNewTimeline;
            if (iResolveWindowIndexToNewTimeline == -1) {
                return false;
            }
            MediaSource.MediaPeriodId mediaPeriodId = this.adMediaPeriodId;
            return mediaPeriodId == null || timeline2.getIndexOfPeriod(mediaPeriodId.periodUid) != -1;
        }

        public boolean belongsToSession(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            if (mediaPeriodId == null) {
                return i == this.windowIndex;
            }
            MediaSource.MediaPeriodId mediaPeriodId2 = this.adMediaPeriodId;
            return mediaPeriodId2 == null ? !mediaPeriodId.isAd() && mediaPeriodId.windowSequenceNumber == this.windowSequenceNumber : mediaPeriodId.windowSequenceNumber == mediaPeriodId2.windowSequenceNumber && mediaPeriodId.adGroupIndex == mediaPeriodId2.adGroupIndex && mediaPeriodId.adIndexInAdGroup == mediaPeriodId2.adIndexInAdGroup;
        }

        public void maybeSetWindowSequenceNumber(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            if (this.windowSequenceNumber == -1 && i == this.windowIndex && mediaPeriodId != null) {
                this.windowSequenceNumber = mediaPeriodId.windowSequenceNumber;
            }
        }

        public boolean isFinishedAtEventTime(AnalyticsListener.EventTime eventTime) {
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId == null) {
                return this.windowIndex != eventTime.windowIndex;
            }
            long j = this.windowSequenceNumber;
            if (j == -1) {
                return false;
            }
            if (mediaPeriodId.windowSequenceNumber > j) {
                return true;
            }
            if (this.adMediaPeriodId == null) {
                return false;
            }
            int indexOfPeriod = eventTime.timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
            int indexOfPeriod2 = eventTime.timeline.getIndexOfPeriod(this.adMediaPeriodId.periodUid);
            MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
            if (mediaPeriodId2.windowSequenceNumber < this.adMediaPeriodId.windowSequenceNumber || indexOfPeriod < indexOfPeriod2) {
                return false;
            }
            if (indexOfPeriod > indexOfPeriod2) {
                return true;
            }
            boolean zIsAd = mediaPeriodId2.isAd();
            MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.mediaPeriodId;
            if (zIsAd) {
                int i = mediaPeriodId3.adGroupIndex;
                int i2 = mediaPeriodId3.adIndexInAdGroup;
                MediaSource.MediaPeriodId mediaPeriodId4 = this.adMediaPeriodId;
                int i3 = mediaPeriodId4.adGroupIndex;
                return i > i3 || (i == i3 && i2 > mediaPeriodId4.adIndexInAdGroup);
            }
            int i4 = mediaPeriodId3.nextAdGroupIndex;
            return i4 == -1 || i4 > this.adMediaPeriodId.adGroupIndex;
        }

        private int resolveWindowIndexToNewTimeline(Timeline timeline, Timeline timeline2, int i) {
            if (i >= timeline.getWindowCount()) {
                if (i < timeline2.getWindowCount()) {
                    return i;
                }
                return -1;
            }
            timeline.getWindow(i, DefaultPlaybackSessionManager.this.window);
            for (int i2 = DefaultPlaybackSessionManager.this.window.firstPeriodIndex; i2 <= DefaultPlaybackSessionManager.this.window.lastPeriodIndex; i2++) {
                int indexOfPeriod = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(i2));
                if (indexOfPeriod != -1) {
                    return timeline2.getPeriod(indexOfPeriod, DefaultPlaybackSessionManager.this.period).windowIndex;
                }
            }
            return -1;
        }
    }
}
