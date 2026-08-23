package com.android.p003dx.dex;

import com.android.dex.DexFormat;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes4.dex */
public final class DexOptions {
    public static final boolean ALIGN_64BIT_REGS_SUPPORT = true;
    public boolean ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER;
    public boolean allowAllInterfaceMethodInvokes;
    public final PrintStream err;
    public boolean forceJumbo;
    public int minSdkVersion;

    public DexOptions() {
        this.ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER = true;
        this.minSdkVersion = 13;
        this.forceJumbo = false;
        this.allowAllInterfaceMethodInvokes = false;
        this.err = System.err;
    }

    public DexOptions(PrintStream printStream) {
        this.ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER = true;
        this.minSdkVersion = 13;
        this.forceJumbo = false;
        this.allowAllInterfaceMethodInvokes = false;
        this.err = printStream;
    }

    public String getMagic() {
        return DexFormat.apiToMagic(this.minSdkVersion);
    }

    public boolean apiIsSupported(int i) {
        return this.minSdkVersion >= i;
    }
}
