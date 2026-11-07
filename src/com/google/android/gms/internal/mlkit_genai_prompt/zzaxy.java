package com.google.android.gms.internal.mlkit_genai_prompt;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
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
abstract class zzaxy {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static String zza(zzaxw zzaxwVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzc(zzaxwVar, sb, 0);
        return sb.toString();
    }

    public static void zzb(StringBuilder sb, int i, String str, Object obj) {
        String strReplace;
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
        if (!(obj instanceof String)) {
            if (obj instanceof zzawb) {
                sb.append(": \"");
                sb.append(zzayo.zza(((zzawb) obj).zzj()));
                sb.append(Typography.quote);
                return;
            }
            if (obj instanceof zzawy) {
                sb.append(" {");
                zzc((zzawy) obj, sb, i + 2);
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
            return;
        }
        sb.append(": \"");
        String strReplace2 = (String) obj;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i4 = 0; i4 < strReplace2.length(); i4++) {
            char cCharAt2 = strReplace2.charAt(i4);
            if (cCharAt2 < ' ' || cCharAt2 > '~') {
                strReplace = zzayo.zza(strReplace2.getBytes(StandardCharsets.UTF_8));
                break;
            }
            if (cCharAt2 == '\"') {
                z3 = true;
            } else if (cCharAt2 == '\'') {
                z2 = true;
            } else if (cCharAt2 == '\\') {
                z = true;
            }
        }
        if (z) {
            strReplace2 = strReplace2.replace("\\", "\\\\");
        }
        strReplace = z2 ? strReplace2.replace("'", "\\'") : strReplace2;
        if (z3) {
            strReplace = strReplace.replace("\"", "\\\"");
        }
        sb.append(strReplace);
        sb.append(Typography.quote);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzc(zzaxw zzaxwVar, StringBuilder sb, int i) {
        int i2;
        boolean zBooleanValue;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzaxwVar.getClass().getDeclaredMethods();
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
                zzb(sb, i, strSubstring.substring(0, strSubstring.length() - 4), zzawy.zzP(method2, zzaxwVar, new Object[0]));
            } else if (strSubstring.endsWith(TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL) && !strSubstring.equals(TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL) && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb, i, strSubstring.substring(0, strSubstring.length() - 3), zzawy.zzP(method, zzaxwVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objZzP = zzawy.zzP(method4, zzaxwVar, new Object[0]);
                    if (method5 != null) {
                        zBooleanValue = ((Boolean) zzawy.zzP(method5, zzaxwVar, new Object[0])).booleanValue();
                    } else if (objZzP instanceof Boolean) {
                        zBooleanValue = ((Boolean) objZzP).booleanValue();
                    } else if (objZzP instanceof Integer) {
                        if (((Integer) objZzP).intValue() == 0) {
                        }
                    } else if (objZzP instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) objZzP).floatValue()) == 0) {
                        }
                    } else if (!(objZzP instanceof Double)) {
                        if (objZzP instanceof String) {
                            zEquals = objZzP.equals(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else if (objZzP instanceof zzawb) {
                            zEquals = objZzP.equals(zzawb.zza);
                        } else if (!(objZzP instanceof zzaxw) ? !(objZzP instanceof Enum) || ((Enum) objZzP).ordinal() != 0 : objZzP != ((zzaxw) objZzP).zzI()) {
                        }
                        if (zEquals) {
                        }
                    } else if (Double.doubleToRawLongBits(((Double) objZzP).doubleValue()) == 0) {
                    }
                    if (zBooleanValue) {
                        zzb(sb, i, strSubstring, objZzP);
                    }
                }
            }
            i2 = 3;
        }
        zzayr zzayrVar = ((zzawy) zzaxwVar).zzc;
        if (zzayrVar != null) {
            zzayrVar.zzf(sb, i);
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
