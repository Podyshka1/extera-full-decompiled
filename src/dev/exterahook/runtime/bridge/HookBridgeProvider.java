package dev.exterahook.runtime.bridge;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import okhttp3.internal.url._UrlKt;
import p000a.C0001b;
import p000a.C0002c;
import p000a.InterfaceC0000a;
import p001b.C1088a;
import p001b.C1089b;
import p001b.C1090c;
import p002c.C1097g;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Ldev/exterahook/runtime/bridge/HookBridgeProvider;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "a/b", "exterahook_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class HookBridgeProvider {
    public static final C0001b Companion = new C0001b();
    private static final Lazy<InterfaceC0000a> defaultBridge$delegate = LazyKt.lazy(new Function0() { // from class: dev.exterahook.runtime.bridge.HookBridgeProvider$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HookBridgeProvider.m3079$r8$lambda$3pHWcEv6KqoSKe_tjndr2Jl4zk();
        }
    });
    private static final Lazy<InterfaceC0000a> embeddedBridge$delegate = LazyKt.lazy(new Function0() { // from class: dev.exterahook.runtime.bridge.HookBridgeProvider$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HookBridgeProvider.m3080$r8$lambda$iP2bZl690FcfaDtB5t0ycPww_0();
        }
    });
    private static volatile boolean useEmbeddedByDefault;

    /* JADX INFO: renamed from: $r8$lambda$3-pHWcEv6KqoSKe_tjndr2Jl4zk, reason: not valid java name */
    public static InterfaceC0000a m3079$r8$lambda$3pHWcEv6KqoSKe_tjndr2Jl4zk() {
        C0001b c0001b = Companion;
        C1097g c1097g = new C1097g("exterahook", false);
        c0001b.getClass();
        return new C0002c(c1097g, new C1089b(), new C1088a(new C1089b(), new C1090c(c1097g)));
    }

    /* JADX INFO: renamed from: $r8$lambda$iP2bZl690-FcfaDtB5t0ycPww_0, reason: not valid java name */
    public static InterfaceC0000a m3080$r8$lambda$iP2bZl690FcfaDtB5t0ycPww_0() {
        C0001b c0001b = Companion;
        C1097g c1097g = new C1097g(null, true);
        c0001b.getClass();
        return new C0002c(c1097g, new C1089b(), new C1088a(new C1089b(), new C1090c(c1097g)));
    }

    private HookBridgeProvider() {
    }

    @JvmStatic
    public static final InterfaceC0000a createDefault() {
        Companion.getClass();
        return useEmbeddedByDefault ? (InterfaceC0000a) embeddedBridge$delegate.getValue() : (InterfaceC0000a) defaultBridge$delegate.getValue();
    }

    @JvmStatic
    public static final void initializeDefault() {
        Companion.getClass();
        ((C0002c) (useEmbeddedByDefault ? (InterfaceC0000a) embeddedBridge$delegate.getValue() : (InterfaceC0000a) defaultBridge$delegate.getValue())).m1a();
        JniBridgeBindings.initialize0();
    }

    @JvmStatic
    public static final void useEmbeddedAsDefault() {
        Companion.getClass();
        useEmbeddedByDefault = true;
    }
}
