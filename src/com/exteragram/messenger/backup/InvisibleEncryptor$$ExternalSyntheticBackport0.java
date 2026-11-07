package com.exteragram.messenger.backup;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class InvisibleEncryptor$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m245m(CharSequence charSequence, CharSequence[] charSequenceArr) {
        if (charSequence == null) {
            f$$ExternalSyntheticBUOutline2.m216m("delimiter");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (charSequenceArr.length > 0) {
            sb.append(charSequenceArr[0]);
            for (int i = 1; i < charSequenceArr.length; i++) {
                sb.append(charSequence);
                sb.append(charSequenceArr[i]);
            }
        }
        return sb.toString();
    }
}
