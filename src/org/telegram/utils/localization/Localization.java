package org.telegram.utils.localization;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.function.ToIntFunction;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.telegram.tgnet.SerializedData;

/* JADX INFO: loaded from: classes8.dex */
public class Localization {
    public static final Localization EMPTY = new Localization();
    private static SparseIntArray rawResBindings;
    private final SparseArray<String> localizations;

    private Localization() {
        this.localizations = new SparseArray<>();
    }

    private Localization(Builder builder) {
        this.localizations = builder.localizations != null ? builder.localizations : new SparseArray<>();
    }

    public String getByResId(Context context, int i) {
        if (context == null || i == 0) {
            return null;
        }
        if (rawResBindings == null) {
            rawResBindings = loadStringResBindings(context);
        }
        int i2 = rawResBindings.get(i);
        if (i2 == 0) {
            return null;
        }
        return get(i2);
    }

    public String getByResName(String str) {
        if (str != null) {
            return get(str.hashCode());
        }
        return null;
    }

    public String getByResNameOrResId(Context context, String str, int i) {
        String byResName = str != null ? getByResName(str) : null;
        return (byResName != null || i == 0) ? byResName : getByResId(context, i);
    }

    public String get(int i) {
        return this.localizations.get(i);
    }

    public static class Builder {
        private SparseArray<String> localizations;

        public Builder addResLocalization(Context context, String str) {
            try {
                this.localizations = Localization.load(context, str, this.localizations);
            } catch (Exception unused) {
            }
            return this;
        }

        public Builder addLocalization(HashMap<String, String> map) {
            if (this.localizations == null) {
                this.localizations = new SparseArray<>(map.size());
                ArrayList arrayList = new ArrayList(map.entrySet());
                Collections.sort(arrayList, Comparator.comparingInt(new ToIntFunction() { // from class: org.telegram.utils.localization.Localization$Builder$$ExternalSyntheticLambda0
                    @Override // java.util.function.ToIntFunction
                    public final int applyAsInt(Object obj) {
                        return ((String) ((Map.Entry) obj).getKey()).hashCode();
                    }
                }));
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    Map.Entry entry = (Map.Entry) obj;
                    this.localizations.append(((String) entry.getKey()).hashCode(), (String) entry.getValue());
                }
            } else {
                for (Map.Entry<String, String> entry2 : map.entrySet()) {
                    this.localizations.put(entry2.getKey().hashCode(), entry2.getValue());
                }
            }
            return this;
        }

        public Builder addLocalization(Localization localization) {
            if (this.localizations == null) {
                this.localizations = localization.localizations.clone();
                return this;
            }
            int size = localization.localizations.size();
            for (int i = 0; i < size; i++) {
                this.localizations.put(localization.localizations.keyAt(i), (String) localization.localizations.valueAt(i));
            }
            return this;
        }

        public Localization build() {
            return new Localization(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SparseArray<String> load(Context context, String str, SparseArray<String> sparseArray) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getAssets().open(str));
        try {
            SerializedData serializedData = new SerializedData(bufferedInputStream);
            int int32 = serializedData.readInt32(true);
            int i = 0;
            if (sparseArray == null) {
                sparseArray = new SparseArray<>(int32);
                while (i < int32) {
                    sparseArray.append(serializedData.readInt32(true), serializedData.readString(true));
                    i++;
                }
            } else {
                while (i < int32) {
                    sparseArray.put(serializedData.readInt32(true), serializedData.readString(true));
                    i++;
                }
            }
            bufferedInputStream.close();
            return sparseArray;
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static SparseIntArray loadStringResBindings(Context context) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getResources().getAssets().open("string_resource_ids.bin"));
            try {
                SerializedData serializedData = new SerializedData(bufferedInputStream);
                int int32 = serializedData.readInt32(true);
                SparseIntArray sparseIntArray = new SparseIntArray(int32);
                for (int i = 0; i < int32; i++) {
                    sparseIntArray.append(serializedData.readInt32(true), serializedData.readInt32(true));
                }
                bufferedInputStream.close();
                return sparseIntArray;
            } finally {
            }
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
            return null;
        }
    }
}
