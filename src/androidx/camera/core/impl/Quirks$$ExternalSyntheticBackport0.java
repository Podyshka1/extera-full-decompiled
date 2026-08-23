package androidx.camera.core.impl;

import java.util.Iterator;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class Quirks$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m83m(CharSequence charSequence, Iterable iterable) {
        if (charSequence == null) {
            f$$ExternalSyntheticBUOutline2.m179m("delimiter");
            return null;
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
