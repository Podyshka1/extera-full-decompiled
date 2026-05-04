package com.android.p003dx.p004cf.iface;

import com.android.p003dx.util.ByteArray;

/* JADX INFO: loaded from: classes4.dex */
public interface ParseObserver {
    void changeIndent(int i);

    void endParsingMember(ByteArray byteArray, int i, String str, String str2, Member member);

    void parsed(ByteArray byteArray, int i, int i2, String str);

    void startParsingMember(ByteArray byteArray, int i, String str, String str2);
}
