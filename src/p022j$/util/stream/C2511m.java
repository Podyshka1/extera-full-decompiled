package p022j$.util.stream;

import p022j$.time.C2184s;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.m */
/* JADX INFO: loaded from: classes2.dex */
public final class C2511m extends AbstractC2509l2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1425b = 2;

    /* JADX INFO: renamed from: c */
    public boolean f1426c;

    /* JADX INFO: renamed from: d */
    public Object f1427d;

    public /* synthetic */ C2511m(InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2511m(C2390P3 c2390p3, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1427d = c2390p3;
        this.f1426c = true;
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        switch (this.f1425b) {
            case 0:
                this.f1426c = false;
                this.f1427d = null;
                this.f1423a.mo873m(-1L);
                break;
            case 1:
                this.f1423a.mo873m(-1L);
                break;
            default:
                this.f1423a.mo873m(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        switch (this.f1425b) {
            case 0:
                InterfaceC2529p2 interfaceC2529p2 = this.f1423a;
                if (obj == null) {
                    if (this.f1426c) {
                        return;
                    }
                    this.f1426c = true;
                    this.f1427d = null;
                    interfaceC2529p2.m940v((Object) null);
                    return;
                }
                Object obj2 = this.f1427d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.f1427d = obj;
                    interfaceC2529p2.m940v(obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((C2184s) ((C2541s) this.f1427d).f1467t).apply(obj);
                if (stream != null) {
                    try {
                        boolean z = this.f1426c;
                        InterfaceC2529p2 interfaceC2529p22 = this.f1423a;
                        if (!z) {
                            ((Stream) stream.sequential()).forEach(interfaceC2529p22);
                        } else {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC2529p22.mo874p() && spliterator.tryAdvance(interfaceC2529p22)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    break;
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.f1426c) {
                    boolean zTest = ((C2390P3) this.f1427d).f1221t.test(obj);
                    this.f1426c = zTest;
                    if (zTest) {
                        this.f1423a.m940v(obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public boolean mo874p() {
        switch (this.f1425b) {
            case 1:
                this.f1426c = true;
                return this.f1423a.mo874p();
            case 2:
                return !this.f1426c || this.f1423a.mo874p();
            default:
                return super.mo874p();
        }
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    public void end() {
        switch (this.f1425b) {
            case 0:
                this.f1426c = false;
                this.f1427d = null;
                this.f1423a.end();
                break;
            default:
                super.end();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2511m(C2541s c2541s, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1427d = c2541s;
    }
}
