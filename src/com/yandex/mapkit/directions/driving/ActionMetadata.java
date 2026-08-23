package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ActionMetadata implements Serializable {
    private LeaveRoundaboutMetadata leaveRoundaboutMetadada;
    private UturnMetadata uturnMetadata;

    public ActionMetadata(UturnMetadata uturnMetadata, LeaveRoundaboutMetadata leaveRoundaboutMetadata) {
        this.uturnMetadata = uturnMetadata;
        this.leaveRoundaboutMetadada = leaveRoundaboutMetadata;
    }

    public ActionMetadata() {
    }

    public UturnMetadata getUturnMetadata() {
        return this.uturnMetadata;
    }

    public LeaveRoundaboutMetadata getLeaveRoundaboutMetadada() {
        return this.leaveRoundaboutMetadada;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.uturnMetadata = (UturnMetadata) archive.add(this.uturnMetadata, true, (Class<UturnMetadata>) UturnMetadata.class);
        this.leaveRoundaboutMetadada = (LeaveRoundaboutMetadata) archive.add(this.leaveRoundaboutMetadada, true, (Class<LeaveRoundaboutMetadata>) LeaveRoundaboutMetadata.class);
    }
}
