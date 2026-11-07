package com.exteragram.messenger.utils.ui;

import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes.dex */
public class TextPaint extends android.text.TextPaint {
    public TextPaint(int i) {
        super(i);
        setTypeface(AndroidUtilities.regular());
    }
}
