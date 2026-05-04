package okhttp3.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class _HeadersCommonKt {
    public static final String commonName(Headers headers, int i) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        String str = (String) ArraysKt.getOrNull(headers.getNamesAndValues$okhttp(), i * 2);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i + ']');
    }

    public static final String commonValue(Headers headers, int i) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        String str = (String) ArraysKt.getOrNull(headers.getNamesAndValues$okhttp(), (i * 2) + 1);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i + ']');
    }

    public static final List<String> commonValues(Headers headers, String name) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int size = headers.size();
        List<String> listUnmodifiableList = null;
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (StringsKt.equals(name, headers.name(i), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(headers.value(i));
            }
        }
        if (arrayList != null) {
            listUnmodifiableList = DesugarCollections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        }
        return listUnmodifiableList == null ? CollectionsKt.emptyList() : listUnmodifiableList;
    }

    public static final Iterator<Pair> commonIterator(Headers headers) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        int size = headers.size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = TuplesKt.m1081to(headers.name(i), headers.value(i));
        }
        return ArrayIteratorKt.iterator(pairArr);
    }

    public static final Headers.Builder commonNewBuilder(Headers headers) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        Headers.Builder builder = new Headers.Builder();
        CollectionsKt.addAll(builder.getNamesAndValues$okhttp(), headers.getNamesAndValues$okhttp());
        return builder;
    }

    public static final boolean commonEquals(Headers headers, Object obj) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        return (obj instanceof Headers) && Arrays.equals(headers.getNamesAndValues$okhttp(), ((Headers) obj).getNamesAndValues$okhttp());
    }

    public static final int commonHashCode(Headers headers) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        return Arrays.hashCode(headers.getNamesAndValues$okhttp());
    }

    public static final String commonToString(Headers headers) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        StringBuilder sb = new StringBuilder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String strName = headers.name(i);
            String strValue = headers.value(i);
            sb.append(strName);
            sb.append(": ");
            if (_UtilCommonKt.isSensitiveHeader(strName)) {
                strValue = "██";
            }
            sb.append(strValue);
            sb.append("\n");
        }
        return sb.toString();
    }

    public static final String commonHeadersGet(String[] namesAndValues, String name) {
        Intrinsics.checkNotNullParameter(namesAndValues, "namesAndValues");
        Intrinsics.checkNotNullParameter(name, "name");
        int length = namesAndValues.length - 2;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(length, 0, -2);
        if (progressionLastElement > length) {
            return null;
        }
        while (!StringsKt.equals(name, namesAndValues[length], true)) {
            if (length == progressionLastElement) {
                return null;
            }
            length -= 2;
        }
        return namesAndValues[length + 1];
    }

    public static final Headers.Builder commonAdd(Headers.Builder builder, String name, String value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        headersCheckName(name);
        headersCheckValue(value, name);
        commonAddLenient(builder, name, value);
        return builder;
    }

    public static final Headers.Builder commonAddAll(Headers.Builder builder, Headers headers) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(headers, "headers");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            commonAddLenient(builder, headers.name(i), headers.value(i));
        }
        return builder;
    }

    public static final Headers.Builder commonAddLenient(Headers.Builder builder, String name, String value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.getNamesAndValues$okhttp().add(name);
        builder.getNamesAndValues$okhttp().add(StringsKt.trim(value).toString());
        return builder;
    }

    public static final Headers.Builder commonRemoveAll(Headers.Builder builder, String name) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int i = 0;
        while (i < builder.getNamesAndValues$okhttp().size()) {
            if (StringsKt.equals(name, builder.getNamesAndValues$okhttp().get(i), true)) {
                builder.getNamesAndValues$okhttp().remove(i);
                builder.getNamesAndValues$okhttp().remove(i);
                i -= 2;
            }
            i += 2;
        }
        return builder;
    }

    public static final Headers.Builder commonSet(Headers.Builder builder, String name, String value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        headersCheckName(name);
        headersCheckValue(value, name);
        builder.removeAll(name);
        commonAddLenient(builder, name, value);
        return builder;
    }

    public static final String commonGet(Headers.Builder builder, String name) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int size = builder.getNamesAndValues$okhttp().size() - 2;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(size, 0, -2);
        if (progressionLastElement > size) {
            return null;
        }
        while (!StringsKt.equals(name, builder.getNamesAndValues$okhttp().get(size), true)) {
            if (size == progressionLastElement) {
                return null;
            }
            size -= 2;
        }
        return builder.getNamesAndValues$okhttp().get(size + 1);
    }

    public static final Headers commonBuild(Headers.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new Headers((String[]) builder.getNamesAndValues$okhttp().toArray(new String[0]));
    }

    public static final void headersCheckName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (name.length() <= 0) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = name.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = name.charAt(i);
            if ('!' > cCharAt || cCharAt >= 127) {
                throw new IllegalArgumentException(("Unexpected char 0x" + charCode(cCharAt) + " at " + i + " in header name: " + name).toString());
            }
        }
    }

    public static final void headersCheckValue(String value, String name) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(name, "name");
        int length = value.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = value.charAt(i);
            if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected char 0x");
                sb.append(charCode(cCharAt));
                sb.append(" at ");
                sb.append(i);
                sb.append(" in ");
                sb.append(name);
                sb.append(" value");
                sb.append(_UtilCommonKt.isSensitiveHeader(name) ? _UrlKt.FRAGMENT_ENCODE_SET : ": " + value);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    private static final String charCode(char c) {
        String string = Integer.toString(c, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        if (string.length() >= 2) {
            return string;
        }
        return '0' + string;
    }

    public static final Headers commonHeadersOf(String... inputNamesAndValues) {
        Intrinsics.checkNotNullParameter(inputNamesAndValues, "inputNamesAndValues");
        if (inputNamesAndValues.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr = (String[]) Arrays.copyOf(inputNamesAndValues, inputNamesAndValues.length);
        int length = strArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (strArr[i2] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr[i2] = StringsKt.trim(inputNamesAndValues[i2]).toString();
        }
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, strArr.length - 1, 2);
        if (progressionLastElement >= 0) {
            while (true) {
                String str = strArr[i];
                String str2 = strArr[i + 1];
                headersCheckName(str);
                headersCheckValue(str2, str);
                if (i == progressionLastElement) {
                    break;
                }
                i += 2;
            }
        }
        return new Headers(strArr);
    }

    public static final Headers commonToHeaders(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String string = StringsKt.trim(key).toString();
            String string2 = StringsKt.trim(value).toString();
            headersCheckName(string);
            headersCheckValue(string2, string);
            strArr[i] = string;
            strArr[i + 1] = string2;
            i += 2;
        }
        return new Headers(strArr);
    }
}
