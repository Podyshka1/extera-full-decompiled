package androidx.camera.core.featuregroup.impl;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface FeatureCombinationQuery {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final FeatureCombinationQuery NO_OP_FEATURE_COMBINATION_QUERY = new FeatureCombinationQuery() { // from class: androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1
        @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
        public boolean isSupported(SessionConfig sessionConfig) {
            Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
            return false;
        }
    };

    boolean isSupported(SessionConfig sessionConfig);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SessionConfig.Builder createSessionConfigBuilder(UseCaseConfig useCaseConfig, final Size resolution, DynamicRange dynamicRange) {
            Intrinsics.checkNotNullParameter(useCaseConfig, "<this>");
            Intrinsics.checkNotNullParameter(resolution, "resolution");
            Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
            final int inputFormat = useCaseConfig.getInputFormat();
            DeferrableSurface deferrableSurface = new DeferrableSurface(resolution, inputFormat) { // from class: androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1
                @Override // androidx.camera.core.impl.DeferrableSurface
                protected ListenableFuture provideSurface() {
                    ListenableFuture listenableFutureImmediateFuture = Futures.immediateFuture(null);
                    Intrinsics.checkNotNullExpressionValue(listenableFutureImmediateFuture, "immediateFuture(...)");
                    return listenableFutureImmediateFuture;
                }
            };
            Class surfaceClass = UseCaseType.Companion.getFeatureGroupUseCaseType(useCaseConfig).getSurfaceClass();
            if (surfaceClass != null) {
                deferrableSurface.setContainerClass(surfaceClass);
            }
            SessionConfig.Builder builderAddSurface = SessionConfig.Builder.createFrom(useCaseConfig, resolution).addSurface(deferrableSurface, dynamicRange);
            Intrinsics.checkNotNullExpressionValue(builderAddSurface, "addSurface(...)");
            return builderAddSurface;
        }
    }
}
