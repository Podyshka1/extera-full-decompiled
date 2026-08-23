package j$.time.format;

import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.InterfaceC2188p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: renamed from: j$.time.format.a */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2133a extends C2155w {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2154v f571d;

    public C2133a(C2154v c2154v) {
        this.f571d = c2154v;
    }

    @Override // j$.time.format.C2155w
    /* JADX INFO: renamed from: b */
    public final String mo632b(InterfaceC2114k interfaceC2114k, InterfaceC2188p interfaceC2188p, long j, TextStyle textStyle, Locale locale) {
        return this.f571d.m674a(j, textStyle);
    }

    @Override // j$.time.format.C2155w
    /* JADX INFO: renamed from: c */
    public final String mo633c(InterfaceC2188p interfaceC2188p, long j, TextStyle textStyle, Locale locale) {
        return this.f571d.m674a(j, textStyle);
    }

    @Override // j$.time.format.C2155w
    /* JADX INFO: renamed from: d */
    public final Iterator mo634d(InterfaceC2114k interfaceC2114k, InterfaceC2188p interfaceC2188p, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.f571d.f634b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    @Override // j$.time.format.C2155w
    /* JADX INFO: renamed from: e */
    public final Iterator mo635e(InterfaceC2188p interfaceC2188p, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.f571d.f634b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }
}
