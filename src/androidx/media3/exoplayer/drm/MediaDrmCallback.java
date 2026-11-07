package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.ExoMediaDrm;
import androidx.media3.exoplayer.source.LoadEventInfo;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public interface MediaDrmCallback {
    Response executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest);

    Response executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest);

    public static final class Response {
        public final byte[] data;
        public final LoadEventInfo loadEventInfo;

        public static final class Builder {
            private final byte[] data;
            private LoadEventInfo loadEventInfo;

            public Builder(byte[] bArr) {
                this.data = bArr;
            }

            public Builder setLoadEventInfo(LoadEventInfo loadEventInfo) {
                this.loadEventInfo = loadEventInfo;
                return this;
            }

            public Response build() {
                return new Response(this);
            }
        }

        private Response(Builder builder) {
            this.data = builder.data;
            this.loadEventInfo = builder.loadEventInfo;
        }
    }
}
