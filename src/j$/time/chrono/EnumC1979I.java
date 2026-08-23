package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2063q;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.I */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC1979I implements InterfaceC1991l {
    public static final EnumC1979I BE;
    public static final EnumC1979I BEFORE_BE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC1979I[] f446a;

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m436s(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m431n(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo458k(C2009a c2009a) {
        return AbstractC1965a.m440w(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ long mo460w(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m433p(this, interfaceC2063q);
    }

    public static EnumC1979I valueOf(String str) {
        return (EnumC1979I) Enum.valueOf(EnumC1979I.class, str);
    }

    public static EnumC1979I[] values() {
        return (EnumC1979I[]) f446a.clone();
    }

    static {
        EnumC1979I enumC1979I = new EnumC1979I("BEFORE_BE", 0);
        BEFORE_BE = enumC1979I;
        EnumC1979I enumC1979I2 = new EnumC1979I("BE", 1);
        BE = enumC1979I2;
        f446a = new EnumC1979I[]{enumC1979I, enumC1979I2};
    }

    @Override // j$.time.chrono.InterfaceC1991l
    public final int getValue() {
        return ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(getValue(), EnumC2047a.ERA);
    }
}
