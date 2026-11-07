package dev.exterahook.runtime.bridge;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import p000a.C0001b;
import p000a.InterfaceC0000a;
import p001b.C1113a;
import p001b.C1114b;
import p001b.C1115c;
import p002c.C1122g;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Ldev/exterahook/runtime/bridge/HookBridgeProvider;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "exterahook_release"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class HookBridgeProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<InterfaceC0000a> defaultBridge$delegate = LazyKt.lazy(new Function0() { // from class: dev.exterahook.runtime.bridge.HookBridgeProvider$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HookBridgeProvider.INSTANCE.createBridge(new C1122g("exterahook", false));
        }
    });
    private static final Lazy<InterfaceC0000a> embeddedBridge$delegate = LazyKt.lazy(new Function0() { // from class: dev.exterahook.runtime.bridge.HookBridgeProvider$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HookBridgeProvider.INSTANCE.createBridge(new C1122g(null, true));
        }
    });
    private static volatile boolean useEmbeddedByDefault;

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u0003R\u001b\u0010\u0011\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\nR\u001b\u0010\u0014\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\nR\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Ldev/exterahook/runtime/bridge/HookBridgeProvider$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lc/g;", "nativeRuntimeLoader", "La/a;", "createBridge", "(Lc/g;)La/a;", "createDefault", "()La/a;", _UrlKt.FRAGMENT_ENCODE_SET, "initializeDefault", "useEmbeddedAsDefault", "defaultBridge$delegate", "Lkotlin/Lazy;", "getDefaultBridge", "defaultBridge", "embeddedBridge$delegate", "getEmbeddedBridge", "embeddedBridge", _UrlKt.FRAGMENT_ENCODE_SET, "useEmbeddedByDefault", "Z", "exterahook_release"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final InterfaceC0000a createBridge(C1122g nativeRuntimeLoader) {
            return new C0001b(nativeRuntimeLoader, new C1114b(), new C1113a(new C1114b(), new C1115c(nativeRuntimeLoader)));
        }

        private final InterfaceC0000a getDefaultBridge() {
            return (InterfaceC0000a) HookBridgeProvider.defaultBridge$delegate.getValue();
        }

        private final InterfaceC0000a getEmbeddedBridge() {
            return (InterfaceC0000a) HookBridgeProvider.embeddedBridge$delegate.getValue();
        }

        @JvmStatic
        public final InterfaceC0000a createDefault() {
            return HookBridgeProvider.useEmbeddedByDefault ? getEmbeddedBridge() : getDefaultBridge();
        }

        @JvmStatic
        public final void initializeDefault() {
            ((C0001b) createDefault()).m1a();
            JniBridgeBindings.initialize0();
        }

        @JvmStatic
        public final void useEmbeddedAsDefault() {
            HookBridgeProvider.useEmbeddedByDefault = true;
        }

        private Companion() {
        }
    }

    private HookBridgeProvider() {
    }

    @JvmStatic
    public static final InterfaceC0000a createDefault() {
        return INSTANCE.createDefault();
    }

    @JvmStatic
    public static final void initializeDefault() {
        INSTANCE.initializeDefault();
    }

    @JvmStatic
    public static final void useEmbeddedAsDefault() {
        INSTANCE.useEmbeddedAsDefault();
    }
}
