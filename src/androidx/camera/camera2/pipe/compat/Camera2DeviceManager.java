package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.graph.GraphListener;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public interface Camera2DeviceManager {
    /* JADX INFO: renamed from: close-EfqyGwQ, reason: not valid java name */
    Deferred mo1830closeEfqyGwQ(String str);

    Deferred closeAll(boolean z);

    /* JADX INFO: renamed from: open-zDSwpeU, reason: not valid java name */
    VirtualCamera mo1831openzDSwpeU(String str, List list, GraphListener graphListener, boolean z, Function1 function1);
}
