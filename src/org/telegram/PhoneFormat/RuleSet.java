package org.telegram.PhoneFormat;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class RuleSet {
    public static Pattern pattern = Pattern.compile("[0-9]+");
    public boolean hasRuleWithIntlPrefix;
    public boolean hasRuleWithTrunkPrefix;
    public int matchLen;
    public ArrayList<PhoneRule> rules = new ArrayList<>();

    public String format(String str, String str2, String str3, boolean z) {
        int length = str.length();
        int i = this.matchLen;
        if (length >= i) {
            int i2 = 0;
            Matcher matcher = pattern.matcher(str.substring(0, i));
            int i3 = matcher.find() ? Integer.parseInt(matcher.group(0)) : 0;
            ArrayList<PhoneRule> arrayList = this.rules;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                PhoneRule phoneRule = arrayList.get(i4);
                i4++;
                PhoneRule phoneRule2 = phoneRule;
                if (i3 >= phoneRule2.minVal && i3 <= phoneRule2.maxVal && str.length() <= phoneRule2.maxLen) {
                    if (z) {
                        int i5 = phoneRule2.flag12;
                        if (((i5 & 3) == 0 && str3 == null && str2 == null) || ((str3 != null && (i5 & 1) != 0) || (str2 != null && (i5 & 2) != 0))) {
                            return phoneRule2.format(str, str2, str3);
                        }
                    } else if ((str3 == null && str2 == null) || ((str3 != null && (phoneRule2.flag12 & 1) != 0) || (str2 != null && (phoneRule2.flag12 & 2) != 0))) {
                        return phoneRule2.format(str, str2, str3);
                    }
                }
            }
            if (!z) {
                if (str2 != null) {
                    ArrayList<PhoneRule> arrayList2 = this.rules;
                    int size2 = arrayList2.size();
                    while (i2 < size2) {
                        PhoneRule phoneRule3 = arrayList2.get(i2);
                        i2++;
                        PhoneRule phoneRule4 = phoneRule3;
                        if (i3 >= phoneRule4.minVal && i3 <= phoneRule4.maxVal && str.length() <= phoneRule4.maxLen && (str3 == null || (phoneRule4.flag12 & 1) != 0)) {
                            return phoneRule4.format(str, str2, str3);
                        }
                    }
                } else if (str3 != null) {
                    ArrayList<PhoneRule> arrayList3 = this.rules;
                    int size3 = arrayList3.size();
                    while (i2 < size3) {
                        PhoneRule phoneRule5 = arrayList3.get(i2);
                        i2++;
                        PhoneRule phoneRule6 = phoneRule5;
                        if (i3 >= phoneRule6.minVal && i3 <= phoneRule6.maxVal && str.length() <= phoneRule6.maxLen && (str2 == null || (phoneRule6.flag12 & 2) != 0)) {
                            return phoneRule6.format(str, str2, str3);
                        }
                    }
                }
            }
        }
        return null;
    }
}
