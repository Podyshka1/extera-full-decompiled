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
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionConfigAdapter {
    public static final Companion Companion = new Companion(null);
    private final Lazy deferrableSurfaces$delegate;
    private final boolean isPrimary;
    private final Lazy sessionConfig$delegate;
    private final Lazy surfaceToStreamUseCaseMap$delegate;
    private final Lazy surfaceToStreamUseHintMap$delegate;
    private final Collection useCases;
    private final Lazy validatingBuilder$delegate;

    public SessionConfigAdapter(Collection useCases, boolean z) {
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        this.useCases = useCases;
        this.isPrimary = z;
        this.surfaceToStreamUseCaseMap$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.surfaceToStreamUseCaseMap_delegate$lambda$0(this.f$0);
            }
        });
        this.surfaceToStreamUseHintMap$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.surfaceToStreamUseHintMap_delegate$lambda$0(this.f$0);
            }
        });
        this.validatingBuilder$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.validatingBuilder_delegate$lambda$0(this.f$0);
            }
        });
        this.sessionConfig$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.sessionConfig_delegate$lambda$0(this.f$0);
            }
        });
        this.deferrableSurfaces$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SessionConfigAdapter$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SessionConfigAdapter.deferrableSurfaces_delegate$lambda$0(this.f$0);
            }
        });
    }

    public /* synthetic */ SessionConfigAdapter(Collection collection, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(collection, (i & 2) != 0 ? true : z);
    }

    public final Map getSurfaceToStreamUseCaseMap() {
        return (Map) this.surfaceToStreamUseCaseMap$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map surfaceToStreamUseCaseMap_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UseCase useCase : sessionConfigAdapter.useCases) {
            arrayList.add(Companion.getSessionConfig(useCase, sessionConfigAdapter.isPrimary));
            UseCaseConfig currentConfig = useCase.getCurrentConfig();
            Intrinsics.checkNotNullExpressionValue(currentConfig, "getCurrentConfig(...)");
            arrayList2.add(currentConfig);
        }
        return sessionConfigAdapter.getSurfaceToStreamUseCaseMapping(arrayList, arrayList2);
    }

    public final Map getSurfaceToStreamUseHintMap() {
        return (Map) this.surfaceToStreamUseHintMap$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map surfaceToStreamUseHintMap_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        Collection collection = sessionConfigAdapter.useCases;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Companion.getSessionConfig((UseCase) it.next(), sessionConfigAdapter.isPrimary));
        }
        return sessionConfigAdapter.getSurfaceToStreamUseHintMapping(arrayList);
    }

    private final SessionConfig.ValidatingBuilder getValidatingBuilder() {
        return (SessionConfig.ValidatingBuilder) this.validatingBuilder$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionConfig.ValidatingBuilder validatingBuilder_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator it = sessionConfigAdapter.useCases.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(Companion.getSessionConfig((UseCase) it.next(), sessionConfigAdapter.isPrimary));
        }
        return validatingBuilder;
    }

    private final SessionConfig getSessionConfig() {
        return (SessionConfig) this.sessionConfig$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionConfig sessionConfig_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        if (!sessionConfigAdapter.getValidatingBuilder().isValid()) {
            throw new IllegalStateException("Check failed.");
        }
        SessionConfig sessionConfigBuild = sessionConfigAdapter.getValidatingBuilder().build();
        Intrinsics.checkNotNullExpressionValue(sessionConfigBuild, "build(...)");
        return sessionConfigBuild;
    }

    public final List getDeferrableSurfaces() {
        Object value = this.deferrableSurfaces$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (List) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List deferrableSurfaces_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        if (!sessionConfigAdapter.getValidatingBuilder().isValid()) {
            throw new IllegalStateException("Check failed.");
        }
        SessionConfig.OutputConfig postviewOutputConfig = sessionConfigAdapter.getSessionConfig().getPostviewOutputConfig();
        if (postviewOutputConfig != null) {
            ArrayList arrayList = new ArrayList();
            List surfaces = sessionConfigAdapter.getSessionConfig().getSurfaces();
            Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
            arrayList.addAll(surfaces);
            DeferrableSurface surface = postviewOutputConfig.getSurface();
            Intrinsics.checkNotNullExpressionValue(surface, "getSurface(...)");
            arrayList.add(surface);
            List listUnmodifiableList = DesugarCollections.unmodifiableList(arrayList);
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
        Intrinsics.checkNotNullParameter(deferrableSurface, "deferrableSurface");
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unavailable " + deferrableSurface + ", notify SessionConfig invalid");
        }
        Iterator it = this.useCases.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Companion.getSessionConfig((UseCase) next, this.isPrimary).getSurfaces().contains(deferrableSurface)) {
                    break;
                }
            }
        }
        UseCase useCase = (UseCase) next;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().getImmediate()), null, null, new C01142(useCase != null ? useCase.getSessionConfig() : null, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.SessionConfigAdapter$reportSurfaceInvalid$2 */
    static final class C01142 extends SuspendLambda implements Function2 {
        final /* synthetic */ SessionConfig $sessionConfig;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01142(SessionConfig sessionConfig, Continuation continuation) {
            super(2, continuation);
            this.$sessionConfig = sessionConfig;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01142(this.$sessionConfig, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SessionConfig.ErrorListener errorListener;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            SessionConfig sessionConfig = this.$sessionConfig;
            if (sessionConfig != null && (errorListener = sessionConfig.getErrorListener()) != null) {
                errorListener.onError(this.$sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
            }
            return Unit.INSTANCE;
        }
    }

    public final Map getSurfaceToStreamUseCaseMapping(Collection sessionConfigs, Collection useCaseConfigs) {
        Intrinsics.checkNotNullParameter(sessionConfigs, "sessionConfigs");
        Intrinsics.checkNotNullParameter(useCaseConfigs, "useCaseConfigs");
        Collection collection = sessionConfigs;
        if (!collection.isEmpty()) {
            Iterator it = collection.iterator();
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

    public final Map getSurfaceToStreamUseHintMapping(Collection sessionConfigs) {
        Intrinsics.checkNotNullParameter(sessionConfigs, "sessionConfigs");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = sessionConfigs.iterator();
        while (it.hasNext()) {
            SessionConfig sessionConfig = (SessionConfig) it.next();
            for (DeferrableSurface deferrableSurface : sessionConfig.getSurfaces()) {
                Config implementationOptions = sessionConfig.getImplementationOptions();
                Config.Option option = Camera2ImplConfig.STREAM_USE_HINT_OPTION;
                if (implementationOptions.containsOption(option) && sessionConfig.getImplementationOptions().retrieveOption(option) != null) {
                    Object objRetrieveOption = sessionConfig.getImplementationOptions().retrieveOption(option);
                    Intrinsics.checkNotNull(objRetrieveOption);
                    linkedHashMap.put(deferrableSurface, objRetrieveOption);
                } else {
                    linkedHashMap.put(deferrableSurface, Long.valueOf(getStreamUseHintForContainerClass(deferrableSurface.getContainerClass())));
                }
            }
        }
        return linkedHashMap;
    }

    private final long getStreamUseHintForContainerClass(Class cls) {
        return Intrinsics.areEqual(cls, MediaCodec.class) ? OutputStream.StreamUseHint.Companion.m1734getVIDEO_RECORD4VYZOf8() : OutputStream.StreamUseHint.Companion.m1733getDEFAULT4VYZOf8();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SessionConfig getSessionConfig(UseCase useCase, boolean z) {
            SessionConfig secondarySessionConfig;
            String str;
            Intrinsics.checkNotNullParameter(useCase, "<this>");
            if (z) {
                secondarySessionConfig = useCase.getSessionConfig();
                str = "getSessionConfig(...)";
            } else {
                secondarySessionConfig = useCase.getSecondarySessionConfig();
                str = "getSecondarySessionConfig(...)";
            }
            Intrinsics.checkNotNullExpressionValue(secondarySessionConfig, str);
            return secondarySessionConfig;
        }
    }
}
