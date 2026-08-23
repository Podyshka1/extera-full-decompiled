package androidx.camera.camera2.pipe;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface RequestMetadata extends Metadata, UnsafeWrapper {
    boolean getRepeating();

    Request getRequest();

    /* JADX INFO: renamed from: getRequestNumber-my6kx4g */
    long mo1442getRequestNumbermy6kx4g();

    Map getStreams();
}
