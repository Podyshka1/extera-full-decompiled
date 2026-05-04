package androidx.work.impl.model;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface WorkNameDao {
    List getNamesForWorkSpecId(String str);

    void insert(WorkName workName);
}
