package com.exteragram.messenger.badges.source;

import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.api.model.ProfileStatus;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0082\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ<\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u001f\u001a\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/exteragram/messenger/badges/source/BadgeInfo;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "badge", "Lcom/exteragram/messenger/api/model/ProfileStatus;", "status", _UrlKt.FRAGMENT_ENCODE_SET, "canChangeBadge", _UrlKt.FRAGMENT_ENCODE_SET, "number", "<init>", "(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;ZLjava/lang/Integer;)V", "copy", "(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;ZLjava/lang/Integer;)Lcom/exteragram/messenger/badges/source/BadgeInfo;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Lcom/exteragram/messenger/api/dto/BadgeDTO;", "getBadge", "()Lcom/exteragram/messenger/api/dto/BadgeDTO;", "Lcom/exteragram/messenger/api/model/ProfileStatus;", "getStatus", "()Lcom/exteragram/messenger/api/model/ProfileStatus;", "Z", "getCanChangeBadge", "()Z", "Ljava/lang/Integer;", "getNumber", "()Ljava/lang/Integer;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
final /* data */ class BadgeInfo {
    private final BadgeDTO badge;
    private final boolean canChangeBadge;
    private final Integer number;
    private final ProfileStatus status;

    public static /* synthetic */ BadgeInfo copy$default(BadgeInfo badgeInfo, BadgeDTO badgeDTO, ProfileStatus profileStatus, boolean z, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            badgeDTO = badgeInfo.badge;
        }
        if ((i & 2) != 0) {
            profileStatus = badgeInfo.status;
        }
        if ((i & 4) != 0) {
            z = badgeInfo.canChangeBadge;
        }
        if ((i & 8) != 0) {
            num = badgeInfo.number;
        }
        return badgeInfo.copy(badgeDTO, profileStatus, z, num);
    }

    public final BadgeInfo copy(BadgeDTO badge, ProfileStatus status, boolean canChangeBadge, Integer number) {
        return new BadgeInfo(badge, status, canChangeBadge, number);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BadgeInfo)) {
            return false;
        }
        BadgeInfo badgeInfo = (BadgeInfo) other;
        return Intrinsics.areEqual(this.badge, badgeInfo.badge) && this.status == badgeInfo.status && this.canChangeBadge == badgeInfo.canChangeBadge && Intrinsics.areEqual(this.number, badgeInfo.number);
    }

    public int hashCode() {
        BadgeDTO badgeDTO = this.badge;
        int iHashCode = (((((badgeDTO == null ? 0 : badgeDTO.hashCode()) * 31) + this.status.hashCode()) * 31) + Boolean.hashCode(this.canChangeBadge)) * 31;
        Integer num = this.number;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "BadgeInfo(badge=" + this.badge + ", status=" + this.status + ", canChangeBadge=" + this.canChangeBadge + ", number=" + this.number + ")";
    }

    public BadgeInfo(BadgeDTO badgeDTO, ProfileStatus profileStatus, boolean z, Integer num) {
        this.badge = badgeDTO;
        this.status = profileStatus;
        this.canChangeBadge = z;
        this.number = num;
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

    public final Integer getNumber() {
        return this.number;
    }
}
