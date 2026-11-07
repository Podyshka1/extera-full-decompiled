package j$.time.format;

import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.InterfaceC2408p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: renamed from: j$.time.format.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2355a extends C2377w {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2376v f731d;

    public C2355a(C2376v c2376v) {
        this.f731d = c2376v;
    }

    @Override // j$.time.format.C2377w
    /* JADX INFO: renamed from: b */
    public final String mo814b(InterfaceC2336k interfaceC2336k, InterfaceC2408p interfaceC2408p, long j, TextStyle textStyle, Locale locale) {
        return this.f731d.m856a(j, textStyle);
    }

    @Override // j$.time.format.C2377w
    /* JADX INFO: renamed from: c */
    public final String mo815c(InterfaceC2408p interfaceC2408p, long j, TextStyle textStyle, Locale locale) {
        return this.f731d.m856a(j, textStyle);
    }

    @Override // j$.time.format.C2377w
    /* JADX INFO: renamed from: d */
    public final Iterator mo816d(InterfaceC2336k interfaceC2336k, InterfaceC2408p interfaceC2408p, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.f731d.f794b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    @Override // j$.time.format.C2377w
    /* JADX INFO: renamed from: e */
    public final Iterator mo817e(InterfaceC2408p interfaceC2408p, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.f731d.f794b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }
}
