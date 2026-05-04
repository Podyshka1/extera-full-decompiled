package com.exteragram.messenger.plugins.hooks;

import com.exteragram.messenger.utils.AppUtils;
import de.robv.android.xposed.XC_MethodHook;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.MVEL;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;

/* JADX INFO: loaded from: classes.dex */
public class HookFilter {
    private static final ConcurrentHashMap<String, Serializable> mvelExpressionCache = new ConcurrentHashMap<>();
    public final String filterType;
    public Integer argIndex = null;
    public ArrayList<HookFilter> orFilters = null;
    public String mvelExpression = null;
    public Class<?> instanceOf = null;
    public Object object = null;

    public HookFilter(String str) {
        this.filterType = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0250 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0267 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0290 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02b1 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02ce A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ee A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x031f A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0350 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0171 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0172 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:3:0x0001, B:4:0x0008, B:6:0x000d, B:66:0x0172, B:67:0x017c, B:69:0x0181, B:71:0x0190, B:73:0x0194, B:77:0x019e, B:82:0x01b1, B:84:0x01c0, B:86:0x01c4, B:90:0x01ce, B:92:0x01dd, B:94:0x01e4, B:96:0x01f3, B:98:0x01fb, B:100:0x020a, B:102:0x020e, B:106:0x021a, B:11:0x0021, B:14:0x0032, B:116:0x024c, B:118:0x0250, B:121:0x025c, B:122:0x0262, B:124:0x0267, B:126:0x0276, B:128:0x027a, B:132:0x0290, B:134:0x029f, B:136:0x02b1, B:138:0x02c0, B:142:0x02ce, B:144:0x02dd, B:146:0x02ee, B:148:0x02fd, B:150:0x030b, B:154:0x031f, B:156:0x032e, B:158:0x033c, B:162:0x0350, B:164:0x035f, B:17:0x0043, B:20:0x0054, B:23:0x0065, B:26:0x0076, B:29:0x0087, B:32:0x0098, B:34:0x00a7, B:36:0x00ab, B:38:0x00b2, B:42:0x00c2, B:45:0x00d3, B:47:0x00e2, B:51:0x0104, B:53:0x0119, B:50:0x0100, B:56:0x013e, B:59:0x014f, B:62:0x0160, B:111:0x022d, B:114:0x023d), top: B:170:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean execute(XC_MethodHook.MethodHookParam methodHookParam, boolean z) {
        String str;
        ArrayList<HookFilter> arrayList;
        Integer num;
        String str2;
        Class<?> cls;
        Class<?> cls2;
        try {
            str = this.filterType;
        } catch (Exception e) {
            AppUtils.log(e);
        }
        switch (str.hashCode()) {
            case -1842277382:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178774566794459L))) {
                    num = this.argIndex;
                    if (num != null && num.intValue() <= methodHookParam.args.length - 1) {
                        str2 = this.filterType;
                        switch (str2.hashCode()) {
                            case -1842277382:
                                if (str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179899848226011L)) && methodHookParam.args[this.argIndex.intValue()] == null) {
                                    return true;
                                }
                                break;
                            case -1842101247:
                                return str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179972862670043L)) && (methodHookParam.args[this.argIndex.intValue()] instanceof Boolean) && ((Boolean) methodHookParam.args[this.argIndex.intValue()]).booleanValue();
                            case -1284007664:
                                return str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179822538814683L)) && (methodHookParam.args[this.argIndex.intValue()] instanceof Boolean) && !((Boolean) methodHookParam.args[this.argIndex.intValue()]).booleanValue();
                            case -1248106702:
                                if (str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179573430711515L))) {
                                    return equals(methodHookParam.args[this.argIndex.intValue()], this.object);
                                }
                                break;
                            case 180205237:
                                return str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180045877114075L)) && methodHookParam.args[this.argIndex.intValue()] != null;
                            case 1282972614:
                                if (str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179637855220955L))) {
                                    return !equals(methodHookParam.args[this.argIndex.intValue()], this.object);
                                }
                                break;
                            case 1877750766:
                                return str2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179719459599579L)) && (cls = this.instanceOf) != null && Objects.equals(cls, methodHookParam.args[this.argIndex.intValue()].getClass());
                        }
                    }
                    return false;
                }
                return false;
            case -1842101247:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178847581238491L))) {
                    num = this.argIndex;
                    if (num != null) {
                        str2 = this.filterType;
                        switch (str2.hashCode()) {
                            case -1842277382:
                                break;
                            case -1842101247:
                                break;
                            case -1284007664:
                                break;
                            case -1248106702:
                                break;
                            case 180205237:
                                break;
                            case 1282972614:
                                break;
                            case 1877750766:
                                break;
                        }
                    }
                    return false;
                }
                return false;
            case -1369450155:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179418811888859L))) {
                    if (z) {
                        return false;
                    }
                    Object result = methodHookParam.getResult();
                    String str3 = this.filterType;
                    switch (str3.hashCode()) {
                        case -1369450155:
                            return str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180544093320411L)) && result != null;
                        case -170795378:
                            return str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180385179530459L)) && (cls2 = this.instanceOf) != null && Objects.equals(cls2, result.getClass());
                        case 488295718:
                            if (str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180179021100251L))) {
                                return !equals(result, this.object);
                            }
                            break;
                        case 516769938:
                            if (str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180123186525403L))) {
                                return equals(result, this.object);
                            }
                            break;
                        case 1461304240:
                            return str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180252035544283L)) && (result instanceof Boolean) && !((Boolean) result).booleanValue();
                        case 1987059034:
                            return str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180479668810971L)) && result == null;
                        case 1987235169:
                            return str3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180320755021019L)) && (result instanceof Boolean) && ((Boolean) result).booleanValue();
                    }
                }
                return false;
            case -1284007664:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178697257383131L))) {
                    num = this.argIndex;
                    if (num != null) {
                    }
                    return false;
                }
                return false;
            case -1248106702:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178448149279963L))) {
                    num = this.argIndex;
                    if (num != null) {
                    }
                    return false;
                }
                return false;
            case -861311717:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178405199607003L))) {
                    HashMap map = new HashMap();
                    map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179487531365595L), methodHookParam);
                    map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179513301169371L), z ? null : methodHookParam.getResult());
                    map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179543365940443L), this.object);
                    String str4 = this.mvelExpression;
                    if (str4 != null) {
                        return ((Boolean) Objects.requireNonNullElse((Boolean) MVEL.executeExpression((Serializable) ConcurrentMap$EL.computeIfAbsent(mvelExpressionCache, str4, new HookFilter$$ExternalSyntheticLambda0()), methodHookParam.thisObject, map, Boolean.class), Boolean.FALSE)).booleanValue();
                    }
                    return false;
                }
                return false;
            case -170795378:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179195473589467L))) {
                    if (z) {
                    }
                }
                return false;
            case 3555:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178392314705115L)) && (arrayList = this.orFilters) != null) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        HookFilter hookFilter = arrayList.get(i);
                        i++;
                        if (hookFilter.execute(methodHookParam, z)) {
                            return true;
                        }
                    }
                }
                return false;
            case 180205237:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178920595682523L))) {
                    num = this.argIndex;
                    if (num != null) {
                    }
                    return false;
                }
                return false;
            case 488295718:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179053739668699L))) {
                    if (z) {
                    }
                }
                return false;
            case 516769938:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178997905093851L))) {
                    if (z) {
                    }
                }
                return false;
            case 1282972614:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178512573789403L))) {
                    num = this.argIndex;
                    if (num != null) {
                    }
                    return false;
                }
                return false;
            case 1461304240:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179126754112731L))) {
                    if (z) {
                    }
                }
                return false;
            case 1877750766:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986178594178168027L))) {
                    num = this.argIndex;
                    if (num != null) {
                    }
                    return false;
                }
                return false;
            case 1987059034:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179289962869979L))) {
                    if (z) {
                    }
                }
                return false;
            case 1987235169:
                if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986179354387379419L))) {
                    if (z) {
                    }
                }
                return false;
            default:
                return false;
        }
    }

    private boolean equals(Object obj, Object obj2) {
        if (Objects.equals(obj, obj2)) {
            return true;
        }
        if ((obj instanceof Number) && (obj2 instanceof Number)) {
            if (!(obj instanceof Double) && !(obj instanceof Float) && !(obj2 instanceof Double) && !(obj2 instanceof Float)) {
                return ((Number) obj).longValue() == ((Number) obj2).longValue();
            }
            if (((Number) obj).doubleValue() == ((Number) obj2).doubleValue()) {
                return true;
            }
        }
        return false;
    }
}
