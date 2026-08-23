package androidx.camera.core.featuregroup.impl;

import android.util.Size;
import android.view.Surface;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;", _UrlKt.FRAGMENT_ENCODE_SET, "isSupported", _UrlKt.FRAGMENT_ENCODE_SET, "sessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "Companion", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public interface FeatureCombinationQuery {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @JvmField
    public static final FeatureCombinationQuery NO_OP_FEATURE_COMBINATION_QUERY = new FeatureCombinationQuery() { // from class: androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1
        @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
        public boolean isSupported(SessionConfig sessionConfig) {
            return false;
        }
    };

    boolean isSupported(SessionConfig sessionConfig);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u0013\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\r"}, d2 = {"Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "NO_OP_FEATURE_COMBINATION_QUERY", "Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;", "createSessionConfigBuilder", "Landroidx/camera/core/impl/SessionConfig$Builder;", "Landroidx/camera/core/impl/UseCaseConfig;", "resolution", "Landroid/util/Size;", "dynamicRange", "Landroidx/camera/core/DynamicRange;", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @JvmStatic
        public final SessionConfig.Builder createSessionConfigBuilder(UseCaseConfig<?> useCaseConfig, final Size size, DynamicRange dynamicRange) {
            final int inputFormat = useCaseConfig.getInputFormat();
            DeferrableSurface deferrableSurface = new DeferrableSurface(size, inputFormat) { // from class: androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1
                @Override // androidx.camera.core.impl.DeferrableSurface
                public ListenableFuture<Surface> provideSurface() {
                    return Futures.immediateFuture(null);
                }
            };
            Class<?> surfaceClass = UseCaseType.INSTANCE.getFeatureGroupUseCaseType(useCaseConfig).getSurfaceClass();
            if (surfaceClass != null) {
                deferrableSurface.setContainerClass(surfaceClass);
            }
            return SessionConfig.Builder.createFrom(useCaseConfig, size).addSurface(deferrableSurface, dynamicRange);
        }
    }
}
