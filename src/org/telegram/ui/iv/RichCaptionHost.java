package org.telegram.ui.iv;

/* JADX INFO: loaded from: classes7.dex */
public interface RichCaptionHost {
    RichEditText getCaptionEditText();

    BlockRow getRow();

    boolean isPressOnCaption(int i, int i2);

    void persistCaption();
}
