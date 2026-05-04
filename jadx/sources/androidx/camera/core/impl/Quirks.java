package androidx.camera.core.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class Quirks {
    private final List mQuirks;

    public Quirks(List list) {
        this.mQuirks = new ArrayList(list);
    }

    public Quirk get(Class cls) {
        for (Quirk quirk : this.mQuirks) {
            if (quirk.getClass() == cls) {
                return quirk;
            }
        }
        return null;
    }

    public List getAll(Class cls) {
        ArrayList arrayList = new ArrayList();
        for (Quirk quirk : this.mQuirks) {
            if (cls.isAssignableFrom(quirk.getClass())) {
                arrayList.add(quirk);
            }
        }
        return arrayList;
    }

    public boolean contains(Class cls) {
        Iterator it = this.mQuirks.iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(((Quirk) it.next()).getClass())) {
                return true;
            }
        }
        return false;
    }

    public static String toString(Quirks quirks) {
        ArrayList arrayList = new ArrayList();
        Iterator it = quirks.mQuirks.iterator();
        while (it.hasNext()) {
            arrayList.add(((Quirk) it.next()).getClass().getSimpleName());
        }
        return Quirks$$ExternalSyntheticBackport0.m93m(" | ", arrayList);
    }
}
