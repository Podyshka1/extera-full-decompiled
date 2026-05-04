package androidx.camera.core.impl;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class Quirks$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m93m(CharSequence charSequence, Iterable iterable) {
        if (charSequence == null) {
            throw new NullPointerException("delimiter");
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append(charSequence);
            }
        }
        return sb.toString();
    }
}
