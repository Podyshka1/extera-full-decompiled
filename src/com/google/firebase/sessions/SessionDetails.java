package com.google.firebase.sessions;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class SessionDetails {
    public static final Companion Companion = new Companion(null);
    private final String firstSessionId;
    private final String sessionId;
    private final int sessionIndex;
    private final long sessionStartTimestampUs;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionDetails)) {
            return false;
        }
        SessionDetails sessionDetails = (SessionDetails) obj;
        return Intrinsics.areEqual(this.sessionId, sessionDetails.sessionId) && Intrinsics.areEqual(this.firstSessionId, sessionDetails.firstSessionId) && this.sessionIndex == sessionDetails.sessionIndex && this.sessionStartTimestampUs == sessionDetails.sessionStartTimestampUs;
    }

    public int hashCode() {
        return (((((this.sessionId.hashCode() * 31) + this.firstSessionId.hashCode()) * 31) + this.sessionIndex) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.sessionStartTimestampUs);
    }

    public String toString() {
        return "SessionDetails(sessionId=" + this.sessionId + ", firstSessionId=" + this.firstSessionId + ", sessionIndex=" + this.sessionIndex + ", sessionStartTimestampUs=" + this.sessionStartTimestampUs + ')';
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer serializer() {
            return SessionDetails$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SessionDetails(int i, String str, String str2, int i2, long j, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, SessionDetails$$serializer.INSTANCE.getDescriptor());
        }
        this.sessionId = str;
        this.firstSessionId = str2;
        this.sessionIndex = i2;
        this.sessionStartTimestampUs = j;
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(SessionDetails sessionDetails, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeStringElement(serialDescriptor, 0, sessionDetails.sessionId);
        compositeEncoder.encodeStringElement(serialDescriptor, 1, sessionDetails.firstSessionId);
        compositeEncoder.encodeIntElement(serialDescriptor, 2, sessionDetails.sessionIndex);
        compositeEncoder.encodeLongElement(serialDescriptor, 3, sessionDetails.sessionStartTimestampUs);
    }

    public SessionDetails(String sessionId, String firstSessionId, int i, long j) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(firstSessionId, "firstSessionId");
        this.sessionId = sessionId;
        this.firstSessionId = firstSessionId;
        this.sessionIndex = i;
        this.sessionStartTimestampUs = j;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getFirstSessionId() {
        return this.firstSessionId;
    }

    public final int getSessionIndex() {
        return this.sessionIndex;
    }

    public final long getSessionStartTimestampUs() {
        return this.sessionStartTimestampUs;
    }
}
