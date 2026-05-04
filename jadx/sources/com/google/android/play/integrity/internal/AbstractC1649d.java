package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.d */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1649d {
    /* JADX INFO: renamed from: a */
    public static final List m365a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC1651f abstractC1651f = (AbstractC1651f) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", abstractC1651f.mo367a());
            bundle.putLong("event_timestamp", abstractC1651f.mo368b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static final void m366b(int i, List list) {
        list.add(AbstractC1651f.m369c(i, System.currentTimeMillis()));
    }
}
