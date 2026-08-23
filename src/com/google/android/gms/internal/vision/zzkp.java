package com.google.android.gms.internal.vision;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXFormulaSettingsParser;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzkp {
    public static String zza(zzkk zzkkVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zza(zzkkVar, sb, 0);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zza(zzkk zzkkVar, StringBuilder sb, int i) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzkkVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            boolean zBooleanValue = true;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strValueOf = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strSubstring2 = strSubstring.substring(1, strSubstring.length() - 4);
                String strConcat = strSubstring2.length() != 0 ? strValueOf.concat(strSubstring2) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zza(sb, i, zza(strConcat), zzjb.zza(method2, zzkkVar, new Object[0]));
                }
            }
            if (strSubstring.endsWith(TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL) && !strSubstring.equals(TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL)) {
                String strValueOf2 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strSubstring3 = strSubstring.substring(1, strSubstring.length() - 3);
                String strConcat2 = strSubstring3.length() != 0 ? strValueOf2.concat(strSubstring3) : new String(strValueOf2);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zza(sb, i, zza(strConcat2), zzjb.zza(method3, zzkkVar, new Object[0]));
                }
            }
            if (((Method) map2.get(strSubstring.length() != 0 ? "set".concat(strSubstring) : new String("set"))) != null) {
                if (strSubstring.endsWith("Bytes")) {
                    String strSubstring4 = strSubstring.substring(0, strSubstring.length() - 5);
                    if (!map.containsKey(strSubstring4.length() != 0 ? "get".concat(strSubstring4) : new String("get"))) {
                    }
                }
                String strValueOf3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strSubstring5 = strSubstring.substring(1);
                String strConcat3 = strSubstring5.length() != 0 ? strValueOf3.concat(strSubstring5) : new String(strValueOf3);
                Method method4 = (Method) map.get(strSubstring.length() != 0 ? "get".concat(strSubstring) : new String("get"));
                Method method5 = (Method) map.get(strSubstring.length() != 0 ? "has".concat(strSubstring) : new String("has"));
                if (method4 != null) {
                    Object objZza = zzjb.zza(method4, zzkkVar, new Object[0]);
                    if (method5 == null) {
                        if (objZza instanceof Boolean) {
                            zEquals = !((Boolean) objZza).booleanValue();
                        } else if (objZza instanceof Integer) {
                            if (((Integer) objZza).intValue() == 0) {
                            }
                        } else if (objZza instanceof Float) {
                            if (((Float) objZza).floatValue() == 0.0f) {
                            }
                        } else if (objZza instanceof Double) {
                            if (((Double) objZza).doubleValue() == 0.0d) {
                            }
                        } else if (objZza instanceof String) {
                            zEquals = objZza.equals(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else if (objZza instanceof zzht) {
                            zEquals = objZza.equals(zzht.zza);
                        } else if (!(objZza instanceof zzkk) ? !(objZza instanceof Enum) || ((Enum) objZza).ordinal() != 0 : objZza != ((zzkk) objZza).zzr()) {
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) zzjb.zza(method5, zzkkVar, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        zza(sb, i, zza(strConcat3), objZza);
                    }
                }
            }
        }
        zzlx zzlxVar = ((zzjb) zzkkVar).zzb;
        if (zzlxVar != null) {
            zzlxVar.zza(sb, i);
        }
    }

    public static final void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zza(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zza(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzlq.zza(zzht.zza((String) obj)));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzht) {
            sb.append(": \"");
            sb.append(zzlq.zza((zzht) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzjb) {
            sb.append(" {");
            zza((zzjb) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i4 = i + 2;
            zza(sb, i4, "key", entry.getKey());
            zza(sb, i4, "value", entry.getValue());
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        sb.append(": ");
        sb.append(obj.toString());
    }

    private static final String zza(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }
}
