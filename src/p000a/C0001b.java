package p000a;

import dev.exterahook.runtime.bridge.JniBridgeBindings;
import java.lang.reflect.Member;
import kotlin.Unit;
import okhttp3.internal.url._UrlKt;
import org.lsposed.hiddenapibypass.HiddenApiBypass;
import p001b.C1113a;
import p001b.C1114b;
import p002c.C1122g;

/* JADX INFO: renamed from: a.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0001b implements InterfaceC0000a {

    /* JADX INFO: renamed from: a */
    public final C1122g f0a;

    /* JADX INFO: renamed from: b */
    public final C1113a f1b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f2c;

    public C0001b(C1122g c1122g, C1114b c1114b, C1113a c1113a) {
        this.f0a = c1122g;
        this.f1b = c1113a;
    }

    /* JADX INFO: renamed from: a */
    public final void m1a() {
        try {
            if (!this.f2c) {
                synchronized (this) {
                    try {
                        if (!this.f2c) {
                            try {
                                HiddenApiBypass.addHiddenApiExemptions(_UrlKt.FRAGMENT_ENCODE_SET);
                            } catch (Throwable unused) {
                            }
                            this.f2c = true;
                        }
                        Unit unit = Unit.INSTANCE;
                    } finally {
                    }
                }
            }
        } finally {
            this.f0a.m217a();
        }
    }

    @Override // p000a.InterfaceC0000a
    /* JADX INFO: renamed from: a */
    public final boolean mo0a(Member member) {
        m1a();
        return JniBridgeBindings.unhook0(member);
    }
}
