package p022j$.time.chrono;

import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.C */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2112C implements InterfaceC2130l {
    public static final EnumC2112C BEFORE_ROC;
    public static final EnumC2112C ROC;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2112C[] f671a;

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m556s(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m551n(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo578k(C2148a c2148a) {
        return AbstractC2104a.m560w(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ long mo580w(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m553p(this, interfaceC2202q);
    }

    public static EnumC2112C valueOf(String str) {
        return (EnumC2112C) Enum.valueOf(EnumC2112C.class, str);
    }

    public static EnumC2112C[] values() {
        return (EnumC2112C[]) f671a.clone();
    }

    static {
        EnumC2112C enumC2112C = new EnumC2112C("BEFORE_ROC", 0);
        BEFORE_ROC = enumC2112C;
        EnumC2112C enumC2112C2 = new EnumC2112C("ROC", 1);
        ROC = enumC2112C2;
        f671a = new EnumC2112C[]{enumC2112C, enumC2112C2};
    }

    @Override // p022j$.time.chrono.InterfaceC2130l
    public final int getValue() {
        return ordinal();
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(getValue(), EnumC2186a.ERA);
    }
}
