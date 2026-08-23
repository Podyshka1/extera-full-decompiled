package com.google.firebase.sessions;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessData {
    public static final Companion Companion = new Companion(null);
    private final int pid;
    private final String uuid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProcessData)) {
            return false;
        }
        ProcessData processData = (ProcessData) obj;
        return this.pid == processData.pid && Intrinsics.areEqual(this.uuid, processData.uuid);
    }

    public int hashCode() {
        return (this.pid * 31) + this.uuid.hashCode();
    }

    public String toString() {
        return "ProcessData(pid=" + this.pid + ", uuid=" + this.uuid + ')';
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer serializer() {
            return ProcessData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ProcessData(int i, int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ProcessData$$serializer.INSTANCE.getDescriptor());
        }
        this.pid = i2;
        this.uuid = str;
    }

    public ProcessData(int i, String uuid) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        this.pid = i;
        this.uuid = uuid;
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(ProcessData processData, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, processData.pid);
        compositeEncoder.encodeStringElement(serialDescriptor, 1, processData.uuid);
    }

    public final int getPid() {
        return this.pid;
    }

    public final String getUuid() {
        return this.uuid;
    }
}
