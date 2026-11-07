package org.telegram.PhoneFormat;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class PhoneFormat {
    private static volatile PhoneFormat Instance;
    public ByteBuffer buffer;
    public HashMap<String, ArrayList<String>> callingCodeCountries;
    public HashMap<String, CallingCodeInfo> callingCodeData;
    public HashMap<String, Integer> callingCodeOffsets;
    public HashMap<String, String> countryCallingCode;
    public byte[] data;
    public String defaultCallingCode;
    public String defaultCountry;
    private boolean initialzed = false;

    public static PhoneFormat getInstance() {
        PhoneFormat phoneFormat;
        PhoneFormat phoneFormat2 = Instance;
        if (phoneFormat2 != null) {
            return phoneFormat2;
        }
        synchronized (PhoneFormat.class) {
            try {
                phoneFormat = Instance;
                if (phoneFormat == null) {
                    phoneFormat = new PhoneFormat();
                    Instance = phoneFormat;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneFormat;
    }

    public static String strip(String str) {
        StringBuilder sb = new StringBuilder(str);
        for (int length = sb.length() - 1; length >= 0; length--) {
            if (!"0123456789+*#".contains(sb.substring(length, length + 1))) {
                sb.deleteCharAt(length);
            }
        }
        return sb.toString();
    }

    public static String stripExceptNumbers(String str, boolean z) {
        String str2;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        if (!z) {
            str2 = "0123456789";
        } else {
            str2 = "0123456789+";
        }
        for (int length = sb.length() - 1; length >= 0; length--) {
            if (!str2.contains(sb.substring(length, length + 1))) {
                sb.deleteCharAt(length);
            }
        }
        return sb.toString();
    }

    public static String stripExceptNumbers(String str) {
        return stripExceptNumbers(str, false);
    }

    public PhoneFormat() throws Throwable {
        init(null);
    }

    public void init(String str) throws Throwable {
        InputStream inputStreamOpen;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open("PhoneFormats.dat");
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStreamOpen.read(bArr, 0, 1024);
                    if (i == -1) {
                        break;
                    } else {
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                this.data = byteArray;
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArray);
                this.buffer = byteBufferWrap;
                byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                }
                try {
                    inputStreamOpen.close();
                } catch (Exception e3) {
                    FileLog.m1040e(e3);
                }
                if (str != null && str.length() != 0) {
                    this.defaultCountry = str;
                } else {
                    this.defaultCountry = Locale.getDefault().getCountry().toLowerCase();
                }
                this.callingCodeOffsets = new HashMap<>(255);
                this.callingCodeCountries = new HashMap<>(255);
                this.callingCodeData = new HashMap<>(10);
                this.countryCallingCode = new HashMap<>(255);
                parseDataHeader();
                this.initialzed = true;
            } catch (Exception e4) {
                e = e4;
                byteArrayOutputStream2 = byteArrayOutputStream;
                e.printStackTrace();
                if (byteArrayOutputStream2 != null) {
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception e5) {
                        FileLog.m1040e(e5);
                    }
                }
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Exception e6) {
                        FileLog.m1040e(e6);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream2 = byteArrayOutputStream;
                if (byteArrayOutputStream2 != null) {
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception e7) {
                        FileLog.m1040e(e7);
                    }
                }
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                        throw th;
                    } catch (Exception e8) {
                        FileLog.m1040e(e8);
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Exception e9) {
            e = e9;
            inputStreamOpen = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpen = null;
        }
    }

    public CallingCodeInfo findCallingCodeInfo(String str) {
        CallingCodeInfo callingCodeInfo = null;
        int i = 0;
        while (i < 3 && i < str.length()) {
            i++;
            callingCodeInfo = callingCodeInfo(str.substring(0, i));
            if (callingCodeInfo != null) {
                break;
            }
        }
        return callingCodeInfo;
    }

    public String format(String str) {
        if (this.initialzed) {
            try {
                String strStrip = strip(str);
                if (strStrip.startsWith("+")) {
                    String strSubstring = strStrip.substring(1);
                    CallingCodeInfo callingCodeInfoFindCallingCodeInfo = findCallingCodeInfo(strSubstring);
                    if (callingCodeInfoFindCallingCodeInfo != null) {
                        return "+" + callingCodeInfoFindCallingCodeInfo.format(strSubstring);
                    }
                } else {
                    CallingCodeInfo callingCodeInfo = callingCodeInfo(this.defaultCallingCode);
                    if (callingCodeInfo != null) {
                        String strMatchingAccessCode = callingCodeInfo.matchingAccessCode(strStrip);
                        if (strMatchingAccessCode != null) {
                            String strSubstring2 = strStrip.substring(strMatchingAccessCode.length());
                            CallingCodeInfo callingCodeInfoFindCallingCodeInfo2 = findCallingCodeInfo(strSubstring2);
                            if (callingCodeInfoFindCallingCodeInfo2 != null) {
                                strSubstring2 = callingCodeInfoFindCallingCodeInfo2.format(strSubstring2);
                            }
                            return strSubstring2.length() == 0 ? strMatchingAccessCode : String.format("%s %s", strMatchingAccessCode, strSubstring2);
                        }
                        return callingCodeInfo.format(strStrip);
                    }
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
                return str;
            }
        }
        return str;
    }

    public int value32(int i) {
        if (i + 4 > this.data.length) {
            return 0;
        }
        this.buffer.position(i);
        return this.buffer.getInt();
    }

    public short value16(int i) {
        if (i + 2 > this.data.length) {
            return (short) 0;
        }
        this.buffer.position(i);
        return this.buffer.getShort();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0015, code lost:
    
        return new java.lang.String(r2, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
    
        r1 = r1 - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
    
        if (r5 != r1) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x000f, code lost:
    
        return okhttp3.internal.url._UrlKt.FRAGMENT_ENCODE_SET;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String valueString(int i) {
        int i2 = i;
        while (true) {
            try {
                byte[] bArr = this.data;
                if (i2 >= bArr.length) {
                    return _UrlKt.FRAGMENT_ENCODE_SET;
                }
                if (bArr[i2] == 0) {
                    break;
                }
                i2++;
            } catch (Exception e) {
                e.printStackTrace();
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
    }

    public CallingCodeInfo callingCodeInfo(String str) {
        Integer num;
        boolean z;
        boolean z2;
        PhoneFormat phoneFormat = this;
        CallingCodeInfo callingCodeInfo = phoneFormat.callingCodeData.get(str);
        if (callingCodeInfo != null || (num = phoneFormat.callingCodeOffsets.get(str)) == null) {
            return callingCodeInfo;
        }
        byte[] bArr = phoneFormat.data;
        int iIntValue = num.intValue();
        CallingCodeInfo callingCodeInfo2 = new CallingCodeInfo();
        callingCodeInfo2.callingCode = str;
        callingCodeInfo2.countries = phoneFormat.callingCodeCountries.get(str);
        phoneFormat.callingCodeData.put(str, callingCodeInfo2);
        short sValue16 = phoneFormat.value16(iIntValue);
        short sValue162 = phoneFormat.value16(iIntValue + 4);
        short sValue163 = phoneFormat.value16(iIntValue + 8);
        int length = iIntValue + 12;
        ArrayList<String> arrayList = new ArrayList<>(5);
        while (true) {
            String strValueString = phoneFormat.valueString(length);
            z = true;
            if (strValueString.length() == 0) {
                break;
            }
            arrayList.add(strValueString);
            length += strValueString.length() + 1;
        }
        callingCodeInfo2.trunkPrefixes = arrayList;
        int length2 = length + 1;
        ArrayList<String> arrayList2 = new ArrayList<>(5);
        while (true) {
            String strValueString2 = phoneFormat.valueString(length2);
            if (strValueString2.length() == 0) {
                break;
            }
            arrayList2.add(strValueString2);
            length2 += strValueString2.length() + 1;
        }
        callingCodeInfo2.intlPrefixes = arrayList2;
        ArrayList<RuleSet> arrayList3 = new ArrayList<>(sValue163);
        int i = iIntValue + sValue16;
        int i2 = i;
        int i3 = 0;
        while (i3 < sValue163) {
            RuleSet ruleSet = new RuleSet();
            ruleSet.matchLen = phoneFormat.value16(i2);
            short sValue164 = phoneFormat.value16(i2 + 2);
            i2 += 4;
            ArrayList<PhoneRule> arrayList4 = new ArrayList<>(sValue164);
            int i4 = 0;
            while (i4 < sValue164) {
                PhoneRule phoneRule = new PhoneRule();
                phoneRule.minVal = phoneFormat.value32(i2);
                phoneRule.maxVal = phoneFormat.value32(i2 + 4);
                phoneRule.byte8 = bArr[i2 + 8];
                phoneRule.maxLen = bArr[i2 + 9];
                phoneRule.otherFlag = bArr[i2 + 10];
                phoneRule.prefixLen = bArr[i2 + 11];
                phoneRule.flag12 = bArr[i2 + 12];
                phoneRule.flag13 = bArr[i2 + 13];
                short sValue165 = phoneFormat.value16(i2 + 14);
                i2 += 16;
                String strValueString3 = phoneFormat.valueString(i + sValue162 + sValue165);
                phoneRule.format = strValueString3;
                int iIndexOf = strValueString3.indexOf("[[");
                if (iIndexOf != -1) {
                    phoneRule.format = String.format("%s%s", phoneRule.format.substring(0, iIndexOf), phoneRule.format.substring(phoneRule.format.indexOf("]]") + 2));
                }
                arrayList4.add(phoneRule);
                if (phoneRule.hasIntlPrefix) {
                    z2 = true;
                    ruleSet.hasRuleWithIntlPrefix = true;
                } else {
                    z2 = true;
                }
                if (phoneRule.hasTrunkPrefix) {
                    ruleSet.hasRuleWithTrunkPrefix = z2;
                }
                i4++;
                z = z2;
                phoneFormat = this;
            }
            ruleSet.rules = arrayList4;
            arrayList3.add(ruleSet);
            i3++;
            phoneFormat = this;
        }
        callingCodeInfo2.ruleSets = arrayList3;
        return callingCodeInfo2;
    }

    public void parseDataHeader() {
        int iValue32 = value32(0);
        int i = 4;
        int i2 = (iValue32 * 12) + 4;
        for (int i3 = 0; i3 < iValue32; i3++) {
            String strValueString = valueString(i);
            String strValueString2 = valueString(i + 4);
            int iValue322 = value32(i + 8) + i2;
            i += 12;
            if (strValueString2.equals(this.defaultCountry)) {
                this.defaultCallingCode = strValueString;
            }
            this.countryCallingCode.put(strValueString2, strValueString);
            this.callingCodeOffsets.put(strValueString, Integer.valueOf(iValue322));
            ArrayList<String> arrayList = this.callingCodeCountries.get(strValueString);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.callingCodeCountries.put(strValueString, arrayList);
            }
            arrayList.add(strValueString2);
        }
        String str = this.defaultCallingCode;
        if (str != null) {
            callingCodeInfo(str);
        }
    }
}
