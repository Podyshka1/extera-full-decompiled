package p000a;

import dev.exterahook.runtime.bridge.JniBridgeBindings;
import java.lang.reflect.Member;
import kotlin.Unit;
import okhttp3.internal.url._UrlKt;
import org.lsposed.hiddenapibypass.HiddenApiBypass;
import p001b.C0871a;
import p001b.C0872b;
import p002c.C0880g;

/* JADX INFO: renamed from: a.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0002c implements InterfaceC0000a {

    /* JADX INFO: renamed from: a */
    public final C0880g f0a;

    /* JADX INFO: renamed from: b */
    public final C0871a f1b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f2c;

    public C0002c(C0880g c0880g, C0872b c0872b, C0871a c0871a) {
        this.f0a = c0880g;
        this.f1b = c0871a;
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
            this.f0a.m180a();
        }
    }

    @Override // p000a.InterfaceC0000a
    /* JADX INFO: renamed from: a */
    public final boolean mo0a(Member member) {
        m1a();
        return JniBridgeBindings.unhook0(member);
    }
}
