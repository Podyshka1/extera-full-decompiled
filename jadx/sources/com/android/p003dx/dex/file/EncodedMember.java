package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.ToHuman;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EncodedMember implements ToHuman {
    private final int accessFlags;

    public abstract void addContents(DexFile dexFile);

    public abstract void debugPrint(PrintWriter printWriter, boolean z);

    public abstract int encode(DexFile dexFile, AnnotatedOutput annotatedOutput, int i, int i2);

    public abstract CstString getName();

    public EncodedMember(int i) {
        this.accessFlags = i;
    }

    public final int getAccessFlags() {
        return this.accessFlags;
    }
}
