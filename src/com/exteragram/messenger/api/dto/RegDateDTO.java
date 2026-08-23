package com.exteragram.messenger.api.dto;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import com.exteragram.messenger.api.model.RegDateFlag;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RegDateDTO {
    private final double accuracy;
    private final String date;
    private final RegDateFlag flag;
    private final long timestamp;

    public static /* synthetic */ RegDateDTO copy$default(RegDateDTO regDateDTO, long j, double d, RegDateFlag regDateFlag, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = regDateDTO.timestamp;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            d = regDateDTO.accuracy;
        }
        double d2 = d;
        if ((i & 4) != 0) {
            regDateFlag = regDateDTO.flag;
        }
        RegDateFlag regDateFlag2 = regDateFlag;
        if ((i & 8) != 0) {
            str = regDateDTO.date;
        }
        return regDateDTO.copy(j2, d2, regDateFlag2, str);
    }

    public final long component1() {
        return this.timestamp;
    }

    public final double component2() {
        return this.accuracy;
    }

    public final RegDateFlag component3() {
        return this.flag;
    }

    public final String component4() {
        return this.date;
    }

    public final RegDateDTO copy(long j, double d, RegDateFlag flag, String date) {
        Intrinsics.checkNotNullParameter(flag, "flag");
        Intrinsics.checkNotNullParameter(date, "date");
        return new RegDateDTO(j, d, flag, date);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegDateDTO)) {
            return false;
        }
        RegDateDTO regDateDTO = (RegDateDTO) obj;
        return this.timestamp == regDateDTO.timestamp && Double.compare(this.accuracy, regDateDTO.accuracy) == 0 && this.flag == regDateDTO.flag && Intrinsics.areEqual(this.date, regDateDTO.date);
    }

    public int hashCode() {
        return (((((CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.timestamp) * 31) + RegDateDTO$$ExternalSyntheticBackport0.m226m(this.accuracy)) * 31) + this.flag.hashCode()) * 31) + this.date.hashCode();
    }

    public String toString() {
        return "RegDateDTO(timestamp=" + this.timestamp + ", accuracy=" + this.accuracy + ", flag=" + this.flag + ", date=" + this.date + ')';
    }

    public RegDateDTO(long j, double d, RegDateFlag flag, String date) {
        Intrinsics.checkNotNullParameter(flag, "flag");
        Intrinsics.checkNotNullParameter(date, "date");
        this.timestamp = j;
        this.accuracy = d;
        this.flag = flag;
        this.date = date;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final double getAccuracy() {
        return this.accuracy;
    }

    public final RegDateFlag getFlag() {
        return this.flag;
    }

    public final String getDate() {
        return this.date;
    }
}
