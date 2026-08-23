package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferenceDataStoreFile {
    public static final File preferencesDataStoreFile(Context context, String name) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        return DataStoreFile.dataStoreFile(context, name + ".preferences_pb");
    }
}
