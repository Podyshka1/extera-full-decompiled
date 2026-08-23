package androidx.camera.core;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacySessionConfig extends SessionConfig {
    private final boolean isLegacy;
    private final boolean requireNonEmptyUseCases;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacySessionConfig(List useCases, ViewPort viewPort, List effects) {
        super(useCases, viewPort, effects, null, null, null, 56, null);
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        Intrinsics.checkNotNullParameter(effects, "effects");
        this.isLegacy = true;
    }

    public /* synthetic */ LegacySessionConfig(List list, ViewPort viewPort, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : viewPort, (i & 4) != 0 ? CollectionsKt.emptyList() : list2);
    }

    @Override // androidx.camera.core.SessionConfig
    public boolean isLegacy() {
        return this.isLegacy;
    }

    @Override // androidx.camera.core.SessionConfig
    public boolean getRequireNonEmptyUseCases() {
        return this.requireNonEmptyUseCases;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LegacySessionConfig(UseCaseGroup useCaseGroup) {
        Intrinsics.checkNotNullParameter(useCaseGroup, "useCaseGroup");
        List useCases = useCaseGroup.getUseCases();
        Intrinsics.checkNotNullExpressionValue(useCases, "getUseCases(...)");
        useCaseGroup.getViewPort();
        List effects = useCaseGroup.getEffects();
        Intrinsics.checkNotNullExpressionValue(effects, "getEffects(...)");
        this(useCases, null, effects);
    }
}
