package j$.time.chrono;

import j$.time.C2034h;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;

/* JADX INFO: renamed from: j$.time.chrono.b */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC1981b extends InterfaceC2059m, InterfaceC2061o, Comparable {
    /* JADX INFO: renamed from: B */
    int compareTo(InterfaceC1981b interfaceC1981b);

    /* JADX INFO: renamed from: a */
    InterfaceC1990k mo489a();

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    InterfaceC1981b mo468c(long j, InterfaceC2063q interfaceC2063q);

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    InterfaceC1981b mo469d(long j, InterfaceC2065s interfaceC2065s);

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    boolean mo455e(InterfaceC2063q interfaceC2063q);

    int hashCode();

    String toString();

    /* JADX INFO: renamed from: x */
    long mo491x();

    /* JADX INFO: renamed from: y */
    ChronoLocalDateTime mo492y(C2034h c2034h);
}
