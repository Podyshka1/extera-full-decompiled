package io.noties.markwon.html;

/* JADX INFO: loaded from: classes5.dex */
public class HtmlEmptyTagReplacement {
    public static HtmlEmptyTagReplacement create() {
        return new HtmlEmptyTagReplacement();
    }

    public String replace(HtmlTag htmlTag) {
        String strName = htmlTag.name();
        if ("br".equals(strName)) {
            return "\n";
        }
        if ("img".equals(strName)) {
            String str = htmlTag.attributes().get("alt");
            return (str == null || str.length() == 0) ? "￼" : str;
        }
        if ("iframe".equals(strName)) {
            return " ";
        }
        return null;
    }
}
