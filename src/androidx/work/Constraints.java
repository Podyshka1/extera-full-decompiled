package androidx.work;

import android.annotation.SuppressLint;
import android.net.NetworkRequest;
import android.net.Uri;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 -2\u00020\u0001:\u0003+,-B1\b\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tB;\b\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u000bB_\b\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0004\b\b\u0010\u0012Bg\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0004\b\b\u0010\u0015B\u0011\b\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0000¢\u0006\u0004\b\b\u0010\u0017J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\b\u0010%\u001a\u00020\u0005H\u0007J\u0013\u0010&\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u0097\u0002J\b\u0010'\u001a\u00020(H\u0017J\b\u0010)\u001a\u00020*H\u0017R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0013\u001a\u00020\u00148\u0000X\u0081\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u00020\r8GX\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0016\u0010\u000e\u001a\u00020\r8GX\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010!R\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108GX\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u0006."}, d2 = {"Landroidx/work/Constraints;", _UrlKt.FRAGMENT_ENCODE_SET, "requiredNetworkType", "Landroidx/work/NetworkType;", "requiresCharging", _UrlKt.FRAGMENT_ENCODE_SET, "requiresBatteryNotLow", "requiresStorageNotLow", "<init>", "(Landroidx/work/NetworkType;ZZZ)V", "requiresDeviceIdle", "(Landroidx/work/NetworkType;ZZZZ)V", "contentTriggerUpdateDelayMillis", _UrlKt.FRAGMENT_ENCODE_SET, "contentTriggerMaxDelayMillis", "contentUriTriggers", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/work/Constraints$ContentUriTrigger;", "(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V", "requiredNetworkRequestCompat", "Landroidx/work/impl/utils/NetworkRequestCompat;", "(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V", "other", "(Landroidx/work/Constraints;)V", "getRequiredNetworkType", "()Landroidx/work/NetworkType;", "requiredNetworkRequest", "Landroid/net/NetworkRequest;", "getRequiredNetworkRequest", "()Landroid/net/NetworkRequest;", "getRequiredNetworkRequestCompat$work_runtime_release", "()Landroidx/work/impl/utils/NetworkRequestCompat;", "getContentTriggerUpdateDelayMillis", "()J", "getContentTriggerMaxDelayMillis", "getContentUriTriggers", "()Ljava/util/Set;", "hasContentUriTriggers", "equals", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Builder", "ContentUriTrigger", "Companion", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class Constraints {

    @JvmField
    public static final Constraints NONE = new Constraints(null, false, false, false, 15, null);
    private final long contentTriggerMaxDelayMillis;
    private final long contentTriggerUpdateDelayMillis;
    private final Set<ContentUriTrigger> contentUriTriggers;
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

    /* JADX INFO: renamed from: getRequiredNetworkRequestCompat$work_runtime_release, reason: from getter */
    public final NetworkRequestCompat getRequiredNetworkRequestCompat() {
        return this.requiredNetworkRequestCompat;
    }

    public final long getContentTriggerUpdateDelayMillis() {
        return this.contentTriggerUpdateDelayMillis;
    }

    public final long getContentTriggerMaxDelayMillis() {
        return this.contentTriggerMaxDelayMillis;
    }

    public final Set<ContentUriTrigger> getContentUriTriggers() {
        return this.contentUriTriggers;
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3);
    }

    @SuppressLint({"NewApi"})
    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3) {
        this(networkType, z, false, z2, z3);
    }

    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4) {
        this(networkType, z, z2, z3, z4, -1L, 0L, null, 192, null);
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) != 0 ? false : z4, (i & 32) != 0 ? -1L : j, (i & 64) != 0 ? -1L : j2, (i & 128) != 0 ? SetsKt.emptySet() : set);
    }

    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set<ContentUriTrigger> set) {
        this.requiredNetworkRequestCompat = new NetworkRequestCompat(null, 1, null);
        this.requiredNetworkType = networkType;
        this.requiresCharging = z;
        this.requiresDeviceIdle = z2;
        this.requiresBatteryNotLow = z3;
        this.requiresStorageNotLow = z4;
        this.contentTriggerUpdateDelayMillis = j;
        this.contentTriggerMaxDelayMillis = j2;
        this.contentUriTriggers = set;
    }

    public Constraints(NetworkRequestCompat networkRequestCompat, NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set<ContentUriTrigger> set) {
        this.requiredNetworkRequestCompat = networkRequestCompat;
        this.requiredNetworkType = networkType;
        this.requiresCharging = z;
        this.requiresDeviceIdle = z2;
        this.requiresBatteryNotLow = z3;
        this.requiresStorageNotLow = z4;
        this.contentTriggerUpdateDelayMillis = j;
        this.contentTriggerMaxDelayMillis = j2;
        this.contentUriTriggers = set;
    }

    @SuppressLint({"NewApi"})
    public Constraints(Constraints constraints) {
        this.requiresCharging = constraints.requiresCharging;
        this.requiresDeviceIdle = constraints.requiresDeviceIdle;
        this.requiredNetworkRequestCompat = constraints.requiredNetworkRequestCompat;
        this.requiredNetworkType = constraints.requiredNetworkType;
        this.requiresBatteryNotLow = constraints.requiresBatteryNotLow;
        this.requiresStorageNotLow = constraints.requiresStorageNotLow;
        this.contentUriTriggers = constraints.contentUriTriggers;
        this.contentTriggerUpdateDelayMillis = constraints.contentTriggerUpdateDelayMillis;
        this.contentTriggerMaxDelayMillis = constraints.contentTriggerMaxDelayMillis;
    }

    /* JADX INFO: renamed from: requiresCharging, reason: from getter */
    public final boolean getRequiresCharging() {
        return this.requiresCharging;
    }

    /* JADX INFO: renamed from: requiresDeviceIdle, reason: from getter */
    public final boolean getRequiresDeviceIdle() {
        return this.requiresDeviceIdle;
    }

    /* JADX INFO: renamed from: requiresBatteryNotLow, reason: from getter */
    public final boolean getRequiresBatteryNotLow() {
        return this.requiresBatteryNotLow;
    }

    /* JADX INFO: renamed from: requiresStorageNotLow, reason: from getter */
    public final boolean getRequiresStorageNotLow() {
        return this.requiresStorageNotLow;
    }

    public final boolean hasContentUriTriggers() {
        return !this.contentUriTriggers.isEmpty();
    }

    @SuppressLint({"NewApi"})
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(Constraints.class, other.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) other;
        if (this.requiresCharging == constraints.requiresCharging && this.requiresDeviceIdle == constraints.requiresDeviceIdle && this.requiresBatteryNotLow == constraints.requiresBatteryNotLow && this.requiresStorageNotLow == constraints.requiresStorageNotLow && this.contentTriggerUpdateDelayMillis == constraints.contentTriggerUpdateDelayMillis && this.contentTriggerMaxDelayMillis == constraints.contentTriggerMaxDelayMillis && Intrinsics.areEqual(getRequiredNetworkRequest(), constraints.getRequiredNetworkRequest()) && this.requiredNetworkType == constraints.requiredNetworkType) {
            return Intrinsics.areEqual(this.contentUriTriggers, constraints.contentUriTriggers);
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    public int hashCode() {
        int iHashCode = ((((((((this.requiredNetworkType.hashCode() * 31) + (this.requiresCharging ? 1 : 0)) * 31) + (this.requiresDeviceIdle ? 1 : 0)) * 31) + (this.requiresBatteryNotLow ? 1 : 0)) * 31) + (this.requiresStorageNotLow ? 1 : 0)) * 31;
        long j = this.contentTriggerUpdateDelayMillis;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.contentTriggerMaxDelayMillis;
        int iHashCode2 = (((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.contentUriTriggers.hashCode()) * 31;
        NetworkRequest requiredNetworkRequest = getRequiredNetworkRequest();
        return iHashCode2 + (requiredNetworkRequest != null ? requiredNetworkRequest.hashCode() : 0);
    }

    @SuppressLint({"NewApi"})
    public String toString() {
        return "Constraints{requiredNetworkType=" + this.requiredNetworkType + ", requiresCharging=" + this.requiresCharging + ", requiresDeviceIdle=" + this.requiresDeviceIdle + ", requiresBatteryNotLow=" + this.requiresBatteryNotLow + ", requiresStorageNotLow=" + this.requiresStorageNotLow + ", contentTriggerUpdateDelayMillis=" + this.contentTriggerUpdateDelayMillis + ", contentTriggerMaxDelayMillis=" + this.contentTriggerMaxDelayMillis + ", contentUriTriggers=" + this.contentUriTriggers + ", }";
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0010R\u0016\u0010\u0017\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0010R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001aR\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Landroidx/work/Constraints$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/work/NetworkType;", "networkType", "setRequiredNetworkType", "(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "requiresBatteryNotLow", "setRequiresBatteryNotLow", "(Z)Landroidx/work/Constraints$Builder;", "Landroidx/work/Constraints;", "build", "()Landroidx/work/Constraints;", "requiresCharging", "Z", "requiresDeviceIdle", "Landroidx/work/impl/utils/NetworkRequestCompat;", "requiredNetworkRequest", "Landroidx/work/impl/utils/NetworkRequestCompat;", "requiredNetworkType", "Landroidx/work/NetworkType;", "requiresStorageNotLow", _UrlKt.FRAGMENT_ENCODE_SET, "triggerContentUpdateDelay", "J", "triggerContentMaxDelay", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/work/Constraints$ContentUriTrigger;", "contentUriTriggers", "Ljava/util/Set;", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {
        private boolean requiresBatteryNotLow;
        private boolean requiresCharging;
        private boolean requiresDeviceIdle;
        private boolean requiresStorageNotLow;
        private NetworkRequestCompat requiredNetworkRequest = new NetworkRequestCompat(null, 1, null);
        private NetworkType requiredNetworkType = NetworkType.NOT_REQUIRED;
        private long triggerContentUpdateDelay = -1;
        private long triggerContentMaxDelay = -1;
        private Set<ContentUriTrigger> contentUriTriggers = new LinkedHashSet();

        public final Builder setRequiredNetworkType(NetworkType networkType) {
            this.requiredNetworkType = networkType;
            this.requiredNetworkRequest = new NetworkRequestCompat(null, 1, null);
            return this;
        }

        public final Builder setRequiresBatteryNotLow(boolean requiresBatteryNotLow) {
            this.requiresBatteryNotLow = requiresBatteryNotLow;
            return this;
        }

        public final Constraints build() {
            Set set = CollectionsKt.toSet(this.contentUriTriggers);
            return new Constraints(this.requiredNetworkRequest, this.requiredNetworkType, this.requiresCharging, this.requiresDeviceIdle, this.requiresBatteryNotLow, this.requiresStorageNotLow, this.triggerContentUpdateDelay, this.triggerContentMaxDelay, set);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u000b\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\n¨\u0006\u000f"}, d2 = {"Landroidx/work/Constraints$ContentUriTrigger;", _UrlKt.FRAGMENT_ENCODE_SET, "uri", "Landroid/net/Uri;", "isTriggeredForDescendants", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Landroid/net/Uri;Z)V", "getUri", "()Landroid/net/Uri;", "()Z", "equals", "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ContentUriTrigger {
        private final boolean isTriggeredForDescendants;
        private final Uri uri;

        public ContentUriTrigger(Uri uri, boolean z) {
            this.uri = uri;
            this.isTriggeredForDescendants = z;
        }

        public final Uri getUri() {
            return this.uri;
        }

        /* JADX INFO: renamed from: isTriggeredForDescendants, reason: from getter */
        public final boolean getIsTriggeredForDescendants() {
            return this.isTriggeredForDescendants;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(ContentUriTrigger.class, other != null ? other.getClass() : null)) {
                return false;
            }
            ContentUriTrigger contentUriTrigger = (ContentUriTrigger) other;
            return Intrinsics.areEqual(this.uri, contentUriTrigger.uri) && this.isTriggeredForDescendants == contentUriTrigger.isTriggeredForDescendants;
        }

        public int hashCode() {
            return (this.uri.hashCode() * 31) + Boolean.hashCode(this.isTriggeredForDescendants);
        }
    }
}
