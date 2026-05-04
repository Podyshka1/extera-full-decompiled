package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SavedStateHandle {
    public static final Companion Companion = new Companion(null);
    private SavedStateHandleImpl impl;
    private final Map liveDatas;

    public SavedStateHandle(Map initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(initialState);
    }

    public SavedStateHandle() {
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(null, 1, null);
    }

    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.impl.getSavedStateProvider();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                bundle = bundle2;
            }
            if (bundle == null) {
                return new SavedStateHandle();
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            bundle.setClassLoader(classLoader);
            return new SavedStateHandle(SavedStateReader.m2170toMapimpl(SavedStateReader.m2164constructorimpl(bundle)));
        }
    }
}
