package com.exteragram.messenger.api.dto;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class BadgeDTO {
    private final long documentId;
    private String text;

    public static /* synthetic */ BadgeDTO copy$default(BadgeDTO badgeDTO, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = badgeDTO.documentId;
        }
        if ((i & 2) != 0) {
            str = badgeDTO.text;
        }
        return badgeDTO.copy(j, str);
    }

    public final long component1() {
        return this.documentId;
    }

    public final String component2() {
        return this.text;
    }

    public final BadgeDTO copy(long j, String str) {
        return new BadgeDTO(j, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BadgeDTO)) {
            return false;
        }
        BadgeDTO badgeDTO = (BadgeDTO) obj;
        return this.documentId == badgeDTO.documentId && Intrinsics.areEqual(this.text, badgeDTO.text);
    }

    public int hashCode() {
        int iM47m = CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.documentId) * 31;
        String str = this.text;
        return iM47m + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "BadgeDTO(documentId=" + this.documentId + ", text=" + this.text + ')';
    }

    public BadgeDTO(long j, String str) {
        this.documentId = j;
        this.text = str;
    }

    public final long getDocumentId() {
        return this.documentId;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }
}
