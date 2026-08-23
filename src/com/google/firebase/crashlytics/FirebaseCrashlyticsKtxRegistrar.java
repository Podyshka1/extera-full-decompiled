package com.google.firebase.crashlytics;

import androidx.annotation.Keep;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class FirebaseCrashlyticsKtxRegistrar implements ComponentRegistrar {
    public static final Companion Companion = new Companion(null);

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component> getComponents() {
        return CollectionsKt.emptyList();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
