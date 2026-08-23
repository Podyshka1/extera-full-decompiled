package androidx.work.impl.model;

/* JADX INFO: loaded from: classes.dex */
public interface WorkProgressDao {
    void delete(String str);

    void deleteAll();

    void insert(WorkProgress workProgress);
}
