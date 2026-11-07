package p000a;

import dev.exterahook.runtime.bridge.JniBridgeBindings;
import java.lang.reflect.Member;
import kotlin.Unit;
import okhttp3.internal.url._UrlKt;
import org.lsposed.hiddenapibypass.HiddenApiBypass;
import p001b.C1088a;
import p001b.C1089b;
import p002c.C1097g;

/* JADX INFO: renamed from: a.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0002c implements InterfaceC0000a {

    /* JADX INFO: renamed from: a */
    public final C1097g f0a;

    /* JADX INFO: renamed from: b */
    public final C1088a f1b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f2c;

    public C0002c(C1097g c1097g, C1089b c1089b, C1088a c1088a) {
        this.f0a = c1097g;
        this.f1b = c1088a;
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
            this.f0a.m214a();
        }
    }

    @Override // p000a.InterfaceC0000a
    /* JADX INFO: renamed from: a */
    public final boolean mo0a(Member member) {
        m1a();
        return JniBridgeBindings.unhook0(member);
    }
}
