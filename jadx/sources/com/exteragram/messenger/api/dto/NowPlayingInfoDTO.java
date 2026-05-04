package com.exteragram.messenger.api.dto;

import com.exteragram.messenger.api.model.NowPlayingServiceType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NowPlayingInfoDTO {
    private final NowPlayingServiceType serviceType;
    private String username;

    public static /* synthetic */ NowPlayingInfoDTO copy$default(NowPlayingInfoDTO nowPlayingInfoDTO, NowPlayingServiceType nowPlayingServiceType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            nowPlayingServiceType = nowPlayingInfoDTO.serviceType;
        }
        if ((i & 2) != 0) {
            str = nowPlayingInfoDTO.username;
        }
        return nowPlayingInfoDTO.copy(nowPlayingServiceType, str);
    }

    public final NowPlayingServiceType component1() {
        return this.serviceType;
    }

    public final String component2() {
        return this.username;
    }

    public final NowPlayingInfoDTO copy(NowPlayingServiceType serviceType, String str) {
        Intrinsics.checkNotNullParameter(serviceType, "serviceType");
        return new NowPlayingInfoDTO(serviceType, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NowPlayingInfoDTO)) {
            return false;
        }
        NowPlayingInfoDTO nowPlayingInfoDTO = (NowPlayingInfoDTO) obj;
        return this.serviceType == nowPlayingInfoDTO.serviceType && Intrinsics.areEqual(this.username, nowPlayingInfoDTO.username);
    }

    public int hashCode() {
        int iHashCode = this.serviceType.hashCode() * 31;
        String str = this.username;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "NowPlayingInfoDTO(serviceType=" + this.serviceType + ", username=" + this.username + ')';
    }

    public NowPlayingInfoDTO(NowPlayingServiceType serviceType, String str) {
        Intrinsics.checkNotNullParameter(serviceType, "serviceType");
        this.serviceType = serviceType;
        this.username = str;
    }

    public final NowPlayingServiceType getServiceType() {
        return this.serviceType;
    }

    public final String getUsername() {
        return this.username;
    }

    public final void setUsername(String str) {
        this.username = str;
    }
}
