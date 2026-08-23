package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class LogSourceMetrics {
    private static final LogSourceMetrics DEFAULT_INSTANCE = new Builder().build();
    private final List<LogEventDropped> log_event_dropped_;
    private final String log_source_;

    public LogSourceMetrics(String str, List<LogEventDropped> list) {
        this.log_source_ = str;
        this.log_event_dropped_ = list;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 1)
    public String getLogSource() {
        return this.log_source_;
    }

    @Protobuf(tag = 2)
    public List<LogEventDropped> getLogEventDroppedList() {
        return this.log_event_dropped_;
    }

    public static final class Builder {
        private String log_source_ = _UrlKt.FRAGMENT_ENCODE_SET;
        private List<LogEventDropped> log_event_dropped_ = new ArrayList();

        public LogSourceMetrics build() {
            return new LogSourceMetrics(this.log_source_, Collections.unmodifiableList(this.log_event_dropped_));
        }

        public Builder setLogSource(String str) {
            this.log_source_ = str;
            return this;
        }

        public Builder setLogEventDroppedList(List<LogEventDropped> list) {
            this.log_event_dropped_ = list;
            return this;
        }
    }
}
