package com.yandex.runtime.sensors.internal.telephony;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GsmCellInfo implements Serializable {
    private int cid;
    private Integer earfcn;
    private int lac;
    private int mcc;
    private int mnc;
    private Integer pci;
    private int strength;
    private long timestampMilliseconds;
    private Integer timingAdvance;
    private CellType type;

    public GsmCellInfo(int i, int i2, int i3, int i4, int i5, Integer num, CellType cellType, long j, Integer num2, Integer num3) {
        this.cid = i;
        this.lac = i2;
        this.strength = i3;
        this.mcc = i4;
        this.mnc = i5;
        this.timingAdvance = num;
        this.type = cellType;
        this.timestampMilliseconds = j;
        this.pci = num2;
        this.earfcn = num3;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.cid = archive.add(this.cid);
        this.lac = archive.add(this.lac);
        this.strength = archive.add(this.strength);
        this.mcc = archive.add(this.mcc);
        this.mnc = archive.add(this.mnc);
        this.timingAdvance = archive.add(this.timingAdvance, true);
        this.type = (CellType) archive.add(this.type, false, (Class<CellType>) CellType.class);
        this.timestampMilliseconds = archive.add(this.timestampMilliseconds);
        this.pci = archive.add(this.pci, true);
        this.earfcn = archive.add(this.earfcn, true);
    }
}
