package com.google.firebase.sessions;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class SessionData {
    private final Time backgroundTime;
    private final Map processDataMap;
    private final SessionDetails sessionDetails;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer[] $childSerializers = {null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, ProcessData$$serializer.INSTANCE)};

    public static /* synthetic */ SessionData copy$default(SessionData sessionData, SessionDetails sessionDetails, Time time, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            sessionDetails = sessionData.sessionDetails;
        }
        if ((i & 2) != 0) {
            time = sessionData.backgroundTime;
        }
        if ((i & 4) != 0) {
            map = sessionData.processDataMap;
        }
        return sessionData.copy(sessionDetails, time, map);
    }

    public final SessionData copy(SessionDetails sessionDetails, Time time, Map map) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        return new SessionData(sessionDetails, time, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionData)) {
            return false;
        }
        SessionData sessionData = (SessionData) obj;
        return Intrinsics.areEqual(this.sessionDetails, sessionData.sessionDetails) && Intrinsics.areEqual(this.backgroundTime, sessionData.backgroundTime) && Intrinsics.areEqual(this.processDataMap, sessionData.processDataMap);
    }

    public int hashCode() {
        int iHashCode = this.sessionDetails.hashCode() * 31;
        Time time = this.backgroundTime;
        int iHashCode2 = (iHashCode + (time == null ? 0 : time.hashCode())) * 31;
        Map map = this.processDataMap;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "SessionData(sessionDetails=" + this.sessionDetails + ", backgroundTime=" + this.backgroundTime + ", processDataMap=" + this.processDataMap + ')';
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer serializer() {
            return SessionData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SessionData(int i, SessionDetails sessionDetails, Time time, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, SessionData$$serializer.INSTANCE.getDescriptor());
        }
        this.sessionDetails = sessionDetails;
        if ((i & 2) == 0) {
            this.backgroundTime = null;
        } else {
            this.backgroundTime = time;
        }
        if ((i & 4) == 0) {
            this.processDataMap = null;
        } else {
            this.processDataMap = map;
        }
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(SessionData sessionData, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, SessionDetails$$serializer.INSTANCE, sessionData.sessionDetails);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || sessionData.backgroundTime != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, Time$$serializer.INSTANCE, sessionData.backgroundTime);
        }
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) && sessionData.processDataMap == null) {
            return;
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, kSerializerArr[2], sessionData.processDataMap);
    }

    public SessionData(SessionDetails sessionDetails, Time time, Map map) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        this.sessionDetails = sessionDetails;
        this.backgroundTime = time;
        this.processDataMap = map;
    }

    public /* synthetic */ SessionData(SessionDetails sessionDetails, Time time, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionDetails, (i & 2) != 0 ? null : time, (i & 4) != 0 ? null : map);
    }

    public final SessionDetails getSessionDetails() {
        return this.sessionDetails;
    }

    public final Time getBackgroundTime() {
        return this.backgroundTime;
    }

    public final Map getProcessDataMap() {
        return this.processDataMap;
    }
}
