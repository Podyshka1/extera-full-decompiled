package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.d */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1924d {
    /* JADX INFO: renamed from: a */
    public static final List m464a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC1926f abstractC1926f = (AbstractC1926f) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", abstractC1926f.mo466a());
            bundle.putLong("event_timestamp", abstractC1926f.mo467b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static final void m465b(int i, List list) {
        list.add(AbstractC1926f.m468c(i, System.currentTimeMillis()));
    }
}
