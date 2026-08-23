package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    };
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<ComponentSplice> list, boolean z5, long j4, int i, int i2, int i3) {
        this.spliceEventId = j;
        this.spliceEventCancelIndicator = z;
        this.outOfNetworkIndicator = z2;
        this.programSpliceFlag = z3;
        this.spliceImmediateFlag = z4;
        this.programSplicePts = j2;
        this.programSplicePlaybackPositionUs = j3;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z5;
        this.breakDurationUs = j4;
        this.uniqueProgramId = i;
        this.availNum = i2;
        this.availsExpected = i3;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(ComponentSplice.createFromParcel(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    public static SpliceInsertCommand parseFromSection(ParsableByteArray parsableByteArray, long j, TimestampAdjuster timestampAdjuster) {
        List list;
        long j2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int unsignedByte;
        int unsignedByte2;
        boolean z5;
        int i2;
        long spliceTime;
        long unsignedInt = parsableByteArray.readUnsignedInt();
        boolean z6 = (parsableByteArray.readUnsignedByte() & 128) != 0;
        List list2 = Collections.EMPTY_LIST;
        long unsignedInt2 = -9223372036854775807L;
        if (z6) {
            list = list2;
            j2 = -9223372036854775807L;
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
            i = 0;
            unsignedByte = 0;
            unsignedByte2 = 0;
        } else {
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            boolean z7 = (unsignedByte3 & 128) != 0;
            boolean z8 = (unsignedByte3 & 64) != 0;
            boolean z9 = (unsignedByte3 & 32) != 0;
            boolean z10 = (unsignedByte3 & 16) != 0;
            long spliceTime2 = (!z8 || z10) ? -9223372036854775807L : TimeSignalCommand.parseSpliceTime(parsableByteArray, j);
            if (!z8) {
                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                ArrayList arrayList = new ArrayList(unsignedByte4);
                int i3 = 0;
                while (i3 < unsignedByte4) {
                    int unsignedByte5 = parsableByteArray.readUnsignedByte();
                    if (z10) {
                        i2 = unsignedByte4;
                        spliceTime = -9223372036854775807L;
                    } else {
                        i2 = unsignedByte4;
                        spliceTime = TimeSignalCommand.parseSpliceTime(parsableByteArray, j);
                    }
                    arrayList.add(new ComponentSplice(unsignedByte5, spliceTime, timestampAdjuster.adjustTsTimestamp(spliceTime)));
                    i3++;
                    unsignedByte4 = i2;
                }
                list2 = arrayList;
            }
            if (z9) {
                long unsignedByte6 = parsableByteArray.readUnsignedByte();
                boolean z11 = (128 & unsignedByte6) != 0;
                unsignedInt2 = ((((unsignedByte6 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                z5 = z11;
            } else {
                z5 = false;
            }
            int unsignedShort = parsableByteArray.readUnsignedShort();
            long j3 = spliceTime2;
            j2 = unsignedInt2;
            unsignedInt2 = j3;
            unsignedByte = parsableByteArray.readUnsignedByte();
            unsignedByte2 = parsableByteArray.readUnsignedByte();
            i = unsignedShort;
            z4 = z5;
            z = z7;
            z2 = z8;
            list = list2;
            z3 = z10;
        }
        return new SpliceInsertCommand(unsignedInt, z6, z, z2, z3, unsignedInt2, timestampAdjuster.adjustTsTimestamp(unsignedInt2), list, z4, j2, i, unsignedByte, unsignedByte2);
    }

    public static final class ComponentSplice {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        private ComponentSplice(int i, long j, long j2) {
            this.componentTag = i;
            this.componentSplicePts = j;
            this.componentSplicePlaybackPositionUs = j2;
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.componentSplicePts);
            parcel.writeLong(this.componentSplicePlaybackPositionUs);
        }

        public static ComponentSplice createFromParcel(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.componentSpliceList.get(i2).writeToParcel(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
