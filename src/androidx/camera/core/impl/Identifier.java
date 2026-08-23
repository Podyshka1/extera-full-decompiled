package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Identifier {
    public abstract Object getValue();

    public static Identifier create(Object obj) {
        return new AutoValue_Identifier(obj);
    }
}
