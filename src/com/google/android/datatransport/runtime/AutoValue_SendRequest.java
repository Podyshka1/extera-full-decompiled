package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.runtime.SendRequest;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_SendRequest extends SendRequest {
    private final Encoding encoding;
    private final Event<?> event;
    private final Transformer<?, byte[]> transformer;
    private final TransportContext transportContext;
    private final String transportName;

    private AutoValue_SendRequest(TransportContext transportContext, String str, Event<?> event, Transformer<?, byte[]> transformer, Encoding encoding) {
        this.transportContext = transportContext;
        this.transportName = str;
        this.event = event;
        this.transformer = transformer;
        this.encoding = encoding;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public TransportContext getTransportContext() {
        return this.transportContext;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public String getTransportName() {
        return this.transportName;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public Event<?> getEvent() {
        return this.event;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public Transformer<?, byte[]> getTransformer() {
        return this.transformer;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public Encoding getEncoding() {
        return this.encoding;
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.transportContext + ", transportName=" + this.transportName + ", event=" + this.event + ", transformer=" + this.transformer + ", encoding=" + this.encoding + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SendRequest) {
            SendRequest sendRequest = (SendRequest) obj;
            if (this.transportContext.equals(sendRequest.getTransportContext()) && this.transportName.equals(sendRequest.getTransportName()) && this.event.equals(sendRequest.getEvent()) && this.transformer.equals(sendRequest.getTransformer()) && this.encoding.equals(sendRequest.getEncoding())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.encoding.hashCode() ^ ((((((((this.transportContext.hashCode() ^ 1000003) * 1000003) ^ this.transportName.hashCode()) * 1000003) ^ this.event.hashCode()) * 1000003) ^ this.transformer.hashCode()) * 1000003);
    }

    public static final class Builder extends SendRequest.Builder {
        private Encoding encoding;
        private Event<?> event;
        private Transformer<?, byte[]> transformer;
        private TransportContext transportContext;
        private String transportName;

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransportContext(TransportContext transportContext) {
            if (transportContext == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null transportContext");
                return null;
            }
            this.transportContext = transportContext;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransportName(String str) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null transportName");
                return null;
            }
            this.transportName = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setEvent(Event<?> event) {
            if (event == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null event");
                return null;
            }
            this.event = event;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransformer(Transformer<?, byte[]> transformer) {
            if (transformer == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null transformer");
                return null;
            }
            this.transformer = transformer;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setEncoding(Encoding encoding) {
            if (encoding == null) {
                f$$ExternalSyntheticBUOutline2.m213m("Null encoding");
                return null;
            }
            this.encoding = encoding;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest build() {
            String strConcat;
            if (this.transportContext != null) {
                strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                strConcat = " transportContext";
            }
            if (this.transportName == null) {
                strConcat = strConcat.concat(" transportName");
            }
            if (this.event == null) {
                strConcat = strConcat.concat(" event");
            }
            if (this.transformer == null) {
                strConcat = strConcat.concat(" transformer");
            }
            if (this.encoding == null) {
                strConcat = strConcat.concat(" encoding");
            }
            if (!strConcat.isEmpty()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(strConcat));
                return null;
            }
            return new AutoValue_SendRequest(this.transportContext, this.transportName, this.event, this.transformer, this.encoding);
        }
    }
}
