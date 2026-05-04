package androidx.camera.core.featuregroup.impl.resolver;

import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface FeatureGroupResolutionResult {

    public static final class Supported implements FeatureGroupResolutionResult {
        private final ResolvedFeatureGroup resolvedFeatureGroup;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Supported) && Intrinsics.areEqual(this.resolvedFeatureGroup, ((Supported) obj).resolvedFeatureGroup);
        }

        public int hashCode() {
            return this.resolvedFeatureGroup.hashCode();
        }

        public String toString() {
            return "Supported(resolvedFeatureGroup=" + this.resolvedFeatureGroup + ')';
        }

        public Supported(ResolvedFeatureGroup resolvedFeatureGroup) {
            Intrinsics.checkNotNullParameter(resolvedFeatureGroup, "resolvedFeatureGroup");
            this.resolvedFeatureGroup = resolvedFeatureGroup;
        }

        public final ResolvedFeatureGroup getResolvedFeatureGroup() {
            return this.resolvedFeatureGroup;
        }
    }

    public static final class UseCaseMissing implements FeatureGroupResolutionResult {
        private final GroupableFeature featureRequiring;
        private final String requiredUseCases;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UseCaseMissing)) {
                return false;
            }
            UseCaseMissing useCaseMissing = (UseCaseMissing) obj;
            return Intrinsics.areEqual(this.requiredUseCases, useCaseMissing.requiredUseCases) && Intrinsics.areEqual(this.featureRequiring, useCaseMissing.featureRequiring);
        }

        public int hashCode() {
            return (this.requiredUseCases.hashCode() * 31) + this.featureRequiring.hashCode();
        }

        public String toString() {
            return "UseCaseMissing(requiredUseCases=" + this.requiredUseCases + ", featureRequiring=" + this.featureRequiring + ')';
        }

        public UseCaseMissing(String requiredUseCases, GroupableFeature featureRequiring) {
            Intrinsics.checkNotNullParameter(requiredUseCases, "requiredUseCases");
            Intrinsics.checkNotNullParameter(featureRequiring, "featureRequiring");
            this.requiredUseCases = requiredUseCases;
            this.featureRequiring = featureRequiring;
        }

        public final String getRequiredUseCases() {
            return this.requiredUseCases;
        }

        public final GroupableFeature getFeatureRequiring() {
            return this.featureRequiring;
        }
    }

    public static final class UnsupportedUseCase implements FeatureGroupResolutionResult {
        private final UseCase unsupportedUseCase;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnsupportedUseCase) && Intrinsics.areEqual(this.unsupportedUseCase, ((UnsupportedUseCase) obj).unsupportedUseCase);
        }

        public int hashCode() {
            return this.unsupportedUseCase.hashCode();
        }

        public String toString() {
            return "UnsupportedUseCase(unsupportedUseCase=" + this.unsupportedUseCase + ')';
        }

        public UnsupportedUseCase(UseCase unsupportedUseCase) {
            Intrinsics.checkNotNullParameter(unsupportedUseCase, "unsupportedUseCase");
            this.unsupportedUseCase = unsupportedUseCase;
        }

        public final UseCase getUnsupportedUseCase() {
            return this.unsupportedUseCase;
        }
    }

    public static final class Unsupported implements FeatureGroupResolutionResult {
        public static final Unsupported INSTANCE = new Unsupported();

        private Unsupported() {
        }
    }
}
