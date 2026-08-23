package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.graph.GraphLoop;

/* JADX INFO: loaded from: classes3.dex */
public interface Result3AStateListener extends GraphLoop.Listener {
    /* JADX INFO: renamed from: onRequestSequenceCreated-DThHKJ0, reason: not valid java name */
    void mo1914onRequestSequenceCreatedDThHKJ0(long j);

    /* JADX INFO: renamed from: update-voP-kFw, reason: not valid java name */
    boolean mo1915updatevoPkFw(long j, FrameMetadata frameMetadata);
}
