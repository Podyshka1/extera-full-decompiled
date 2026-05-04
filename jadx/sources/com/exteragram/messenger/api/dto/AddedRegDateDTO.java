package com.exteragram.messenger.api.dto;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;

/* JADX INFO: loaded from: classes4.dex */
public final class AddedRegDateDTO {
    private final long userId;

    public static /* synthetic */ AddedRegDateDTO copy$default(AddedRegDateDTO addedRegDateDTO, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = addedRegDateDTO.userId;
        }
        return addedRegDateDTO.copy(j);
    }

    public final long component1() {
        return this.userId;
    }

    public final AddedRegDateDTO copy(long j) {
        return new AddedRegDateDTO(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AddedRegDateDTO) && this.userId == ((AddedRegDateDTO) obj).userId;
    }

    public int hashCode() {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.userId);
    }

    public String toString() {
        return "AddedRegDateDTO(userId=" + this.userId + ')';
    }

    public AddedRegDateDTO(long j) {
        this.userId = j;
    }

    public final long getUserId() {
        return this.userId;
    }
}
