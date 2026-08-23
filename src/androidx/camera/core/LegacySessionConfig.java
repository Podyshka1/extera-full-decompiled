package androidx.camera.core;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0004\b\t\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\t\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u0013"}, d2 = {"Landroidx/camera/core/LegacySessionConfig;", "Landroidx/camera/core/SessionConfig;", "useCases", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "viewPort", "Landroidx/camera/core/ViewPort;", "effects", "Landroidx/camera/core/CameraEffect;", "<init>", "(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V", "useCaseGroup", "Landroidx/camera/core/UseCaseGroup;", "(Landroidx/camera/core/UseCaseGroup;)V", "isLegacy", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "requireNonEmptyUseCases", "getRequireNonEmptyUseCases", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegacySessionConfig extends SessionConfig {
    private final boolean isLegacy;
    private final boolean requireNonEmptyUseCases;

    public LegacySessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2) {
        super(list, viewPort, list2, null, null, null, 56, null);
        this.isLegacy = true;
    }

    public /* synthetic */ LegacySessionConfig(List list, ViewPort viewPort, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : viewPort, (i & 4) != 0 ? CollectionsKt.emptyList() : list2);
    }

    @Override // androidx.camera.core.SessionConfig
    /* JADX INFO: renamed from: isLegacy, reason: from getter */
    public boolean getIsLegacy() {
        return this.isLegacy;
    }

    @Override // androidx.camera.core.SessionConfig
    public boolean getRequireNonEmptyUseCases() {
        return this.requireNonEmptyUseCases;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LegacySessionConfig(UseCaseGroup useCaseGroup) {
        List<UseCase> useCases = useCaseGroup.getUseCases();
        useCaseGroup.getViewPort();
        this(useCases, null, useCaseGroup.getEffects());
    }
}
