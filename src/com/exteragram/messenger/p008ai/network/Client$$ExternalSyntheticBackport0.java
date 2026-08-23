package com.exteragram.messenger.p008ai.network;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class Client$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m223m(String str) {
        int length = str.length();
        while (length > 0) {
            int iCodePointBefore = Character.codePointBefore(str, length);
            if (!Character.isWhitespace(iCodePointBefore)) {
                break;
            }
            length -= Character.charCount(iCodePointBefore);
        }
        return str.substring(0, length);
    }
}
