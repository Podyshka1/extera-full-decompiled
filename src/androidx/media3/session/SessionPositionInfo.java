package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class SessionPositionInfo {
    public static final SessionPositionInfo DEFAULT;
    public static final Player.PositionInfo DEFAULT_POSITION_INFO;
    private static final String FIELD_BUFFERED_PERCENTAGE;
    static final String FIELD_BUFFERED_POSITION_MS;
    static final String FIELD_CONTENT_BUFFERED_POSITION_MS;
    private static final String FIELD_CONTENT_DURATION_MS;
    private static final String FIELD_CURRENT_LIVE_OFFSET_MS;
    private static final String FIELD_DURATION_MS;
    private static final String FIELD_EVENT_TIME_MS;
    private static final String FIELD_IS_PLAYING_AD;
    static final String FIELD_POSITION_INFO;
    private static final String FIELD_TOTAL_BUFFERED_DURATION_MS;
    public final int bufferedPercentage;
    public final long bufferedPositionMs;
    public final long contentBufferedPositionMs;
    public final long contentDurationMs;
    public final long currentLiveOffsetMs;
    public final long durationMs;
    public final long eventTimeMs;
    public final boolean isPlayingAd;
    public final Player.PositionInfo positionInfo;
    public final long totalBufferedDurationMs;

    static {
        Player.PositionInfo positionInfo = new Player.PositionInfo(null, 0, null, null, 0, 0L, 0L, -1, -1);
        DEFAULT_POSITION_INFO = positionInfo;
        DEFAULT = new SessionPositionInfo(positionInfo, false, -9223372036854775807L, -9223372036854775807L, 0L, 0, 0L, -9223372036854775807L, -9223372036854775807L, 0L);
        FIELD_POSITION_INFO = Util.intToStringMaxRadix(0);
        FIELD_IS_PLAYING_AD = Util.intToStringMaxRadix(1);
        FIELD_EVENT_TIME_MS = Util.intToStringMaxRadix(2);
        FIELD_DURATION_MS = Util.intToStringMaxRadix(3);
        FIELD_BUFFERED_POSITION_MS = Util.intToStringMaxRadix(4);
        FIELD_BUFFERED_PERCENTAGE = Util.intToStringMaxRadix(5);
        FIELD_TOTAL_BUFFERED_DURATION_MS = Util.intToStringMaxRadix(6);
        FIELD_CURRENT_LIVE_OFFSET_MS = Util.intToStringMaxRadix(7);
        FIELD_CONTENT_DURATION_MS = Util.intToStringMaxRadix(8);
        FIELD_CONTENT_BUFFERED_POSITION_MS = Util.intToStringMaxRadix(9);
    }

    public SessionPositionInfo(Player.PositionInfo positionInfo, boolean z, long j, long j2, long j3, int i, long j4, long j5, long j6, long j7) {
        Preconditions.checkArgument(z == (positionInfo.adGroupIndex != -1));
        this.positionInfo = positionInfo;
        this.isPlayingAd = z;
        this.eventTimeMs = j;
        this.durationMs = j2;
        this.bufferedPositionMs = j3;
        this.bufferedPercentage = i;
        this.totalBufferedDurationMs = j4;
        this.currentLiveOffsetMs = j5;
        this.contentDurationMs = j6;
        this.contentBufferedPositionMs = j7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SessionPositionInfo.class == obj.getClass()) {
            SessionPositionInfo sessionPositionInfo = (SessionPositionInfo) obj;
            if (this.eventTimeMs == sessionPositionInfo.eventTimeMs && this.positionInfo.equals(sessionPositionInfo.positionInfo) && this.isPlayingAd == sessionPositionInfo.isPlayingAd && this.durationMs == sessionPositionInfo.durationMs && this.bufferedPositionMs == sessionPositionInfo.bufferedPositionMs && this.bufferedPercentage == sessionPositionInfo.bufferedPercentage && this.totalBufferedDurationMs == sessionPositionInfo.totalBufferedDurationMs && this.currentLiveOffsetMs == sessionPositionInfo.currentLiveOffsetMs && this.contentDurationMs == sessionPositionInfo.contentDurationMs && this.contentBufferedPositionMs == sessionPositionInfo.contentBufferedPositionMs) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.positionInfo, Boolean.valueOf(this.isPlayingAd));
    }

    public String toString() {
        return "SessionPositionInfo {PositionInfo {mediaItemIndex=" + this.positionInfo.mediaItemIndex + ", periodIndex=" + this.positionInfo.periodIndex + ", positionMs=" + this.positionInfo.positionMs + ", contentPositionMs=" + this.positionInfo.contentPositionMs + ", adGroupIndex=" + this.positionInfo.adGroupIndex + ", adIndexInAdGroup=" + this.positionInfo.adIndexInAdGroup + "}, isPlayingAd=" + this.isPlayingAd + ", eventTimeMs=" + this.eventTimeMs + ", durationMs=" + this.durationMs + ", bufferedPositionMs=" + this.bufferedPositionMs + ", bufferedPercentage=" + this.bufferedPercentage + ", totalBufferedDurationMs=" + this.totalBufferedDurationMs + ", currentLiveOffsetMs=" + this.currentLiveOffsetMs + ", contentDurationMs=" + this.contentDurationMs + ", contentBufferedPositionMs=" + this.contentBufferedPositionMs + "}";
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public androidx.media3.session.SessionPositionInfo filterByAvailableCommands(boolean r21, boolean r22) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            if (r1 == 0) goto Lb
            if (r2 == 0) goto Lb
            return r0
        Lb:
            androidx.media3.session.SessionPositionInfo r3 = new androidx.media3.session.SessionPositionInfo
            androidx.media3.common.Player$PositionInfo r4 = r0.positionInfo
            androidx.media3.common.Player$PositionInfo r2 = r4.filterByAvailableCommands(r1, r2)
            r4 = 0
            if (r1 == 0) goto L1e
            boolean r5 = r0.isPlayingAd
            if (r5 == 0) goto L1e
            r5 = 1
            r7 = r4
        L1c:
            r6 = r3
            goto L21
        L1e:
            r5 = r4
            r7 = r5
            goto L1c
        L21:
            long r3 = r0.eventTimeMs
            if (r1 == 0) goto L28
            long r10 = r0.durationMs
            goto L2d
        L28:
            r10 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L2d:
            if (r1 == 0) goto L32
            long r14 = r0.bufferedPositionMs
            goto L34
        L32:
            r14 = 0
        L34:
            if (r1 == 0) goto L38
            int r7 = r0.bufferedPercentage
        L38:
            if (r1 == 0) goto L3d
            long r8 = r0.totalBufferedDurationMs
            goto L3f
        L3d:
            r8 = 0
        L3f:
            if (r1 == 0) goto L44
            long r12 = r0.currentLiveOffsetMs
            goto L49
        L44:
            r12 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L49:
            r22 = r2
            if (r1 == 0) goto L52
            long r1 = r0.contentDurationMs
            r16 = r1
            goto L57
        L52:
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L57:
            if (r21 == 0) goto L6a
            long r0 = r0.contentBufferedPositionMs
            r2 = r5
            r18 = r0
            r0 = r6
            r5 = r10
            r10 = r8
            r9 = r7
            r7 = r14
            r14 = r16
            r16 = r18
        L67:
            r1 = r22
            goto L75
        L6a:
            r2 = r5
            r0 = r6
            r5 = r10
            r10 = r8
            r9 = r7
            r7 = r14
            r14 = r16
            r16 = 0
            goto L67
        L75:
            r0.<init>(r1, r2, r3, r5, r7, r9, r10, r12, r14, r16)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.session.SessionPositionInfo.filterByAvailableCommands(boolean, boolean):androidx.media3.session.SessionPositionInfo");
    }

    public Bundle toBundle(int i) {
        Bundle bundle = new Bundle();
        if (i < 3 || !DEFAULT_POSITION_INFO.equalsForBundling(this.positionInfo)) {
            bundle.putBundle(FIELD_POSITION_INFO, this.positionInfo.toBundle(i));
        }
        boolean z = this.isPlayingAd;
        if (z) {
            bundle.putBoolean(FIELD_IS_PLAYING_AD, z);
        }
        long j = this.eventTimeMs;
        if (j != -9223372036854775807L) {
            bundle.putLong(FIELD_EVENT_TIME_MS, j);
        }
        long j2 = this.durationMs;
        if (j2 != -9223372036854775807L) {
            bundle.putLong(FIELD_DURATION_MS, j2);
        }
        if (i < 3 || this.bufferedPositionMs != 0) {
            bundle.putLong(FIELD_BUFFERED_POSITION_MS, this.bufferedPositionMs);
        }
        int i2 = this.bufferedPercentage;
        if (i2 != 0) {
            bundle.putInt(FIELD_BUFFERED_PERCENTAGE, i2);
        }
        long j3 = this.totalBufferedDurationMs;
        if (j3 != 0) {
            bundle.putLong(FIELD_TOTAL_BUFFERED_DURATION_MS, j3);
        }
        long j4 = this.currentLiveOffsetMs;
        if (j4 != -9223372036854775807L) {
            bundle.putLong(FIELD_CURRENT_LIVE_OFFSET_MS, j4);
        }
        long j5 = this.contentDurationMs;
        if (j5 != -9223372036854775807L) {
            bundle.putLong(FIELD_CONTENT_DURATION_MS, j5);
        }
        if (i >= 3 && this.contentBufferedPositionMs == 0) {
            return bundle;
        }
        bundle.putLong(FIELD_CONTENT_BUFFERED_POSITION_MS, this.contentBufferedPositionMs);
        return bundle;
    }
}
