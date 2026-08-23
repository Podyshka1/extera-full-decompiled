package com.exteragram.messenger.api.dto;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class BoostySubscriberDTO {

    /* JADX INFO: renamed from: id */
    private final long f266id;
    private final String name;
    private final BigDecimal totalAmountRub;
    private final BigDecimal totalAmountUsd;

    public static /* synthetic */ BoostySubscriberDTO copy$default(BoostySubscriberDTO boostySubscriberDTO, long j, String str, BigDecimal bigDecimal, BigDecimal bigDecimal2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = boostySubscriberDTO.f266id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = boostySubscriberDTO.name;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            bigDecimal = boostySubscriberDTO.totalAmountRub;
        }
        BigDecimal bigDecimal3 = bigDecimal;
        if ((i & 8) != 0) {
            bigDecimal2 = boostySubscriberDTO.totalAmountUsd;
        }
        return boostySubscriberDTO.copy(j2, str2, bigDecimal3, bigDecimal2);
    }

    public final long component1() {
        return this.f266id;
    }

    public final String component2() {
        return this.name;
    }

    public final BigDecimal component3() {
        return this.totalAmountRub;
    }

    public final BigDecimal component4() {
        return this.totalAmountUsd;
    }

    public final BoostySubscriberDTO copy(long j, String name, BigDecimal totalAmountRub, BigDecimal totalAmountUsd) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(totalAmountRub, "totalAmountRub");
        Intrinsics.checkNotNullParameter(totalAmountUsd, "totalAmountUsd");
        return new BoostySubscriberDTO(j, name, totalAmountRub, totalAmountUsd);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoostySubscriberDTO)) {
            return false;
        }
        BoostySubscriberDTO boostySubscriberDTO = (BoostySubscriberDTO) obj;
        return this.f266id == boostySubscriberDTO.f266id && Intrinsics.areEqual(this.name, boostySubscriberDTO.name) && Intrinsics.areEqual(this.totalAmountRub, boostySubscriberDTO.totalAmountRub) && Intrinsics.areEqual(this.totalAmountUsd, boostySubscriberDTO.totalAmountUsd);
    }

    public int hashCode() {
        return (((((CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.f266id) * 31) + this.name.hashCode()) * 31) + this.totalAmountRub.hashCode()) * 31) + this.totalAmountUsd.hashCode();
    }

    public String toString() {
        return "BoostySubscriberDTO(id=" + this.f266id + ", name=" + this.name + ", totalAmountRub=" + this.totalAmountRub + ", totalAmountUsd=" + this.totalAmountUsd + ')';
    }

    public BoostySubscriberDTO(long j, String name, BigDecimal totalAmountRub, BigDecimal totalAmountUsd) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(totalAmountRub, "totalAmountRub");
        Intrinsics.checkNotNullParameter(totalAmountUsd, "totalAmountUsd");
        this.f266id = j;
        this.name = name;
        this.totalAmountRub = totalAmountRub;
        this.totalAmountUsd = totalAmountUsd;
    }

    public final long getId() {
        return this.f266id;
    }

    public final String getName() {
        return this.name;
    }

    public final BigDecimal getTotalAmountRub() {
        return this.totalAmountRub;
    }

    public final BigDecimal getTotalAmountUsd() {
        return this.totalAmountUsd;
    }
}
