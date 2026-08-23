package androidx.credentials.exceptions.domerrors;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DomError {
    private final String type;

    public DomError(String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    public String getType() {
        return this.type;
    }
}
