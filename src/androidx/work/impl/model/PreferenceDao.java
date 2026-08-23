package androidx.work.impl.model;

/* JADX INFO: loaded from: classes.dex */
public interface PreferenceDao {
    Long getLongValue(String str);

    void insertPreference(Preference preference);
}
