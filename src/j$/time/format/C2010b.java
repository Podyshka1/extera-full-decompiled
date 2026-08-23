package j$.time.format;

import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.InterfaceC2063q;
import java.util.Locale;

/* JADX INFO: renamed from: j$.time.format.b */
/* JADX INFO: loaded from: classes2.dex */
public final class C2010b extends C2029u {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2028t f509d;

    public C2010b(C2028t c2028t) {
        this.f509d = c2028t;
    }

    @Override // j$.time.format.C2029u
    /* JADX INFO: renamed from: a */
    public final String mo594a(InterfaceC1990k interfaceC1990k, InterfaceC2063q interfaceC2063q, long j, TextStyle textStyle, Locale locale) {
        return this.f509d.m614a(j, textStyle);
    }

    @Override // j$.time.format.C2029u
    /* JADX INFO: renamed from: b */
    public final String mo595b(InterfaceC2063q interfaceC2063q, long j, TextStyle textStyle, Locale locale) {
        return this.f509d.m614a(j, textStyle);
    }
}
