package androidx.camera.core;

import androidx.camera.core.impl.Identifier;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraFilter {
    public static final Identifier DEFAULT_ID = Identifier.create(new Object());

    List filter(List list);

    Identifier getIdentifier();

    /* JADX INFO: renamed from: androidx.camera.core.CameraFilter$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
