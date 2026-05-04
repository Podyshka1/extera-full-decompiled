package p022j$.time.format;

import java.util.Locale;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.format.b */
/* JADX INFO: loaded from: classes2.dex */
public final class C2149b extends C2168u {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2167t f744d;

    public C2149b(C2167t c2167t) {
        this.f744d = c2167t;
    }

    @Override // p022j$.time.format.C2168u
    /* JADX INFO: renamed from: a */
    public final String mo717a(InterfaceC2129k interfaceC2129k, InterfaceC2202q interfaceC2202q, long j, TextStyle textStyle, Locale locale) {
        return this.f744d.m737a(j, textStyle);
    }

    @Override // p022j$.time.format.C2168u
    /* JADX INFO: renamed from: b */
    public final String mo718b(InterfaceC2202q interfaceC2202q, long j, TextStyle textStyle, Locale locale) {
        return this.f744d.m737a(j, textStyle);
    }
}
