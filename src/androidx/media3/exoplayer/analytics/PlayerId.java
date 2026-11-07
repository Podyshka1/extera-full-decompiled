package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import android.os.Build;
import com.google.common.base.Preconditions;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class PlayerId {
    private final LogSessionIdApi31 logSessionIdApi31;
    public final String name;
    public static final PlayerId UNSET = new PlayerId(_UrlKt.FRAGMENT_ENCODE_SET);
    public static final PlayerId PRELOAD = new PlayerId("preload");

    public PlayerId(String str) {
        this.name = str;
        this.logSessionIdApi31 = Build.VERSION.SDK_INT >= 31 ? new LogSessionIdApi31() : null;
    }

    public synchronized LogSessionId getLogSessionId() {
        return ((LogSessionIdApi31) Preconditions.checkNotNull(this.logSessionIdApi31)).logSessionId;
    }

    public synchronized void setLogSessionId(LogSessionId logSessionId) {
        ((LogSessionIdApi31) Preconditions.checkNotNull(this.logSessionIdApi31)).setLogSessionId(logSessionId);
    }

    public static final class LogSessionIdApi31 {
        public LogSessionId logSessionId = LogSessionId.LOG_SESSION_ID_NONE;

        public void setLogSessionId(LogSessionId logSessionId) {
            Preconditions.checkState(this.logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE));
            this.logSessionId = logSessionId;
        }
    }
}
