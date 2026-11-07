package com.google.android.gms.internal.cast;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXFormulaSettingsParser;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzzk {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static String zza(zzzi zzziVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzc(zzziVar, sb, 0);
        return sb.toString();
    }

    public static void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        zzd(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            zzxk zzxkVar = zzxk.zza;
            sb.append(zzaab.zza(new zzxj(((String) obj).getBytes(zzym.zza))));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzxk) {
            sb.append(": \"");
            sb.append(zzaab.zza((zzxk) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzyd) {
            sb.append(" {");
            zzc((zzyd) obj, sb, i + 2);
            sb.append("\n");
            zzd(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i3 = i + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        zzb(sb, i3, PluginsConstants.Settings.KEY, entry.getKey());
        zzb(sb, i3, "value", entry.getValue());
        sb.append("\n");
        zzd(i, sb);
        sb.append("}");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzc(zzzi zzziVar, StringBuilder sb, int i) {
        int i2;
        boolean zBooleanValue;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzziVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i3 = 0;
        while (true) {
            i2 = 3;
            if (i3 >= length) {
                break;
            }
            Method method3 = declaredMethods[i3];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i3++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i2);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb, i, strSubstring.substring(0, strSubstring.length() - 4), zzyd.zzI(method2, zzziVar, new Object[0]));
            } else if (strSubstring.endsWith(TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL) && !strSubstring.equals(TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL) && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb, i, strSubstring.substring(0, strSubstring.length() - 3), zzyd.zzI(method, zzziVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objZzI = zzyd.zzI(method4, zzziVar, new Object[0]);
                    if (method5 != null) {
                        zBooleanValue = ((Boolean) zzyd.zzI(method5, zzziVar, new Object[0])).booleanValue();
                    } else if (objZzI instanceof Boolean) {
                        zBooleanValue = ((Boolean) objZzI).booleanValue();
                    } else if (objZzI instanceof Integer) {
                        if (((Integer) objZzI).intValue() == 0) {
                        }
                    } else if (objZzI instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) objZzI).floatValue()) == 0) {
                        }
                    } else if (!(objZzI instanceof Double)) {
                        if (objZzI instanceof String) {
                            zEquals = objZzI.equals(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else if (objZzI instanceof zzxk) {
                            zEquals = objZzI.equals(zzxk.zza);
                        } else if (!(objZzI instanceof zzzi) ? !(objZzI instanceof Enum) || ((Enum) objZzI).ordinal() != 0 : objZzI != ((zzzi) objZzI).zzx()) {
                        }
                        if (zEquals) {
                        }
                    } else if (Double.doubleToRawLongBits(((Double) objZzI).doubleValue()) == 0) {
                    }
                    if (zBooleanValue) {
                        zzb(sb, i, strSubstring, objZzI);
                    }
                }
            }
            i2 = 3;
        }
        zzaae zzaaeVar = ((zzyd) zzziVar).zzc;
        if (zzaaeVar != null) {
            zzaaeVar.zzg(sb, i);
        }
    }

    private static void zzd(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(zza, 0, i2);
            i -= i2;
        }
    }
}
