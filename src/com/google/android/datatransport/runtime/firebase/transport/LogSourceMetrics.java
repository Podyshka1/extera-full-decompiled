package com.google.android.datatransport.runtime.firebase.transport;

import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class LogSourceMetrics {
    private static final LogSourceMetrics DEFAULT_INSTANCE = new Builder().build();
    private final List log_event_dropped_;
    private final String log_source_;

    LogSourceMetrics(String str, List list) {
        this.log_source_ = str;
        this.log_event_dropped_ = list;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public String getLogSource() {
        return this.log_source_;
    }

    public List getLogEventDroppedList() {
        return this.log_event_dropped_;
    }

    public static final class Builder {
        private String log_source_ = _UrlKt.FRAGMENT_ENCODE_SET;
        private List log_event_dropped_ = new ArrayList();

        Builder() {
        }

        public LogSourceMetrics build() {
            return new LogSourceMetrics(this.log_source_, DesugarCollections.unmodifiableList(this.log_event_dropped_));
        }

        public Builder setLogSource(String str) {
            this.log_source_ = str;
            return this;
        }

        public Builder setLogEventDroppedList(List list) {
            this.log_event_dropped_ = list;
            return this;
        }
    }
}
