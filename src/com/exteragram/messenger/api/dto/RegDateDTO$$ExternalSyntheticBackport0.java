package com.exteragram.messenger.api.dto;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class RegDateDTO$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ int m226m(double d) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }
}
