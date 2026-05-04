package androidx.camera.core.featuregroup.impl;

import androidx.camera.core.Logger;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.impl.resolver.DefaultFeatureGroupResolver;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolver;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ResolvedFeatureGroup {
    public static final Companion Companion = new Companion(null);
    private final Set features;

    public static final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal) {
        return Companion.resolveFeatureGroup(sessionConfig, cameraInfoInternal);
    }

    public ResolvedFeatureGroup(Set features) {
        Intrinsics.checkNotNullParameter(features, "features");
        this.features = features;
    }

    public final Set getFeatures() {
        return this.features;
    }

    public String toString() {
        return "ResolvedFeatureGroup(features=" + this.features + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal) {
            Intrinsics.checkNotNullParameter(sessionConfig, "<this>");
            Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
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

        public final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal, FeatureGroupResolver resolver) {
            Intrinsics.checkNotNullParameter(sessionConfig, "<this>");
            Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
            Intrinsics.checkNotNullParameter(resolver, "resolver");
            Logger.m76d("ResolvedFeatureGroup", "resolveFeatureGroup: sessionConfig = " + sessionConfig + ", lensFacing = " + cameraInfoInternal.getLensFacing());
            if (sessionConfig.getRequiredFeatureGroup().isEmpty() && sessionConfig.getPreferredFeatureGroup().isEmpty()) {
                return null;
            }
            FeatureGroupResolutionResult featureGroupResolutionResultResolveFeatureGroup = resolver.resolveFeatureGroup(sessionConfig);
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.Supported) {
                ResolvedFeatureGroup resolvedFeatureGroup = ((FeatureGroupResolutionResult.Supported) featureGroupResolutionResultResolveFeatureGroup).getResolvedFeatureGroup();
                Logger.m76d("ResolvedFeatureGroup", "resolvedFeatureGroup = " + resolvedFeatureGroup);
                return resolvedFeatureGroup;
            }
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.Unsupported) {
                throw new IllegalArgumentException("Feature group is not supported");
            }
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.UnsupportedUseCase) {
                throw new IllegalArgumentException(((FeatureGroupResolutionResult.UnsupportedUseCase) featureGroupResolutionResultResolveFeatureGroup).getUnsupportedUseCase() + " is not supported");
            }
            if (!(featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.UseCaseMissing)) {
                throw new NoWhenBranchMatchedException();
            }
            StringBuilder sb = new StringBuilder();
            FeatureGroupResolutionResult.UseCaseMissing useCaseMissing = (FeatureGroupResolutionResult.UseCaseMissing) featureGroupResolutionResultResolveFeatureGroup;
            sb.append(useCaseMissing.getRequiredUseCases());
            sb.append(" must be added for ");
            sb.append(useCaseMissing.getFeatureRequiring());
            throw new IllegalArgumentException(sb.toString());
        }
    }
}
