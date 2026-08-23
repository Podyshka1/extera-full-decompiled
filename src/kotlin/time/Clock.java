package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = MVEL.VERSION)
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005J\n\u0010\u0002\u001a\u00020\u0003H¦\u0080\u0004¨\u0006\u0006"}, d2 = {"Lkotlin/time/Clock;", _UrlKt.FRAGMENT_ENCODE_SET, "now", "Lkotlin/time/Instant;", "System", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
public interface Clock {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    Instant now();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\u0004\u001a\u00020\u0005H\u0096\u0080\u0004¨\u0006\u0006"}, d2 = {"Lkotlin/time/Clock$System;", "Lkotlin/time/Clock;", "<init>", "()V", "now", "Lkotlin/time/Instant;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class System implements Clock {
        public static final System INSTANCE = new System();

        private System() {
        }

        @Override // kotlin.time.Clock
        public Instant now() {
            return InstantJvmKt.systemClockNow();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/Clock$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
