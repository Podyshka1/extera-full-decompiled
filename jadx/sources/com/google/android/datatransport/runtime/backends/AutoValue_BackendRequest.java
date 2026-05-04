package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendRequest;
import java.util.Arrays;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_BackendRequest extends BackendRequest {
    private final Iterable events;
    private final byte[] extras;

    private AutoValue_BackendRequest(Iterable iterable, byte[] bArr) {
        this.events = iterable;
        this.extras = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public Iterable getEvents() {
        return this.events;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public byte[] getExtras() {
        return this.extras;
    }

    public String toString() {
        return "BackendRequest{events=" + this.events + ", extras=" + Arrays.toString(this.extras) + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BackendRequest) {
            BackendRequest backendRequest = (BackendRequest) obj;
            if (this.events.equals(backendRequest.getEvents())) {
                if (Arrays.equals(this.extras, backendRequest instanceof AutoValue_BackendRequest ? ((AutoValue_BackendRequest) backendRequest).extras : backendRequest.getExtras())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.events.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.extras);
    }

    static final class Builder extends BackendRequest.Builder {
        private Iterable events;
        private byte[] extras;

        Builder() {
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest.Builder setEvents(Iterable iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.events = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest.Builder setExtras(byte[] bArr) {
            this.extras = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest build() {
            Iterable iterable = this.events;
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            if (iterable == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET + " events";
            }
            if (!str.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str);
            }
            return new AutoValue_BackendRequest(this.events, this.extras);
        }
    }
}
