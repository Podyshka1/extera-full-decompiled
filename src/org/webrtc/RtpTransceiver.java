package org.webrtc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.webrtc.MediaStreamTrack;
import org.webrtc.RtpCapabilities;
import org.webrtc.RtpParameters;

/* JADX INFO: loaded from: classes4.dex */
public class RtpTransceiver {
    private RtpReceiver cachedReceiver;
    private RtpSender cachedSender;
    private long nativeRtpTransceiver;

    private static native RtpTransceiverDirection nativeCurrentDirection(long j);

    private static native RtpTransceiverDirection nativeDirection(long j);

    private static native MediaStreamTrack.MediaType nativeGetMediaType(long j);

    private static native String nativeGetMid(long j);

    private static native RtpReceiver nativeGetReceiver(long j);

    private static native RtpSender nativeGetSender(long j);

    private static native void nativeSetCodecPreferences(long j, List<RtpCapabilities.CodecCapability> list);

    private static native boolean nativeSetDirection(long j, RtpTransceiverDirection rtpTransceiverDirection);

    private static native void nativeStopInternal(long j);

    private static native void nativeStopStandard(long j);

    private static native boolean nativeStopped(long j);

    public enum RtpTransceiverDirection {
        SEND_RECV(0),
        SEND_ONLY(1),
        RECV_ONLY(2),
        INACTIVE(3),
        STOPPED(4);

        private final int nativeIndex;

        RtpTransceiverDirection(int i) {
            this.nativeIndex = i;
        }

        @CalledByNative("RtpTransceiverDirection")
        public int getNativeIndex() {
            return this.nativeIndex;
        }

        @CalledByNative("RtpTransceiverDirection")
        public static RtpTransceiverDirection fromNativeIndex(int i) {
            for (RtpTransceiverDirection rtpTransceiverDirection : values()) {
                if (rtpTransceiverDirection.getNativeIndex() == i) {
                    return rtpTransceiverDirection;
                }
            }
            CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Uknown native RtpTransceiverDirection type", i);
            return null;
        }
    }

    public static final class RtpTransceiverInit {
        private final RtpTransceiverDirection direction;
        private final List<RtpParameters.Encoding> sendEncodings;
        private final List<String> streamIds;

        public RtpTransceiverInit() {
            this(RtpTransceiverDirection.SEND_RECV);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public RtpTransceiverInit(RtpTransceiverDirection rtpTransceiverDirection) {
            List list = Collections.EMPTY_LIST;
            this(rtpTransceiverDirection, list, list);
        }

        public RtpTransceiverInit(RtpTransceiverDirection rtpTransceiverDirection, List<String> list) {
            this(rtpTransceiverDirection, list, Collections.EMPTY_LIST);
        }

        public RtpTransceiverInit(RtpTransceiverDirection rtpTransceiverDirection, List<String> list, List<RtpParameters.Encoding> list2) {
            this.direction = rtpTransceiverDirection;
            this.streamIds = new ArrayList(list);
            this.sendEncodings = new ArrayList(list2);
        }

        @CalledByNative("RtpTransceiverInit")
        public int getDirectionNativeIndex() {
            return this.direction.getNativeIndex();
        }

        @CalledByNative("RtpTransceiverInit")
        public List<String> getStreamIds() {
            return new ArrayList(this.streamIds);
        }

        @CalledByNative("RtpTransceiverInit")
        public List<RtpParameters.Encoding> getSendEncodings() {
            return new ArrayList(this.sendEncodings);
        }
    }

    @CalledByNative
    public RtpTransceiver(long j) {
        this.nativeRtpTransceiver = j;
        this.cachedSender = nativeGetSender(j);
        this.cachedReceiver = nativeGetReceiver(j);
    }

    public MediaStreamTrack.MediaType getMediaType() {
        checkRtpTransceiverExists();
        return nativeGetMediaType(this.nativeRtpTransceiver);
    }

    public String getMid() {
        checkRtpTransceiverExists();
        return nativeGetMid(this.nativeRtpTransceiver);
    }

    public RtpSender getSender() {
        return this.cachedSender;
    }

    public RtpReceiver getReceiver() {
        return this.cachedReceiver;
    }

    public boolean isStopped() {
        checkRtpTransceiverExists();
        return nativeStopped(this.nativeRtpTransceiver);
    }

    public RtpTransceiverDirection getDirection() {
        checkRtpTransceiverExists();
        return nativeDirection(this.nativeRtpTransceiver);
    }

    public RtpTransceiverDirection getCurrentDirection() {
        checkRtpTransceiverExists();
        return nativeCurrentDirection(this.nativeRtpTransceiver);
    }

    public boolean setDirection(RtpTransceiverDirection rtpTransceiverDirection) {
        checkRtpTransceiverExists();
        return nativeSetDirection(this.nativeRtpTransceiver, rtpTransceiverDirection);
    }

    public void stop() {
        checkRtpTransceiverExists();
        nativeStopInternal(this.nativeRtpTransceiver);
    }

    public void setCodecPreferences(List<RtpCapabilities.CodecCapability> list) {
        checkRtpTransceiverExists();
        nativeSetCodecPreferences(this.nativeRtpTransceiver, list);
    }

    public void stopInternal() {
        checkRtpTransceiverExists();
        nativeStopInternal(this.nativeRtpTransceiver);
    }

    public void stopStandard() {
        checkRtpTransceiverExists();
        nativeStopStandard(this.nativeRtpTransceiver);
    }

    @CalledByNative
    public void dispose() {
        checkRtpTransceiverExists();
        this.cachedSender.dispose();
        this.cachedReceiver.dispose();
        JniCommon.nativeReleaseRef(this.nativeRtpTransceiver);
        this.nativeRtpTransceiver = 0L;
    }

    private void checkRtpTransceiverExists() {
        if (this.nativeRtpTransceiver != 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("RtpTransceiver has been disposed.");
    }
}
