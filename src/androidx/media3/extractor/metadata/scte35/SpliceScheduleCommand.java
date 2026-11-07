package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public final List<Event> events;

    public static final class Event {
        public final boolean autoReturn;
        public final int availNum;
        public final int availsExpected;
        public final long breakDurationUs;
        public final List<ComponentSplice> componentSpliceList;
        public final boolean outOfNetworkIndicator;
        public final boolean programSpliceFlag;
        public final boolean spliceEventCancelIndicator;
        public final long spliceEventId;
        public final int uniqueProgramId;
        public final long utcSpliceTime;

        private Event(long j, boolean z, boolean z2, boolean z3, List<ComponentSplice> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.spliceEventId = j;
            this.spliceEventCancelIndicator = z;
            this.outOfNetworkIndicator = z2;
            this.programSpliceFlag = z3;
            this.componentSpliceList = Collections.unmodifiableList(list);
            this.utcSpliceTime = j2;
            this.autoReturn = z4;
            this.breakDurationUs = j3;
            this.uniqueProgramId = i;
            this.availNum = i2;
            this.availsExpected = i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Event parseFromSection(ParsableByteArray parsableByteArray) {
            boolean z;
            ArrayList arrayList;
            boolean z2;
            boolean z3;
            long j;
            boolean z4;
            long j2;
            int i;
            int i2;
            int unsignedByte;
            boolean z5;
            long unsignedInt;
            long unsignedInt2 = parsableByteArray.readUnsignedInt();
            boolean z6 = true;
            if ((parsableByteArray.readUnsignedByte() & 128) != 0) {
                z = true;
            } else {
                z = true;
                z6 = false;
            }
            ArrayList arrayList2 = new ArrayList();
            if (z6) {
                arrayList = arrayList2;
                z2 = false;
                z3 = false;
                j = -9223372036854775807L;
                z4 = false;
                j2 = -9223372036854775807L;
                i = 0;
                i2 = 0;
                unsignedByte = 0;
            } else {
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                boolean z7 = (unsignedByte2 & 128) != 0 ? z : false;
                boolean z8 = (unsignedByte2 & 64) != 0 ? z : false;
                boolean z9 = (unsignedByte2 & 32) != 0 ? z : false;
                long unsignedInt3 = z8 ? parsableByteArray.readUnsignedInt() : -9223372036854775807L;
                if (!z8) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    ArrayList arrayList3 = new ArrayList(unsignedByte3);
                    int i3 = 0;
                    while (i3 < unsignedByte3) {
                        arrayList3.add(new ComponentSplice(parsableByteArray.readUnsignedByte(), parsableByteArray.readUnsignedInt()));
                        i3++;
                        unsignedByte3 = unsignedByte3;
                    }
                    arrayList2 = arrayList3;
                }
                if (z9) {
                    long unsignedByte4 = parsableByteArray.readUnsignedByte();
                    boolean z10 = (128 & unsignedByte4) != 0;
                    unsignedInt = ((((unsignedByte4 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                    z5 = z10;
                } else {
                    z5 = false;
                    unsignedInt = -9223372036854775807L;
                }
                int unsignedShort = parsableByteArray.readUnsignedShort();
                int unsignedByte5 = parsableByteArray.readUnsignedByte();
                boolean z11 = z7;
                z4 = z5;
                z2 = z11;
                unsignedByte = parsableByteArray.readUnsignedByte();
                long j3 = unsignedInt3;
                i = unsignedShort;
                i2 = unsignedByte5;
                long j4 = unsignedInt;
                arrayList = arrayList2;
                z3 = z8;
                j = j3;
                j2 = j4;
            }
            return new Event(unsignedInt2, z6, z2, z3, arrayList, j, z4, j2, i, i2, unsignedByte);
        }
    }

    public static final class ComponentSplice {
        public final int componentTag;
        public final long utcSpliceTime;

        private ComponentSplice(int i, long j) {
            this.componentTag = i;
            this.utcSpliceTime = j;
        }
    }

    private SpliceScheduleCommand(List<Event> list) {
        this.events = Collections.unmodifiableList(list);
    }

    public static SpliceScheduleCommand parseFromSection(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        ArrayList arrayList = new ArrayList(unsignedByte);
        for (int i = 0; i < unsignedByte; i++) {
            arrayList.add(Event.parseFromSection(parsableByteArray));
        }
        return new SpliceScheduleCommand(arrayList);
    }
}
