package com.exteragram.messenger.plugins.hooks;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.AppUtils;
import de.robv.android.xposed.XC_MethodHook;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 32\u00020\u0001:\u000223B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020(J\u0012\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020\u0003H\u0002J\u001c\u0010/\u001a\u00020(2\b\u00100\u001a\u0004\u0018\u00010\u00012\b\u00101\u001a\u0004\u0018\u00010\u0001H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R.\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\u0005R \u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u00064"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/HookFilter;", _UrlKt.FRAGMENT_ENCODE_SET, "filterType", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;)V", "getFilterType", "()Ljava/lang/String;", "typeId", _UrlKt.FRAGMENT_ENCODE_SET, "compiledCondition", "Lcom/exteragram/messenger/plugins/hooks/HookFilter$CompiledCondition;", "argIndex", "getArgIndex", "()Ljava/lang/Integer;", "setArgIndex", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "orFilters", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getOrFilters", "()Ljava/util/ArrayList;", "setOrFilters", "(Ljava/util/ArrayList;)V", "mvelExpression", "getMvelExpression", "setMvelExpression", "instanceOf", "Ljava/lang/Class;", "getInstanceOf", "()Ljava/lang/Class;", "setInstanceOf", "(Ljava/lang/Class;)V", "object", "getObject", "()Ljava/lang/Object;", "setObject", "(Ljava/lang/Object;)V", "execute", _UrlKt.FRAGMENT_ENCODE_SET, "param", "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;", "isBefore", "getCompiledExpression", "Ljava/io/Serializable;", "expression", "valuesEqual", "a", "b", "CompiledCondition", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class HookFilter {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int TYPE_ARGUMENT_EQUAL = 3;
    private static final int TYPE_ARGUMENT_IS_FALSE = 6;
    private static final int TYPE_ARGUMENT_IS_INSTANCE_OF = 5;
    private static final int TYPE_ARGUMENT_IS_NULL = 7;
    private static final int TYPE_ARGUMENT_IS_TRUE = 8;
    private static final int TYPE_ARGUMENT_NOT_EQUAL = 4;
    private static final int TYPE_ARGUMENT_NOT_NULL = 9;
    private static final int TYPE_CONDITION = 2;
    private static final int TYPE_OR = 1;
    private static final int TYPE_RESULT_EQUAL = 10;
    private static final int TYPE_RESULT_IS_FALSE = 12;
    private static final int TYPE_RESULT_IS_INSTANCE_OF = 13;
    private static final int TYPE_RESULT_IS_NULL = 14;
    private static final int TYPE_RESULT_IS_TRUE = 15;
    private static final int TYPE_RESULT_NOT_EQUAL = 11;
    private static final int TYPE_RESULT_NOT_NULL = 16;
    private static final int TYPE_UNKNOWN = 0;
    private Integer argIndex;
    private volatile CompiledCondition compiledCondition;
    private final String filterType;
    private Class<?> instanceOf;
    private String mvelExpression;
    private Object object;
    private ArrayList<HookFilter> orFilters;
    private final int typeId;

    public HookFilter(String str) {
        this.filterType = str;
        this.typeId = INSTANCE.typeIdFor(str);
    }

    public final String getFilterType() {
        return this.filterType;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/HookFilter$CompiledCondition;", _UrlKt.FRAGMENT_ENCODE_SET, "source", _UrlKt.FRAGMENT_ENCODE_SET, "expression", "Ljava/io/Serializable;", "<init>", "(Ljava/lang/String;Ljava/io/Serializable;)V", "getSource", "()Ljava/lang/String;", "getExpression", "()Ljava/io/Serializable;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class CompiledCondition {
        private final Serializable expression;
        private final String source;

        public CompiledCondition(String str, Serializable serializable) {
            this.source = str;
            this.expression = serializable;
        }

        public final Serializable getExpression() {
            return this.expression;
        }

        public final String getSource() {
            return this.source;
        }
    }

    public final Integer getArgIndex() {
        return this.argIndex;
    }

    public final void setArgIndex(Integer num) {
        this.argIndex = num;
    }

    public final ArrayList<HookFilter> getOrFilters() {
        return this.orFilters;
    }

    public final void setOrFilters(ArrayList<HookFilter> arrayList) {
        this.orFilters = arrayList;
    }

    public final String getMvelExpression() {
        return this.mvelExpression;
    }

    public final void setMvelExpression(String str) {
        this.mvelExpression = str;
    }

    public final Class<?> getInstanceOf() {
        return this.instanceOf;
    }

    public final void setInstanceOf(Class<?> cls) {
        this.instanceOf = cls;
    }

    public final Object getObject() {
        return this.object;
    }

    public final void setObject(Object obj) {
        this.object = obj;
    }

    public final boolean execute(XC_MethodHook.MethodHookParam param, boolean isBefore) {
        Serializable compiledExpression;
        Boolean bool;
        try {
        } catch (Exception e) {
            AppUtils.log(e);
        }
        switch (this.typeId) {
            case 1:
                ArrayList<HookFilter> arrayList = this.orFilters;
                if (arrayList != null) {
                    Iterator<HookFilter> it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (it.next().execute(param, isBefore)) {
                            return true;
                        }
                    }
                }
                return false;
            case 2:
                HashMap map = new HashMap(4);
                map.put("param", param);
                map.put("result", isBefore ? null : param.getResult());
                map.put("object", this.object);
                String str = this.mvelExpression;
                if (str == null || (compiledExpression = getCompiledExpression(str)) == null || (bool = (Boolean) MVEL.executeExpression(compiledExpression, param.thisObject, map, Boolean.TYPE)) == null) {
                    return false;
                }
                return bool.booleanValue();
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                Integer num = this.argIndex;
                Object[] objArr = param.args;
                if (num != null && ArraysKt.getIndices(objArr).contains(num.intValue())) {
                    Object obj = objArr[num.intValue()];
                    switch (this.typeId) {
                        case 4:
                            if (!valuesEqual(obj, this.object)) {
                            }
                            break;
                        case 5:
                            Class<?> cls = this.instanceOf;
                            if (cls == null || !cls.isInstance(obj)) {
                            }
                            break;
                        case 6:
                            if (!(obj instanceof Boolean) || ((Boolean) obj).booleanValue()) {
                            }
                            break;
                        case 7:
                            if (obj == null) {
                            }
                            break;
                        case 8:
                            if (!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) {
                            }
                            break;
                        case 9:
                            if (obj != null) {
                            }
                            break;
                    }
                    return false;
                }
                return false;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                if (isBefore) {
                    return false;
                }
                Object result = param.getResult();
                switch (this.typeId) {
                    case 11:
                        if (!valuesEqual(result, this.object)) {
                        }
                        break;
                    case 12:
                        if (!(result instanceof Boolean) || ((Boolean) result).booleanValue()) {
                        }
                        break;
                    case 13:
                        Class<?> cls2 = this.instanceOf;
                        if (cls2 == null || !cls2.isInstance(result)) {
                        }
                        break;
                    case 14:
                        if (result == null) {
                        }
                        break;
                    case 15:
                        if (!(result instanceof Boolean) || !((Boolean) result).booleanValue()) {
                        }
                        break;
                    case 16:
                        if (result != null) {
                        }
                        break;
                }
                return false;
            default:
                return false;
        }
    }

    private final Serializable getCompiledExpression(String expression) {
        Serializable serializableCompileExpression;
        CompiledCondition compiledCondition = this.compiledCondition;
        if (compiledCondition != null && Intrinsics.areEqual(compiledCondition.getSource(), expression)) {
            return compiledCondition.getExpression();
        }
        try {
            serializableCompileExpression = MVEL.compileExpression(expression);
        } catch (Exception e) {
            AppUtils.log(e);
            serializableCompileExpression = null;
        }
        this.compiledCondition = new CompiledCondition(expression, serializableCompileExpression);
        return serializableCompileExpression;
    }

    private final boolean valuesEqual(Object a2, Object b2) {
        if (Intrinsics.areEqual(a2, b2)) {
            return true;
        }
        if ((a2 instanceof Number) && (b2 instanceof Number)) {
            if (!(a2 instanceof Double) && !(a2 instanceof Float) && !(b2 instanceof Double) && !(b2 instanceof Float)) {
                return ((Number) a2).longValue() == ((Number) b2).longValue();
            }
            if (((Number) a2).doubleValue() == ((Number) b2).doubleValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/HookFilter$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TYPE_UNKNOWN", _UrlKt.FRAGMENT_ENCODE_SET, "TYPE_OR", "TYPE_CONDITION", "TYPE_ARGUMENT_EQUAL", "TYPE_ARGUMENT_NOT_EQUAL", "TYPE_ARGUMENT_IS_INSTANCE_OF", "TYPE_ARGUMENT_IS_FALSE", "TYPE_ARGUMENT_IS_NULL", "TYPE_ARGUMENT_IS_TRUE", "TYPE_ARGUMENT_NOT_NULL", "TYPE_RESULT_EQUAL", "TYPE_RESULT_NOT_EQUAL", "TYPE_RESULT_IS_FALSE", "TYPE_RESULT_IS_INSTANCE_OF", "TYPE_RESULT_IS_NULL", "TYPE_RESULT_IS_TRUE", "TYPE_RESULT_NOT_NULL", "typeIdFor", "filterType", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final int typeIdFor(String filterType) {
            switch (filterType.hashCode()) {
                case -1842277382:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_IS_NULL) ? 0 : 7;
                case -1842101247:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_IS_TRUE) ? 0 : 8;
                case -1369450155:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_NOT_NULL) ? 0 : 16;
                case -1284007664:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_IS_FALSE) ? 0 : 6;
                case -1248106702:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_EQUAL) ? 0 : 3;
                case -861311717:
                    return !filterType.equals("condition") ? 0 : 2;
                case -170795378:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_IS_INSTANCE_OF) ? 0 : 13;
                case 3555:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.OR) ? 0 : 1;
                case 180205237:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_NOT_NULL) ? 0 : 9;
                case 488295718:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_NOT_EQUAL) ? 0 : 11;
                case 516769938:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_EQUAL) ? 0 : 10;
                case 1282972614:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_NOT_EQUAL) ? 0 : 4;
                case 1461304240:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_IS_FALSE) ? 0 : 12;
                case 1877750766:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.ARGUMENT_IS_INSTANCE_OF) ? 0 : 5;
                case 1987059034:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_IS_NULL) ? 0 : 14;
                case 1987235169:
                    return !filterType.equals(PluginsConstants.HookFilterTypes.RESULT_IS_TRUE) ? 0 : 15;
                default:
                    return 0;
            }
        }
    }
}
