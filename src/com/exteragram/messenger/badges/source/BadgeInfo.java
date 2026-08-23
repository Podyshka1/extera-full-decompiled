package com.exteragram.messenger.badges.source;

import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class BadgeInfo {
    private final BadgeDTO badge;
    private final boolean canChangeBadge;
    private final ProfileStatus status;

    public static /* synthetic */ BadgeInfo copy$default(BadgeInfo badgeInfo, BadgeDTO badgeDTO, ProfileStatus profileStatus, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            badgeDTO = badgeInfo.badge;
        }
        if ((i & 2) != 0) {
            profileStatus = badgeInfo.status;
        }
        if ((i & 4) != 0) {
            z = badgeInfo.canChangeBadge;
        }
        return badgeInfo.copy(badgeDTO, profileStatus, z);
    }

    public final BadgeInfo copy(BadgeDTO badgeDTO, ProfileStatus status, boolean z) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new BadgeInfo(badgeDTO, status, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BadgeInfo)) {
            return false;
        }
        BadgeInfo badgeInfo = (BadgeInfo) obj;
        return Intrinsics.areEqual(this.badge, badgeInfo.badge) && this.status == badgeInfo.status && this.canChangeBadge == badgeInfo.canChangeBadge;
    }

    public int hashCode() {
        BadgeDTO badgeDTO = this.badge;
        return ((((badgeDTO == null ? 0 : badgeDTO.hashCode()) * 31) + this.status.hashCode()) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.canChangeBadge);
    }

    public String toString() {
        return "BadgeInfo(badge=" + this.badge + ", status=" + this.status + ", canChangeBadge=" + this.canChangeBadge + ')';
    }

    public BadgeInfo(BadgeDTO badgeDTO, ProfileStatus status, boolean z) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.badge = badgeDTO;
        this.status = status;
        this.canChangeBadge = z;
    }

    public final BadgeDTO getBadge() {
        return this.badge;
    }

    public final ProfileStatus getStatus() {
        return this.status;
    }

    public final boolean getCanChangeBadge() {
        return this.canChangeBadge;
    }
}
