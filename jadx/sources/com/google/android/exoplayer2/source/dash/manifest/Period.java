package com.google.android.exoplayer2.source.dash.manifest;

import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class Period {
    public final List adaptationSets;
    public final Descriptor assetIdentifier;
    public final List eventStreams;

    /* JADX INFO: renamed from: id */
    public final String f326id;
    public final long startMs;

    public Period(String str, long j, List list, List list2) {
        this(str, j, list, list2, null);
    }

    public Period(String str, long j, List list, List list2, Descriptor descriptor) {
        this.f326id = str;
        this.startMs = j;
        this.adaptationSets = DesugarCollections.unmodifiableList(list);
        this.eventStreams = DesugarCollections.unmodifiableList(list2);
        this.assetIdentifier = descriptor;
    }

    public int getAdaptationSetIndex(int i) {
        int size = this.adaptationSets.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((AdaptationSet) this.adaptationSets.get(i2)).type == i) {
                return i2;
            }
        }
        return -1;
    }
}
