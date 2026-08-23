package androidx.camera.core.featuregroup.impl;

import androidx.camera.core.Logger;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.resolver.DefaultFeatureGroupResolver;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolver;
import androidx.camera.core.impl.CameraInfoInternal;
import com.sun.jna.Library$Handler$$ExternalSyntheticBUOutline0;
import java.util.Set;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;", _UrlKt.FRAGMENT_ENCODE_SET, "features", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/featuregroup/GroupableFeature;", "<init>", "(Ljava/util/Set;)V", "getFeatures", "()Ljava/util/Set;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class ResolvedFeatureGroup {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Set<GroupableFeature> features;

    @JvmStatic
    @JvmOverloads
    public static final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal) {
        return INSTANCE.resolveFeatureGroup(sessionConfig, cameraInfoInternal);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ResolvedFeatureGroup(Set<? extends GroupableFeature> set) {
        this.features = set;
    }

    public final Set<GroupableFeature> getFeatures() {
        return this.features;
    }

    public String toString() {
        return "ResolvedFeatureGroup(features=" + this.features + ')';
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "resolveFeatureGroup", "Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;", "Landroidx/camera/core/SessionConfig;", "cameraInfoInternal", "Landroidx/camera/core/impl/CameraInfoInternal;", "resolver", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolver;", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @JvmOverloads
        public final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal) {
            return resolveFeatureGroup$default(this, sessionConfig, cameraInfoInternal, null, 2, null);
        }

        private Companion() {
        }

        public static /* synthetic */ ResolvedFeatureGroup resolveFeatureGroup$default(Companion companion, SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal, FeatureGroupResolver featureGroupResolver, int i, Object obj) {
            if ((i & 2) != 0) {
                featureGroupResolver = new DefaultFeatureGroupResolver(cameraInfoInternal);
            }
            return companion.resolveFeatureGroup(sessionConfig, cameraInfoInternal, featureGroupResolver);
        }

        @JvmStatic
        @JvmOverloads
        public final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal, FeatureGroupResolver featureGroupResolver) {
            Logger.m75d("ResolvedFeatureGroup", "resolveFeatureGroup: sessionConfig = " + sessionConfig + ", lensFacing = " + cameraInfoInternal.getLensFacing());
            if (sessionConfig.getRequiredFeatureGroup().isEmpty() && sessionConfig.getPreferredFeatureGroup().isEmpty()) {
                return null;
            }
            FeatureGroupResolutionResult featureGroupResolutionResultResolveFeatureGroup = featureGroupResolver.resolveFeatureGroup(sessionConfig);
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.Supported) {
                ResolvedFeatureGroup resolvedFeatureGroup = ((FeatureGroupResolutionResult.Supported) featureGroupResolutionResultResolveFeatureGroup).getResolvedFeatureGroup();
                Logger.m75d("ResolvedFeatureGroup", "resolvedFeatureGroup = " + resolvedFeatureGroup);
                return resolvedFeatureGroup;
            }
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.Unsupported) {
                f$$ExternalSyntheticBUOutline1.m178m("Feature group is not supported");
                return null;
            }
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.UnsupportedUseCase) {
                throw new IllegalArgumentException(((FeatureGroupResolutionResult.UnsupportedUseCase) featureGroupResolutionResultResolveFeatureGroup).getUnsupportedUseCase() + " is not supported");
            }
            if (!(featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.UseCaseMissing)) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return null;
            }
            FeatureGroupResolutionResult.UseCaseMissing useCaseMissing = (FeatureGroupResolutionResult.UseCaseMissing) featureGroupResolutionResultResolveFeatureGroup;
            Library$Handler$$ExternalSyntheticBUOutline0.m464m(useCaseMissing.getRequiredUseCases(), " must be added for ", useCaseMissing.getFeatureRequiring());
            return null;
        }
    }
}
