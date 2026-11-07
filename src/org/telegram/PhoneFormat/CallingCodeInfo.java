package org.telegram.PhoneFormat;

import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class CallingCodeInfo {
    public ArrayList<String> countries = new ArrayList<>();
    public String callingCode = _UrlKt.FRAGMENT_ENCODE_SET;
    public ArrayList<String> trunkPrefixes = new ArrayList<>();
    public ArrayList<String> intlPrefixes = new ArrayList<>();
    public ArrayList<RuleSet> ruleSets = new ArrayList<>();

    public String matchingAccessCode(String str) {
        ArrayList<String> arrayList = this.intlPrefixes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str2 = arrayList.get(i);
            i++;
            String str3 = str2;
            if (str.startsWith(str3)) {
                return str3;
            }
        }
        return null;
    }

    public String matchingTrunkCode(String str) {
        ArrayList<String> arrayList = this.trunkPrefixes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str2 = arrayList.get(i);
            i++;
            String str3 = str2;
            if (str.startsWith(str3)) {
                return str3;
            }
        }
        return null;
    }

    public String format(String str) {
        String strSubstring;
        String str2;
        String str3 = null;
        if (str.startsWith(this.callingCode)) {
            str2 = this.callingCode;
            strSubstring = str.substring(str2.length());
        } else {
            String strMatchingTrunkCode = matchingTrunkCode(str);
            if (strMatchingTrunkCode != null) {
                strSubstring = str.substring(strMatchingTrunkCode.length());
                str3 = strMatchingTrunkCode;
                str2 = null;
            } else {
                strSubstring = str;
                str2 = null;
            }
        }
        ArrayList<RuleSet> arrayList = this.ruleSets;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            RuleSet ruleSet = arrayList.get(i);
            i++;
            String str4 = ruleSet.format(strSubstring, str2, str3, true);
            if (str4 != null) {
                return str4;
            }
        }
        ArrayList<RuleSet> arrayList2 = this.ruleSets;
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            RuleSet ruleSet2 = arrayList2.get(i2);
            i2++;
            String str5 = ruleSet2.format(strSubstring, str2, str3, false);
            if (str5 != null) {
                return str5;
            }
        }
        return (str2 == null || strSubstring.length() == 0) ? str : String.format("%s %s", str2, strSubstring);
    }
}
