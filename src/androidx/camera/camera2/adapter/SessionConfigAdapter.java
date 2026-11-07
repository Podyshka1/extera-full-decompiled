package androidx.camera.camera2.adapter;

import android.media.MediaCodec;
import android.util.Log;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.StreamUseCaseUtil;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 02\u00020\u0001:\u00010B\u001f\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010#\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010$\u001a\u00020\u0006J\u000e\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u000bJ4\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\u0010\u0010*\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030+0\u0003H\u0007J\"\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0003H\u0007J\u0016\u0010-\u001a\u00020\f2\f\u0010.\u001a\b\u0012\u0002\b\u0003\u0018\u00010/H\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R'\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR'\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0012\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0010\u001a\u0004\b\u001b\u0010\u001cR!\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0010\u001a\u0004\b \u0010!¨\u00061"}, d2 = {"Landroidx/camera/camera2/adapter/SessionConfigAdapter;", _UrlKt.FRAGMENT_ENCODE_SET, "useCases", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "isPrimary", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/util/Collection;Z)V", "surfaceToStreamUseCaseMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/DeferrableSurface;", _UrlKt.FRAGMENT_ENCODE_SET, "getSurfaceToStreamUseCaseMap", "()Ljava/util/Map;", "surfaceToStreamUseCaseMap$delegate", "Lkotlin/Lazy;", "surfaceToStreamUseHintMap", "getSurfaceToStreamUseHintMap", "surfaceToStreamUseHintMap$delegate", "validatingBuilder", "Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;", "getValidatingBuilder", "()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;", "validatingBuilder$delegate", "sessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "getSessionConfig", "()Landroidx/camera/core/impl/SessionConfig;", "sessionConfig$delegate", "deferrableSurfaces", _UrlKt.FRAGMENT_ENCODE_SET, "getDeferrableSurfaces", "()Ljava/util/List;", "deferrableSurfaces$delegate", "getValidSessionConfigOrNull", "isSessionConfigValid", "reportSurfaceInvalid", _UrlKt.FRAGMENT_ENCODE_SET, "deferrableSurface", "getSurfaceToStreamUseCaseMapping", "sessionConfigs", "useCaseConfigs", "Landroidx/camera/core/impl/UseCaseConfig;", "getSurfaceToStreamUseHintMapping", "getStreamUseHintForContainerClass", "kClass", "Ljava/lang/Class;", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSessionConfigAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionConfigAdapter.kt\nandroidx/camera/camera2/adapter/SessionConfigAdapter\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n85#2,4:210\n136#2,4:219\n295#3,2:214\n1761#3,3:216\n1563#3:223\n1634#3,3:224\n*S KotlinDebug\n*F\n+ 1 SessionConfigAdapter.kt\nandroidx/camera/camera2/adapter/SessionConfigAdapter\n*L\n95#1:210,4\n130#1:219,4\n101#1:214,2\n128#1:216,3\n54#1:223\n54#1:224,3\n*E\n"})
public final class SessionConfigAdapter {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: deferrableSurfaces$delegate, reason: from kotlin metadata */
    private final Lazy deferrableSurfaces;
    private final boolean isPrimary;

    /* JADX INFO: renamed from: sessionConfig$delegate, reason: from kotlin metadata */
    private final Lazy sessionConfig;

    /* JADX INFO: renamed from: surfaceToStreamUseCaseMap$delegate, reason: from kotlin metadata */
    private final Lazy surfaceToStreamUseCaseMap;

    /* JADX INFO: renamed from: surfaceToStreamUseHintMap$delegate, reason: from kotlin metadata */
    private final Lazy surfaceToStreamUseHintMap;
    private final Collection<UseCase> useCases;

    /* JADX INFO: renamed from: validatingBuilder$delegate, reason: from kotlin metadata */
    private final Lazy validatingBuilder;

    /* JADX WARN: Multi-variable type inference failed */
    public SessionConfigAdapter(Collection<? extends UseCase> collection, boolean z) {
        this.useCases = collection;
        this.isPrimary = z;
        this.surfaceToStreamUseCaseMap = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.m1093$r8$lambda$nnJYHDr2I66xowM443xaBstCic(this.f$0);
            }
        });
        this.surfaceToStreamUseHintMap = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.m1092$r8$lambda$g_aOe16aDUtVM_sJpjRJZDPhs(this.f$0);
            }
        });
        this.validatingBuilder = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.$r8$lambda$MWNVpTDD7KkQSD9XEE8XNPfWPZc(this.f$0);
            }
        });
        this.sessionConfig = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.$r8$lambda$h5igSN6lhSEpYqjILIQEMI6OvfE(this.f$0);
            }
        });
        this.deferrableSurfaces = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.m1091$r8$lambda$icGDqvAHKSdZE3aOVJMyOoUyFk(this.f$0);
            }
        });
    }

    public /* synthetic */ SessionConfigAdapter(Collection collection, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(collection, (i & 2) != 0 ? true : z);
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseCaseMap() {
        return (Map) this.surfaceToStreamUseCaseMap.getValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$nnJYHDr2I66xowM4-43xaBstCic, reason: not valid java name */
    public static Map m1093$r8$lambda$nnJYHDr2I66xowM443xaBstCic(SessionConfigAdapter sessionConfigAdapter) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UseCase useCase : sessionConfigAdapter.useCases) {
            arrayList.add(INSTANCE.getSessionConfig(useCase, sessionConfigAdapter.isPrimary));
            arrayList2.add(useCase.getCurrentConfig());
        }
        return sessionConfigAdapter.getSurfaceToStreamUseCaseMapping(arrayList, arrayList2);
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseHintMap() {
        return (Map) this.surfaceToStreamUseHintMap.getValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$g_aOe16a-DUtVM_sJpjR-JZDPhs, reason: not valid java name */
    public static Map m1092$r8$lambda$g_aOe16aDUtVM_sJpjRJZDPhs(SessionConfigAdapter sessionConfigAdapter) {
        Collection<UseCase> collection = sessionConfigAdapter.useCases;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.getSessionConfig((UseCase) it.next(), sessionConfigAdapter.isPrimary));
        }
        return sessionConfigAdapter.getSurfaceToStreamUseHintMapping(arrayList);
    }

    private final SessionConfig.ValidatingBuilder getValidatingBuilder() {
        return (SessionConfig.ValidatingBuilder) this.validatingBuilder.getValue();
    }

    public static SessionConfig.ValidatingBuilder $r8$lambda$MWNVpTDD7KkQSD9XEE8XNPfWPZc(SessionConfigAdapter sessionConfigAdapter) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator<UseCase> it = sessionConfigAdapter.useCases.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(INSTANCE.getSessionConfig(it.next(), sessionConfigAdapter.isPrimary));
        }
        return validatingBuilder;
    }

    private final SessionConfig getSessionConfig() {
        return (SessionConfig) this.sessionConfig.getValue();
    }

    public static SessionConfig $r8$lambda$h5igSN6lhSEpYqjILIQEMI6OvfE(SessionConfigAdapter sessionConfigAdapter) {
        if (!sessionConfigAdapter.getValidatingBuilder().isValid()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
            return null;
        }
        return sessionConfigAdapter.getValidatingBuilder().build();
    }

    public final List<DeferrableSurface> getDeferrableSurfaces() {
        return (List) this.deferrableSurfaces.getValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$-icGDqvAHKSdZE3aOVJMyOoUyFk, reason: not valid java name */
    public static List m1091$r8$lambda$icGDqvAHKSdZE3aOVJMyOoUyFk(SessionConfigAdapter sessionConfigAdapter) {
        if (!sessionConfigAdapter.getValidatingBuilder().isValid()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
            return null;
        }
        SessionConfig.OutputConfig postviewOutputConfig = sessionConfigAdapter.getSessionConfig().getPostviewOutputConfig();
        if (postviewOutputConfig != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(sessionConfigAdapter.getSessionConfig().getSurfaces());
            arrayList.add(postviewOutputConfig.getSurface());
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            if (listUnmodifiableList != null) {
                return listUnmodifiableList;
            }
        }
        return sessionConfigAdapter.getSessionConfig().getSurfaces();
    }

    public final SessionConfig getValidSessionConfigOrNull() {
        if (isSessionConfigValid()) {
            return getSessionConfig();
        }
        return null;
    }

    public final boolean isSessionConfigValid() {
        return getValidatingBuilder().isValid();
    }

    public final void reportSurfaceInvalid(DeferrableSurface deferrableSurface) {
        Object next;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unavailable " + deferrableSurface + ", notify SessionConfig invalid");
        }
        Iterator<T> it = this.useCases.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (INSTANCE.getSessionConfig((UseCase) next, this.isPrimary).getSurfaces().contains(deferrableSurface)) {
                    break;
                }
            }
        }
        UseCase useCase = (UseCase) next;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().getImmediate()), null, null, new C01192(useCase != null ? useCase.getSessionConfig() : null, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.SessionConfigAdapter$reportSurfaceInvalid$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.adapter.SessionConfigAdapter$reportSurfaceInvalid$2", m873f = "SessionConfigAdapter.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01192 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SessionConfig $sessionConfig;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01192(SessionConfig sessionConfig, Continuation<? super C01192> continuation) {
            super(2, continuation);
            this.$sessionConfig = sessionConfig;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01192(this.$sessionConfig, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01192) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SessionConfig.ErrorListener errorListener;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            SessionConfig sessionConfig = this.$sessionConfig;
            if (sessionConfig != null && (errorListener = sessionConfig.getErrorListener()) != null) {
                errorListener.onError(this.$sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
            }
            return Unit.INSTANCE;
        }
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseCaseMapping(Collection<SessionConfig> sessionConfigs, Collection<? extends UseCaseConfig<?>> useCaseConfigs) {
        Collection<SessionConfig> collection = sessionConfigs;
        if (!collection.isEmpty()) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (((SessionConfig) it.next()).getTemplateType() == 5) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isErrorEnabled("CXCP")) {
                        Log.e(Camera2Logger.TRUNCATED_TAG, "ZSL in populateSurfaceToStreamUseCaseMapping()");
                    }
                    return MapsKt.emptyMap();
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        StreamUseCaseUtil.INSTANCE.populateSurfaceToStreamUseCaseMapping(sessionConfigs, useCaseConfigs, linkedHashMap);
        return linkedHashMap;
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseHintMapping(Collection<SessionConfig> sessionConfigs) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SessionConfig sessionConfig : sessionConfigs) {
            for (DeferrableSurface deferrableSurface : sessionConfig.getSurfaces()) {
                Config implementationOptions = sessionConfig.getImplementationOptions();
                Config.Option<Long> option = Camera2ImplConfig.STREAM_USE_HINT_OPTION;
                if (implementationOptions.containsOption(option) && sessionConfig.getImplementationOptions().retrieveOption(option) != null) {
                    linkedHashMap.put(deferrableSurface, sessionConfig.getImplementationOptions().retrieveOption(option));
                } else {
                    linkedHashMap.put(deferrableSurface, Long.valueOf(getStreamUseHintForContainerClass(deferrableSurface.getContainerClass())));
                }
            }
        }
        return linkedHashMap;
    }

    private final long getStreamUseHintForContainerClass(Class<?> kClass) {
        return Intrinsics.areEqual(kClass, MediaCodec.class) ? OutputStream.StreamUseHint.INSTANCE.m1430getVIDEO_RECORD4VYZOf8() : OutputStream.StreamUseHint.INSTANCE.m1429getDEFAULT4VYZOf8();
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getSessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "Landroidx/camera/core/UseCase;", "isPrimary", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SessionConfig getSessionConfig(UseCase useCase, boolean z) {
            return z ? useCase.getSessionConfig() : useCase.getSecondarySessionConfig();
        }
    }
}
