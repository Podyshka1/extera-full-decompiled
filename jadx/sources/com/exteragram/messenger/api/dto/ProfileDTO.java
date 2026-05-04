package com.exteragram.messenger.api.dto;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import com.exteragram.messenger.api.model.ProfileStatus;
import com.exteragram.messenger.api.model.ProfileType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProfileDTO {
    private final BadgeDTO badge;
    private final Boolean canChangeBadge;
    private final Boolean deleted;

    /* JADX INFO: renamed from: id */
    private final long f267id;
    private final NowPlayingInfoDTO nowPlaying;
    private final ProfileStatus status;
    private final ProfileType type;

    public static /* synthetic */ ProfileDTO copy$default(ProfileDTO profileDTO, long j, ProfileType profileType, ProfileStatus profileStatus, BadgeDTO badgeDTO, NowPlayingInfoDTO nowPlayingInfoDTO, Boolean bool, Boolean bool2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = profileDTO.f267id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            profileType = profileDTO.type;
        }
        ProfileType profileType2 = profileType;
        if ((i & 4) != 0) {
            profileStatus = profileDTO.status;
        }
        ProfileStatus profileStatus2 = profileStatus;
        if ((i & 8) != 0) {
            badgeDTO = profileDTO.badge;
        }
        BadgeDTO badgeDTO2 = badgeDTO;
        if ((i & 16) != 0) {
            nowPlayingInfoDTO = profileDTO.nowPlaying;
        }
        return profileDTO.copy(j2, profileType2, profileStatus2, badgeDTO2, nowPlayingInfoDTO, (i & 32) != 0 ? profileDTO.deleted : bool, (i & 64) != 0 ? profileDTO.canChangeBadge : bool2);
    }

    public final long component1() {
        return this.f267id;
    }

    public final ProfileType component2() {
        return this.type;
    }

    public final ProfileStatus component3() {
        return this.status;
    }

    public final BadgeDTO component4() {
        return this.badge;
    }

    public final NowPlayingInfoDTO component5() {
        return this.nowPlaying;
    }

    public final Boolean component6() {
        return this.deleted;
    }

    public final Boolean component7() {
        return this.canChangeBadge;
    }

    public final ProfileDTO copy(long j, ProfileType type, ProfileStatus status, BadgeDTO badgeDTO, NowPlayingInfoDTO nowPlayingInfoDTO, Boolean bool, Boolean bool2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        return new ProfileDTO(j, type, status, badgeDTO, nowPlayingInfoDTO, bool, bool2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileDTO)) {
            return false;
        }
        ProfileDTO profileDTO = (ProfileDTO) obj;
        return this.f267id == profileDTO.f267id && this.type == profileDTO.type && this.status == profileDTO.status && Intrinsics.areEqual(this.badge, profileDTO.badge) && Intrinsics.areEqual(this.nowPlaying, profileDTO.nowPlaying) && Intrinsics.areEqual(this.deleted, profileDTO.deleted) && Intrinsics.areEqual(this.canChangeBadge, profileDTO.canChangeBadge);
    }

    public int hashCode() {
        int iM47m = ((((CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.f267id) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31;
        BadgeDTO badgeDTO = this.badge;
        int iHashCode = (iM47m + (badgeDTO == null ? 0 : badgeDTO.hashCode())) * 31;
        NowPlayingInfoDTO nowPlayingInfoDTO = this.nowPlaying;
        int iHashCode2 = (iHashCode + (nowPlayingInfoDTO == null ? 0 : nowPlayingInfoDTO.hashCode())) * 31;
        Boolean bool = this.deleted;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.canChangeBadge;
        return iHashCode3 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public String toString() {
        return "ProfileDTO(id=" + this.f267id + ", type=" + this.type + ", status=" + this.status + ", badge=" + this.badge + ", nowPlaying=" + this.nowPlaying + ", deleted=" + this.deleted + ", canChangeBadge=" + this.canChangeBadge + ')';
    }

    public ProfileDTO(long j, ProfileType type, ProfileStatus status, BadgeDTO badgeDTO, NowPlayingInfoDTO nowPlayingInfoDTO, Boolean bool, Boolean bool2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f267id = j;
        this.type = type;
        this.status = status;
        this.badge = badgeDTO;
        this.nowPlaying = nowPlayingInfoDTO;
        this.deleted = bool;
        this.canChangeBadge = bool2;
    }

    public final long getId() {
        return this.f267id;
    }

    public final ProfileType getType() {
        return this.type;
    }

    public final ProfileStatus getStatus() {
        return this.status;
    }

    public final BadgeDTO getBadge() {
        return this.badge;
    }

    public final NowPlayingInfoDTO getNowPlaying() {
        return this.nowPlaying;
    }

    public final Boolean getDeleted() {
        return this.deleted;
    }

    public final Boolean getCanChangeBadge() {
        return this.canChangeBadge;
    }
}
