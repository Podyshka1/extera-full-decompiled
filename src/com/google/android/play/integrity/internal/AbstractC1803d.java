package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.d */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1803d {
    /* JADX INFO: renamed from: a */
    public static final List m440a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC1805f abstractC1805f = (AbstractC1805f) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", abstractC1805f.mo442a());
            bundle.putLong("event_timestamp", abstractC1805f.mo443b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static final void m441b(int i, List list) {
        list.add(AbstractC1805f.m444c(i, System.currentTimeMillis()));
    }
}
