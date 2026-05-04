package org.webrtc;

import java.util.List;
import java.util.Map;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes7.dex */
public class RtpCapabilities {
    public List<CodecCapability> codecs;
    public List<HeaderExtensionCapability> headerExtensions;

    public static class CodecCapability {
        public Integer clockRate;
        public MediaStreamTrack.MediaType kind;
        public String mimeType;
        public String name;
        public Integer numChannels;
        public Map<String, String> parameters;
        public int preferredPayloadType;

        public CodecCapability() {
        }

        @CalledByNative("CodecCapability")
        CodecCapability(int i, String str, MediaStreamTrack.MediaType mediaType, Integer num, Integer num2, String str2, Map<String, String> map) {
            this.preferredPayloadType = i;
            this.name = str;
            this.kind = mediaType;
            this.clockRate = num;
            this.numChannels = num2;
            this.parameters = map;
            this.mimeType = str2;
        }

        @CalledByNative("CodecCapability")
        int getPreferredPayloadType() {
            return this.preferredPayloadType;
        }

        @CalledByNative("CodecCapability")
        String getName() {
            return this.name;
        }

        @CalledByNative("CodecCapability")
        MediaStreamTrack.MediaType getKind() {
            return this.kind;
        }

        @CalledByNative("CodecCapability")
        Integer getClockRate() {
            return this.clockRate;
        }

        @CalledByNative("CodecCapability")
        Integer getNumChannels() {
            return this.numChannels;
        }

        @CalledByNative("CodecCapability")
        Map getParameters() {
            return this.parameters;
        }
    }

    public static class HeaderExtensionCapability {
        private final boolean preferredEncrypted;
        private final int preferredId;
        private final String uri;

        @CalledByNative("HeaderExtensionCapability")
        HeaderExtensionCapability(String str, int i, boolean z) {
            this.uri = str;
            this.preferredId = i;
            this.preferredEncrypted = z;
        }

        @CalledByNative("HeaderExtensionCapability")
        public String getUri() {
            return this.uri;
        }

        @CalledByNative("HeaderExtensionCapability")
        public int getPreferredId() {
            return this.preferredId;
        }

        @CalledByNative("HeaderExtensionCapability")
        public boolean getPreferredEncrypted() {
            return this.preferredEncrypted;
        }
    }

    @CalledByNative
    RtpCapabilities(List<CodecCapability> list, List<HeaderExtensionCapability> list2) {
        this.headerExtensions = list2;
        this.codecs = list;
    }

    @CalledByNative
    public List<HeaderExtensionCapability> getHeaderExtensions() {
        return this.headerExtensions;
    }

    @CalledByNative
    List<CodecCapability> getCodecs() {
        return this.codecs;
    }
}
