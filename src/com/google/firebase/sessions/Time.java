package com.google.firebase.sessions;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes.dex */
public final class Time {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: ms */
    private final long f590ms;
    private final long seconds;

    /* JADX INFO: renamed from: us */
    private final long f591us;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Time) && this.f590ms == ((Time) obj).f590ms;
    }

    public int hashCode() {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.f590ms);
    }

    public String toString() {
        return "Time(ms=" + this.f590ms + ')';
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer serializer() {
            return Time$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Time(int i, long j, long j2, long j3, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, Time$$serializer.INSTANCE.getDescriptor());
        }
        this.f590ms = j;
        this.f591us = (i & 2) == 0 ? ((long) MediaDataController.MAX_STYLE_RUNS_COUNT) * j : j2;
        if ((i & 4) == 0) {
            this.seconds = j / ((long) MediaDataController.MAX_STYLE_RUNS_COUNT);
        } else {
            this.seconds = j3;
        }
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(Time time, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeLongElement(serialDescriptor, 0, time.f590ms);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || time.f591us != time.f590ms * ((long) MediaDataController.MAX_STYLE_RUNS_COUNT)) {
            compositeEncoder.encodeLongElement(serialDescriptor, 1, time.f591us);
        }
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) && time.seconds == time.f590ms / ((long) MediaDataController.MAX_STYLE_RUNS_COUNT)) {
            return;
        }
        compositeEncoder.encodeLongElement(serialDescriptor, 2, time.seconds);
    }

    public Time(long j) {
        this.f590ms = j;
        long j2 = MediaDataController.MAX_STYLE_RUNS_COUNT;
        this.f591us = j * j2;
        this.seconds = j / j2;
    }

    public final long getUs() {
        return this.f591us;
    }

    public final long getSeconds() {
        return this.seconds;
    }

    /* JADX INFO: renamed from: minus-5sfh64U, reason: not valid java name */
    public final long m3567minus5sfh64U(Time time) {
        Intrinsics.checkNotNullParameter(time, "time");
        Duration.Companion companion = Duration.Companion;
        return DurationKt.toDuration(this.f590ms - time.f590ms, DurationUnit.MILLISECONDS);
    }
}
