package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.d */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1703d {
    /* JADX INFO: renamed from: a */
    public static final List m424a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC1705f abstractC1705f = (AbstractC1705f) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", abstractC1705f.mo426a());
            bundle.putLong("event_timestamp", abstractC1705f.mo427b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static final void m425b(int i, List list) {
        list.add(AbstractC1705f.m428c(i, System.currentTimeMillis()));
    }
}
