package androidx.camera.lifecycle;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class LifecycleCameraRepositories {
    public static final LifecycleCameraRepositories INSTANCE = new LifecycleCameraRepositories();
    private static final Map repositoryMap = new LinkedHashMap();

    private LifecycleCameraRepositories() {
    }

    public static final LifecycleCameraRepository getInstance$camera_lifecycle(int i) {
        LifecycleCameraRepository lifecycleCameraRepository;
        Map map = repositoryMap;
        synchronized (map) {
            try {
                Integer numValueOf = Integer.valueOf(i);
                Object lifecycleCameraRepository2 = map.get(numValueOf);
                if (lifecycleCameraRepository2 == null) {
                    lifecycleCameraRepository2 = new LifecycleCameraRepository(i);
                    map.put(numValueOf, lifecycleCameraRepository2);
                }
                lifecycleCameraRepository = (LifecycleCameraRepository) lifecycleCameraRepository2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lifecycleCameraRepository;
    }
}
