package androidx.core.os;

import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
interface LocaleListInterface {
    Locale get(int i);

    Object getLocaleList();

    boolean isEmpty();

    int size();

    String toLanguageTags();
}
