package androidx.datastore.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class State {
    private final int version;

    public /* synthetic */ State(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    private State(int i) {
        this.version = i;
    }

    public final int getVersion() {
        return this.version;
    }
}
