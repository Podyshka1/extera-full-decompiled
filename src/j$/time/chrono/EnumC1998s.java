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
/* JADX INFO: renamed from: j$.time.chrono.s */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC1998s implements InterfaceC1991l {
    public static final EnumC1998s BCE;
    public static final EnumC1998s CE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC1998s[] f481a;

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

    public static EnumC1998s valueOf(String str) {
        return (EnumC1998s) Enum.valueOf(EnumC1998s.class, str);
    }

    public static EnumC1998s[] values() {
        return (EnumC1998s[]) f481a.clone();
    }

    static {
        EnumC1998s enumC1998s = new EnumC1998s("BCE", 0);
        BCE = enumC1998s;
        EnumC1998s enumC1998s2 = new EnumC1998s("CE", 1);
        CE = enumC1998s2;
        f481a = new EnumC1998s[]{enumC1998s, enumC1998s2};
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
