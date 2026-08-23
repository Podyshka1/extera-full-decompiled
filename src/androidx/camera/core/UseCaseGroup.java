package androidx.camera.core;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseGroup {
    private final List mEffects;
    private final List mUseCases;

    public ViewPort getViewPort() {
        return null;
    }

    UseCaseGroup(ViewPort viewPort, List list, List list2) {
        this.mUseCases = list;
        this.mEffects = list2;
    }

    public List getUseCases() {
        return this.mUseCases;
    }

    public List getEffects() {
        return this.mEffects;
    }

    public static final class Builder {
        private static final List SUPPORTED_TARGETS = Arrays.asList(1, 2, 4, 3, 7);
        private final List mUseCases = new ArrayList();
        private final List mEffects = new ArrayList();

        private void checkEffectTargets() {
            Iterator it = this.mEffects.iterator();
            if (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                throw null;
            }
        }

        public Builder addUseCase(UseCase useCase) {
            this.mUseCases.add(useCase);
            return this;
        }

        public UseCaseGroup build() {
            Preconditions.checkArgument(!this.mUseCases.isEmpty(), "UseCase must not be empty.");
            checkEffectTargets();
            return new UseCaseGroup(null, this.mUseCases, this.mEffects);
        }
    }
}
