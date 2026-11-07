package androidx.media3.exoplayer.dash.manifest;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class UrlTemplate {
    private final List<String> identifierFormatTags;
    private final List<Integer> identifiers;
    private final List<String> urlPieces;

    public static UrlTemplate compile(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        parseTemplate(str, arrayList, arrayList2, arrayList3);
        return new UrlTemplate(arrayList, arrayList2, arrayList3);
    }

    private UrlTemplate(List<String> list, List<Integer> list2, List<String> list3) {
        this.urlPieces = list;
        this.identifiers = list2;
        this.identifierFormatTags = list3;
    }

    public String buildUri(String str, long j, int i, long j2) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int size = this.identifiers.size();
            List<String> list = this.urlPieces;
            if (i2 < size) {
                sb.append(list.get(i2));
                if (this.identifiers.get(i2).intValue() == 1) {
                    sb.append(str);
                } else if (this.identifiers.get(i2).intValue() == 2) {
                    sb.append(String.format(Locale.US, this.identifierFormatTags.get(i2), Long.valueOf(j)));
                } else if (this.identifiers.get(i2).intValue() == 3) {
                    sb.append(String.format(Locale.US, this.identifierFormatTags.get(i2), Integer.valueOf(i)));
                } else if (this.identifiers.get(i2).intValue() == 4) {
                    sb.append(String.format(Locale.US, this.identifierFormatTags.get(i2), Long.valueOf(j2)));
                }
                i2++;
            } else {
                sb.append(list.get(this.identifiers.size()));
                return sb.toString();
            }
        }
    }

    private static void parseTemplate(String str, List<String> list, List<Integer> list2, List<String> list3) {
        String strSubstring;
        list.add(_UrlKt.FRAGMENT_ENCODE_SET);
        int length = 0;
        while (length < str.length()) {
            int iIndexOf = str.indexOf("$", length);
            if (iIndexOf == -1) {
                list.set(list2.size(), list.get(list2.size()) + str.substring(length));
                length = str.length();
            } else if (iIndexOf != length) {
                list.set(list2.size(), list.get(list2.size()) + str.substring(length, iIndexOf));
                length = iIndexOf;
            } else if (str.startsWith("$$", length)) {
                list.set(list2.size(), list.get(list2.size()) + "$");
                length += 2;
            } else {
                list3.add(_UrlKt.FRAGMENT_ENCODE_SET);
                int i = length + 1;
                int iIndexOf2 = str.indexOf("$", i);
                String strSubstring2 = str.substring(i, iIndexOf2);
                if (strSubstring2.equals("RepresentationID")) {
                    list2.add(1);
                } else {
                    int iIndexOf3 = strSubstring2.indexOf("%0");
                    if (iIndexOf3 == -1) {
                        strSubstring = "%01d";
                    } else {
                        strSubstring = strSubstring2.substring(iIndexOf3);
                        if (!strSubstring.endsWith("d") && !strSubstring.endsWith("x") && !strSubstring.endsWith("X")) {
                            strSubstring = strSubstring.concat("d");
                        }
                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                    }
                    switch (strSubstring2) {
                        case "Number":
                            list2.add(2);
                            break;
                        case "Time":
                            list2.add(4);
                            break;
                        case "Bandwidth":
                            list2.add(3);
                            break;
                        default:
                            f$$ExternalSyntheticBUOutline1.m212m("Invalid template: ".concat(str));
                            return;
                    }
                    list3.set(list2.size() - 1, strSubstring);
                }
                list.add(_UrlKt.FRAGMENT_ENCODE_SET);
                length = iIndexOf2 + 1;
            }
        }
    }
}
