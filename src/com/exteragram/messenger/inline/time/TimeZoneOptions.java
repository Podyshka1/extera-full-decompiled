package com.exteragram.messenger.inline.time;

import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/inline/time/TimeZoneOptions;", _UrlKt.FRAGMENT_ENCODE_SET, "j$/time/ZoneId", "local", "j$/time/ZonedDateTime", "now", "<init>", "(Lj$/time/ZoneId;Lj$/time/ZonedDateTime;)V", "Lj$/time/ZoneId;", "getLocal", "()Lj$/time/ZoneId;", "Lj$/time/ZonedDateTime;", "getNow", "()Lj$/time/ZonedDateTime;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class TimeZoneOptions {
    private final ZoneId local;
    private final ZonedDateTime now;

    public TimeZoneOptions(ZoneId zoneId, ZonedDateTime zonedDateTime) {
        this.local = zoneId;
        this.now = zonedDateTime;
    }

    public /* synthetic */ TimeZoneOptions(ZoneId zoneId, ZonedDateTime zonedDateTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(zoneId, (i & 2) != 0 ? null : zonedDateTime);
    }

    public final ZoneId getLocal() {
        return this.local;
    }

    public final ZonedDateTime getNow() {
        return this.now;
    }
}
