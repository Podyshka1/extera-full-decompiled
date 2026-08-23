package androidx.work;

import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class Constraints {
    public static final Companion Companion = new Companion(null);
    public static final Constraints NONE = new Constraints(null, false, false, false, 15, null);
    private final long contentTriggerMaxDelayMillis;
    private final long contentTriggerUpdateDelayMillis;
    private final Set contentUriTriggers;
    private final NetworkRequestCompat requiredNetworkRequestCompat;
    private final NetworkType requiredNetworkType;
    private final boolean requiresBatteryNotLow;
    private final boolean requiresCharging;
    private final boolean requiresDeviceIdle;
    private final boolean requiresStorageNotLow;

    public final NetworkType getRequiredNetworkType() {
        return this.requiredNetworkType;
    }

    public final NetworkRequest getRequiredNetworkRequest() {
        return this.requiredNetworkRequestCompat.getNetworkRequest();
    }

    public final NetworkRequestCompat getRequiredNetworkRequestCompat$work_runtime_release() {
        return this.requiredNetworkRequestCompat;
    }

    public final long getContentTriggerUpdateDelayMillis() {
        return this.contentTriggerUpdateDelayMillis;
    }

    public final long getContentTriggerMaxDelayMillis() {
        return this.contentTriggerMaxDelayMillis;
    }

    public final Set getContentUriTriggers() {
        return this.contentUriTriggers;
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Constraints(NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3) {
        this(requiredNetworkType, z, false, z2, z3);
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Constraints(NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3, boolean z4) {
        this(requiredNetworkType, z, z2, z3, z4, -1L, 0L, null, 192, null);
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) != 0 ? false : z4, (i & 32) != 0 ? -1L : j, (i & 64) != 0 ? -1L : j2, (i & 128) != 0 ? SetsKt.emptySet() : set);
    }

    public Constraints(NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set contentUriTriggers) {
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
        Intrinsics.checkNotNullParameter(contentUriTriggers, "contentUriTriggers");
        this.requiredNetworkRequestCompat = new NetworkRequestCompat(null, 1, null);
        this.requiredNetworkType = requiredNetworkType;
        this.requiresCharging = z;
        this.requiresDeviceIdle = z2;
        this.requiresBatteryNotLow = z3;
        this.requiresStorageNotLow = z4;
        this.contentTriggerUpdateDelayMillis = j;
        this.contentTriggerMaxDelayMillis = j2;
        this.contentUriTriggers = contentUriTriggers;
    }

    public Constraints(NetworkRequestCompat requiredNetworkRequestCompat, NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set contentUriTriggers) {
        Intrinsics.checkNotNullParameter(requiredNetworkRequestCompat, "requiredNetworkRequestCompat");
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
        Intrinsics.checkNotNullParameter(contentUriTriggers, "contentUriTriggers");
        this.requiredNetworkRequestCompat = requiredNetworkRequestCompat;
        this.requiredNetworkType = requiredNetworkType;
        this.requiresCharging = z;
        this.requiresDeviceIdle = z2;
        this.requiresBatteryNotLow = z3;
        this.requiresStorageNotLow = z4;
        this.contentTriggerUpdateDelayMillis = j;
        this.contentTriggerMaxDelayMillis = j2;
        this.contentUriTriggers = contentUriTriggers;
    }

    public Constraints(Constraints other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.requiresCharging = other.requiresCharging;
        this.requiresDeviceIdle = other.requiresDeviceIdle;
        this.requiredNetworkRequestCompat = other.requiredNetworkRequestCompat;
        this.requiredNetworkType = other.requiredNetworkType;
        this.requiresBatteryNotLow = other.requiresBatteryNotLow;
        this.requiresStorageNotLow = other.requiresStorageNotLow;
        this.contentUriTriggers = other.contentUriTriggers;
        this.contentTriggerUpdateDelayMillis = other.contentTriggerUpdateDelayMillis;
        this.contentTriggerMaxDelayMillis = other.contentTriggerMaxDelayMillis;
    }

    public final boolean requiresCharging() {
        return this.requiresCharging;
    }

    public final boolean requiresDeviceIdle() {
        return this.requiresDeviceIdle;
    }

    public final boolean requiresBatteryNotLow() {
        return this.requiresBatteryNotLow;
    }

    public final boolean requiresStorageNotLow() {
        return this.requiresStorageNotLow;
    }

    public final boolean hasContentUriTriggers() {
        return Build.VERSION.SDK_INT < 24 || !this.contentUriTriggers.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Constraints.class, obj.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) obj;
        if (this.requiresCharging == constraints.requiresCharging && this.requiresDeviceIdle == constraints.requiresDeviceIdle && this.requiresBatteryNotLow == constraints.requiresBatteryNotLow && this.requiresStorageNotLow == constraints.requiresStorageNotLow && this.contentTriggerUpdateDelayMillis == constraints.contentTriggerUpdateDelayMillis && this.contentTriggerMaxDelayMillis == constraints.contentTriggerMaxDelayMillis && Intrinsics.areEqual(getRequiredNetworkRequest(), constraints.getRequiredNetworkRequest()) && this.requiredNetworkType == constraints.requiredNetworkType) {
            return Intrinsics.areEqual(this.contentUriTriggers, constraints.contentUriTriggers);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.requiredNetworkType.hashCode() * 31) + (this.requiresCharging ? 1 : 0)) * 31) + (this.requiresDeviceIdle ? 1 : 0)) * 31) + (this.requiresBatteryNotLow ? 1 : 0)) * 31) + (this.requiresStorageNotLow ? 1 : 0)) * 31;
        long j = this.contentTriggerUpdateDelayMillis;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.contentTriggerMaxDelayMillis;
        int iHashCode2 = (((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.contentUriTriggers.hashCode()) * 31;
        NetworkRequest requiredNetworkRequest = getRequiredNetworkRequest();
        return iHashCode2 + (requiredNetworkRequest != null ? requiredNetworkRequest.hashCode() : 0);
    }

    public String toString() {
        return "Constraints{requiredNetworkType=" + this.requiredNetworkType + ", requiresCharging=" + this.requiresCharging + ", requiresDeviceIdle=" + this.requiresDeviceIdle + ", requiresBatteryNotLow=" + this.requiresBatteryNotLow + ", requiresStorageNotLow=" + this.requiresStorageNotLow + ", contentTriggerUpdateDelayMillis=" + this.contentTriggerUpdateDelayMillis + ", contentTriggerMaxDelayMillis=" + this.contentTriggerMaxDelayMillis + ", contentUriTriggers=" + this.contentUriTriggers + ", }";
    }

    public static final class Builder {
        private boolean requiresBatteryNotLow;
        private boolean requiresCharging;
        private boolean requiresDeviceIdle;
        private boolean requiresStorageNotLow;
        private NetworkRequestCompat requiredNetworkRequest = new NetworkRequestCompat(null, 1, null);
        private NetworkType requiredNetworkType = NetworkType.NOT_REQUIRED;
        private long triggerContentUpdateDelay = -1;
        private long triggerContentMaxDelay = -1;
        private Set contentUriTriggers = new LinkedHashSet();

        public final Builder setRequiredNetworkType(NetworkType networkType) {
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.requiredNetworkType = networkType;
            this.requiredNetworkRequest = new NetworkRequestCompat(null, 1, null);
            return this;
        }

        public final Constraints build() {
            Set setEmptySet;
            long j;
            long j2;
            if (Build.VERSION.SDK_INT >= 24) {
                setEmptySet = CollectionsKt.toSet(this.contentUriTriggers);
                j = this.triggerContentUpdateDelay;
                j2 = this.triggerContentMaxDelay;
            } else {
                setEmptySet = SetsKt.emptySet();
                j = -1;
                j2 = -1;
            }
            return new Constraints(this.requiredNetworkRequest, this.requiredNetworkType, this.requiresCharging, this.requiresDeviceIdle, this.requiresBatteryNotLow, this.requiresStorageNotLow, j, j2, setEmptySet);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class ContentUriTrigger {
        private final boolean isTriggeredForDescendants;
        private final Uri uri;

        public ContentUriTrigger(Uri uri, boolean z) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            this.isTriggeredForDescendants = z;
        }

        public final Uri getUri() {
            return this.uri;
        }

        public final boolean isTriggeredForDescendants() {
            return this.isTriggeredForDescendants;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!Intrinsics.areEqual(ContentUriTrigger.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            ContentUriTrigger contentUriTrigger = (ContentUriTrigger) obj;
            return Intrinsics.areEqual(this.uri, contentUriTrigger.uri) && this.isTriggeredForDescendants == contentUriTrigger.isTriggeredForDescendants;
        }

        public int hashCode() {
            return (this.uri.hashCode() * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isTriggeredForDescendants);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
