package androidx.work.impl.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface SystemIdInfoDao {
    SystemIdInfo getSystemIdInfo(WorkGenerationalId workGenerationalId);

    SystemIdInfo getSystemIdInfo(String str, int i);

    List getWorkSpecIds();

    void insertSystemIdInfo(SystemIdInfo systemIdInfo);

    void removeSystemIdInfo(String str);

    /* JADX INFO: renamed from: androidx.work.impl.model.SystemIdInfoDao$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static SystemIdInfo $default$getSystemIdInfo(SystemIdInfoDao systemIdInfoDao, WorkGenerationalId id) {
            Intrinsics.checkNotNullParameter(id, "id");
            return systemIdInfoDao.getSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
        }
    }
}
