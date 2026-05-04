package okio;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class Okio__OkioKt {
    public static final BufferedSource buffer(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return new RealBufferedSource(source);
    }

    public static final BufferedSink buffer(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return new RealBufferedSink(sink);
    }

    public static final Sink blackhole() {
        return new BlackholeSink();
    }
}
