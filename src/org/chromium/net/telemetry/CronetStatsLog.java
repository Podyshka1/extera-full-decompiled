package org.chromium.net.telemetry;

import android.util.StatsEvent;
import android.util.StatsLog;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetStatsLog {
    public static void write(int i, long j, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, int i7, boolean z3, boolean z4, boolean z5, int i8, String str, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29, long j2, int i30) {
        StatsEvent.Builder builderNewBuilder = StatsEvent.newBuilder();
        builderNewBuilder.setAtomId(i);
        builderNewBuilder.writeLong(j);
        builderNewBuilder.writeInt(i2);
        builderNewBuilder.writeInt(i3);
        builderNewBuilder.writeInt(i4);
        builderNewBuilder.writeInt(i5);
        builderNewBuilder.writeInt(i6);
        builderNewBuilder.writeBoolean(z);
        builderNewBuilder.writeBoolean(z2);
        builderNewBuilder.writeInt(i7);
        builderNewBuilder.writeBoolean(z3);
        builderNewBuilder.writeBoolean(z4);
        builderNewBuilder.writeBoolean(z5);
        builderNewBuilder.writeInt(i8);
        builderNewBuilder.writeString(str);
        builderNewBuilder.writeInt(i9);
        builderNewBuilder.writeInt(i10);
        builderNewBuilder.writeInt(i11);
        builderNewBuilder.writeInt(i12);
        builderNewBuilder.writeInt(i13);
        builderNewBuilder.writeInt(i14);
        builderNewBuilder.writeInt(i15);
        builderNewBuilder.writeInt(i16);
        builderNewBuilder.writeInt(i17);
        builderNewBuilder.writeInt(i18);
        builderNewBuilder.writeInt(i19);
        builderNewBuilder.writeInt(i20);
        builderNewBuilder.writeInt(i21);
        builderNewBuilder.writeInt(i22);
        builderNewBuilder.writeInt(i23);
        builderNewBuilder.writeInt(i24);
        builderNewBuilder.writeInt(i25);
        builderNewBuilder.writeInt(i26);
        builderNewBuilder.writeInt(i27);
        builderNewBuilder.writeInt(i28);
        builderNewBuilder.writeInt(i29);
        builderNewBuilder.writeLong(j2);
        builderNewBuilder.writeInt(i30);
        if (703 == i) {
            builderNewBuilder.addBooleanAnnotation((byte) 1, true);
        }
        builderNewBuilder.usePooledBuffer();
        StatsLog.write(builderNewBuilder.build());
    }

    public static void write(int i, long j, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
        StatsEvent.Builder builderNewBuilder = StatsEvent.newBuilder();
        builderNewBuilder.setAtomId(i);
        builderNewBuilder.writeLong(j);
        builderNewBuilder.writeInt(i2);
        builderNewBuilder.writeInt(i3);
        builderNewBuilder.writeInt(i4);
        builderNewBuilder.writeInt(i5);
        builderNewBuilder.writeInt(i6);
        builderNewBuilder.writeInt(i7);
        builderNewBuilder.writeInt(i8);
        builderNewBuilder.writeInt(i9);
        builderNewBuilder.writeInt(i10);
        builderNewBuilder.writeInt(i11);
        builderNewBuilder.writeInt(i12);
        builderNewBuilder.writeInt(i13);
        builderNewBuilder.writeInt(i14);
        if (762 == i) {
            builderNewBuilder.addBooleanAnnotation((byte) 1, true);
        }
        builderNewBuilder.usePooledBuffer();
        StatsLog.write(builderNewBuilder.build());
    }

    public static void write(int i, long j, int i2, int i3, int i4, int i5, int i6, long j2, int i7, int i8, boolean z, boolean z2, int i9, int i10, int i11, long j3, long j4, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, String str, int i22, long j5, long j6, long j7, long j8) {
        StatsEvent.Builder builderNewBuilder = StatsEvent.newBuilder();
        builderNewBuilder.setAtomId(i);
        builderNewBuilder.writeLong(j);
        builderNewBuilder.writeInt(i2);
        builderNewBuilder.writeInt(i3);
        builderNewBuilder.writeInt(i4);
        builderNewBuilder.writeInt(i5);
        builderNewBuilder.writeInt(i6);
        builderNewBuilder.writeLong(j2);
        builderNewBuilder.writeInt(i7);
        builderNewBuilder.writeInt(i8);
        builderNewBuilder.writeBoolean(z);
        builderNewBuilder.writeBoolean(z2);
        builderNewBuilder.writeInt(i9);
        builderNewBuilder.writeInt(i10);
        builderNewBuilder.writeInt(i11);
        builderNewBuilder.writeLong(j3);
        builderNewBuilder.writeLong(j4);
        builderNewBuilder.writeInt(i12);
        builderNewBuilder.writeInt(i13);
        builderNewBuilder.writeInt(i14);
        builderNewBuilder.writeInt(i15);
        builderNewBuilder.writeInt(i16);
        if (704 == i) {
            builderNewBuilder.addBooleanAnnotation((byte) 1, true);
        }
        builderNewBuilder.writeInt(i17);
        builderNewBuilder.writeInt(i18);
        builderNewBuilder.writeInt(i19);
        builderNewBuilder.writeInt(i20);
        builderNewBuilder.writeInt(i21);
        builderNewBuilder.writeString(str);
        builderNewBuilder.writeInt(i22);
        builderNewBuilder.writeLong(j5);
        builderNewBuilder.writeLong(j6);
        builderNewBuilder.writeLong(j7);
        builderNewBuilder.writeLong(j8);
        builderNewBuilder.usePooledBuffer();
        StatsLog.write(builderNewBuilder.build());
    }
}
