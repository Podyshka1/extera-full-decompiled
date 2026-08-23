package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.d */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1764d {
    /* JADX INFO: renamed from: a */
    public static final List m460a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC1766f abstractC1766f = (AbstractC1766f) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", abstractC1766f.mo462a());
            bundle.putLong("event_timestamp", abstractC1766f.mo463b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static final void m461b(int i, List list) {
        list.add(AbstractC1766f.m464c(i, System.currentTimeMillis()));
    }
}
