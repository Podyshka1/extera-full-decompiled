package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.Box;
import com.googlecode.mp4parser.AbstractContainerBox;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractSampleEntry extends AbstractContainerBox implements Box {
    protected int dataReferenceIndex;

    protected AbstractSampleEntry(String str) {
        super(str);
        this.dataReferenceIndex = 1;
    }

    public void setDataReferenceIndex(int i) {
        this.dataReferenceIndex = i;
    }
}
