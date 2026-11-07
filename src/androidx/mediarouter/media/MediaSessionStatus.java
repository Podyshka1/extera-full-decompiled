package androidx.mediarouter.media;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.core.util.TimeUtils;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaSessionStatus {
    static final String KEY_EXTRAS = "extras";
    static final String KEY_QUEUE_PAUSED = "queuePaused";
    static final String KEY_SESSION_STATE = "sessionState";
    static final String KEY_TIMESTAMP = "timestamp";
    public static final int SESSION_STATE_ACTIVE = 0;
    public static final int SESSION_STATE_ENDED = 1;
    public static final int SESSION_STATE_INVALIDATED = 2;
    final Bundle mBundle;

    public MediaSessionStatus(Bundle bundle) {
        this.mBundle = bundle;
    }

    public long getTimestamp() {
        return this.mBundle.getLong(KEY_TIMESTAMP);
    }

    public int getSessionState() {
        return this.mBundle.getInt(KEY_SESSION_STATE, 2);
    }

    public boolean isQueuePaused() {
        return this.mBundle.getBoolean(KEY_QUEUE_PAUSED);
    }

    public Bundle getExtras() {
        return this.mBundle.getBundle(KEY_EXTRAS);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MediaSessionStatus{ timestamp=");
        TimeUtils.formatDuration(SystemClock.elapsedRealtime() - getTimestamp(), sb);
        sb.append(" ms ago");
        sb.append(", sessionState=");
        sb.append(sessionStateToString(getSessionState()));
        sb.append(", queuePaused=");
        sb.append(isQueuePaused());
        sb.append(", extras=");
        sb.append(getExtras());
        sb.append(" }");
        return sb.toString();
    }

    private static String sessionStateToString(int i) {
        if (i == 0) {
            return "active";
        }
        if (i == 1) {
            return "ended";
        }
        if (i == 2) {
            return "invalidated";
        }
        return Integer.toString(i);
    }

    public Bundle asBundle() {
        return this.mBundle;
    }

    public static MediaSessionStatus fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new MediaSessionStatus(bundle);
        }
        return null;
    }

    public static final class Builder {
        private final Bundle mBundle;

        public Builder(int i) {
            this.mBundle = new Bundle();
            setTimestamp(SystemClock.elapsedRealtime());
            setSessionState(i);
        }

        public Builder(MediaSessionStatus mediaSessionStatus) {
            if (mediaSessionStatus == null) {
                f$$ExternalSyntheticBUOutline1.m212m("status must not be null");
                throw null;
            }
            this.mBundle = new Bundle(mediaSessionStatus.mBundle);
        }

        public Builder setTimestamp(long j) {
            this.mBundle.putLong(MediaSessionStatus.KEY_TIMESTAMP, j);
            return this;
        }

        public Builder setSessionState(int i) {
            this.mBundle.putInt(MediaSessionStatus.KEY_SESSION_STATE, i);
            return this;
        }

        public Builder setQueuePaused(boolean z) {
            this.mBundle.putBoolean(MediaSessionStatus.KEY_QUEUE_PAUSED, z);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            Bundle bundle2 = this.mBundle;
            if (bundle != null) {
                bundle2.putBundle(MediaSessionStatus.KEY_EXTRAS, new Bundle(bundle));
                return this;
            }
            bundle2.putBundle(MediaSessionStatus.KEY_EXTRAS, null);
            return this;
        }

        public MediaSessionStatus build() {
            return new MediaSessionStatus(this.mBundle);
        }
    }
}
