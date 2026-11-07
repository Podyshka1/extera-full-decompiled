package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import android.os.Build;
import androidx.media3.common.util.Assertions;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class PlayerId {
    public static final PlayerId UNSET = new PlayerId(_UrlKt.FRAGMENT_ENCODE_SET);
    private final Object equalityToken;
    private final LogSessionIdApi31 logSessionIdApi31;
    public final String name;

    public PlayerId(String str) {
        this.name = str;
        this.logSessionIdApi31 = Build.VERSION.SDK_INT >= 31 ? new LogSessionIdApi31() : null;
        this.equalityToken = new Object();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlayerId)) {
            return false;
        }
        PlayerId playerId = (PlayerId) obj;
        return Objects.equals(this.name, playerId.name) && Objects.equals(this.logSessionIdApi31, playerId.logSessionIdApi31) && Objects.equals(this.equalityToken, playerId.equalityToken);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.logSessionIdApi31, this.equalityToken);
    }

    public synchronized LogSessionId getLogSessionId() {
        return ((LogSessionIdApi31) Assertions.checkNotNull(this.logSessionIdApi31)).logSessionId;
    }

    public synchronized void setLogSessionId(LogSessionId logSessionId) {
        ((LogSessionIdApi31) Assertions.checkNotNull(this.logSessionIdApi31)).setLogSessionId(logSessionId);
    }

    public static final class LogSessionIdApi31 {
        public LogSessionId logSessionId = LogSessionId.LOG_SESSION_ID_NONE;

        public void setLogSessionId(LogSessionId logSessionId) {
            Assertions.checkState(this.logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE));
            this.logSessionId = logSessionId;
        }
    }
}
