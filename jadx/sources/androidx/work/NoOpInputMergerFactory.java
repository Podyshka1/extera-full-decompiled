package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpInputMergerFactory extends InputMergerFactory {
    public static final NoOpInputMergerFactory INSTANCE = new NoOpInputMergerFactory();

    /* JADX INFO: renamed from: createInputMerger, reason: collision with other method in class */
    public Void m2182createInputMerger(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        return null;
    }

    private NoOpInputMergerFactory() {
    }

    @Override // androidx.work.InputMergerFactory
    public /* bridge */ /* synthetic */ InputMerger createInputMerger(String str) {
        return (InputMerger) m2182createInputMerger(str);
    }
}
