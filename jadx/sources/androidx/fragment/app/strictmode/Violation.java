package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Violation extends RuntimeException {
    private final Fragment fragment;

    public final Fragment getFragment() {
        return this.fragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(Fragment fragment, String str) {
        super(str);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
    }
}
