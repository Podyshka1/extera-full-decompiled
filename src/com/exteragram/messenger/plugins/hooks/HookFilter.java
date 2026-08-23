package com.exteragram.messenger.plugins.hooks;

import com.exteragram.messenger.utils.AppUtils;
import de.robv.android.xposed.XC_MethodHook;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020)J\u0010\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u0003H\u0002J\u001c\u0010/\u001a\u00020)2\b\u00100\u001a\u0004\u0018\u00010\u00012\b\u00101\u001a\u0004\u0018\u00010\u0001H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R.\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0014j\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\u0005R \u0010\u001d\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00063"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/HookFilter;", _UrlKt.FRAGMENT_ENCODE_SET, "filterType", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;)V", "getFilterType", "()Ljava/lang/String;", "typeId", _UrlKt.FRAGMENT_ENCODE_SET, "compiledExpression", "Ljava/io/Serializable;", "compiledExpressionKey", "argIndex", "getArgIndex", "()Ljava/lang/Integer;", "setArgIndex", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "orFilters", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getOrFilters", "()Ljava/util/ArrayList;", "setOrFilters", "(Ljava/util/ArrayList;)V", "mvelExpression", "getMvelExpression", "setMvelExpression", "instanceOf", "Ljava/lang/Class;", "getInstanceOf", "()Ljava/lang/Class;", "setInstanceOf", "(Ljava/lang/Class;)V", "object", "getObject", "()Ljava/lang/Object;", "setObject", "(Ljava/lang/Object;)V", "execute", _UrlKt.FRAGMENT_ENCODE_SET, "param", "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;", "isBefore", "getCompiledExpression", "expression", "valuesEqual", "a", "b", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class HookFilter {
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
    private volatile Serializable compiledExpression;
    private volatile String compiledExpressionKey;
    private final String filterType;
    private Class<?> instanceOf;
    private String mvelExpression;
    private Object object;
    private ArrayList<HookFilter> orFilters;
    private final int typeId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<String, Serializable> mvelExpressionCache = new ConcurrentHashMap<>();

    public HookFilter(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-70018573551151L);
        this.filterType = str;
        this.typeId = INSTANCE.typeIdFor(str);
    }

    public final String getFilterType() {
        return this.filterType;
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
        Boolean bool;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-70074408125999L);
        try {
        } catch (Exception e) {
            AppUtils.log(e);
        }
        switch (this.typeId) {
            case 1:
                ArrayList<HookFilter> arrayList = this.orFilters;
                if (arrayList != null) {
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-70031458453039L);
                    for (HookFilter hookFilter : arrayList) {
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-68511040030255L);
                        if (hookFilter.execute(param, isBefore)) {
                            return true;
                        }
                    }
                }
                return false;
            case 2:
                HashMap map = new HashMap(4);
                map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68553989703215L), param);
                map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68579759506991L), isBefore ? null : param.getResult());
                map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68532514866735L), this.object);
                String str = this.mvelExpression;
                if (str == null || (bool = (Boolean) MVEL.executeExpression(getCompiledExpression(str), param.thisObject, map, Boolean.TYPE)) == null) {
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
                if (num != null) {
                    int length = objArr.length;
                    int iIntValue = num.intValue();
                    if (iIntValue >= 0 && iIntValue < length) {
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
        Serializable serializable = this.compiledExpression;
        if (serializable != null && Intrinsics.areEqual(this.compiledExpressionKey, expression)) {
            return serializable;
        }
        ConcurrentHashMap<String, Serializable> concurrentHashMap = mvelExpressionCache;
        final HookFilter$getCompiledExpression$compiled$1 hookFilter$getCompiledExpression$compiled$1 = HookFilter$getCompiledExpression$compiled$1.INSTANCE;
        Serializable serializableComputeIfAbsent = concurrentHashMap.computeIfAbsent(expression, new Function() { // from class: com.exteragram.messenger.plugins.hooks.HookFilter$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return HookFilter.$r8$lambda$b3Fk1SAQnzbr65exfos3tMKC5EQ(hookFilter$getCompiledExpression$compiled$1, obj);
            }
        });
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-68639889049135L);
        Serializable serializable2 = serializableComputeIfAbsent;
        this.compiledExpression = serializable2;
        this.compiledExpressionKey = expression;
        return serializable2;
    }

    public static Serializable $r8$lambda$b3Fk1SAQnzbr65exfos3tMKC5EQ(Function1 function1, Object obj) {
        return (Serializable) function1.invoke(obj);
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
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/HookFilter$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TYPE_UNKNOWN", _UrlKt.FRAGMENT_ENCODE_SET, "TYPE_OR", "TYPE_CONDITION", "TYPE_ARGUMENT_EQUAL", "TYPE_ARGUMENT_NOT_EQUAL", "TYPE_ARGUMENT_IS_INSTANCE_OF", "TYPE_ARGUMENT_IS_FALSE", "TYPE_ARGUMENT_IS_NULL", "TYPE_ARGUMENT_IS_TRUE", "TYPE_ARGUMENT_NOT_NULL", "TYPE_RESULT_EQUAL", "TYPE_RESULT_NOT_EQUAL", "TYPE_RESULT_IS_FALSE", "TYPE_RESULT_IS_INSTANCE_OF", "TYPE_RESULT_IS_NULL", "TYPE_RESULT_IS_TRUE", "TYPE_RESULT_NOT_NULL", "mvelExpressionCache", "Ljava/util/concurrent/ConcurrentHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/io/Serializable;", "typeIdFor", "filterType", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int typeIdFor(String filterType) {
            switch (filterType.hashCode()) {
                case -1842277382:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-69266954274351L)) ? 0 : 7;
                case -1842101247:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68824572642863L)) ? 0 : 8;
                case -1369450155:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-69198234797615L)) ? 0 : 16;
                case -1284007664:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68296291665455L)) ? 0 : 6;
                case -1248106702:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68382191011375L)) ? 0 : 3;
                case -861311717:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68781622969903L)) ? 0 : 2;
                case -170795378:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-67531787486767L)) ? 0 : 13;
                case 3555:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68274816828975L)) ? 0 : 1;
                case 180205237:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68373601076783L)) ? 0 : 9;
                case 488295718:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68962011596335L)) ? 0 : 11;
                case 516769938:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-67467362977327L)) ? 0 : 10;
                case 1282972614:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-67394348533295L)) ? 0 : 4;
                case 1461304240:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-69056500876847L)) ? 0 : 12;
                case 1877750766:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68652773951023L)) ? 0 : 5;
                case 1987059034:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-69125220353583L)) ? 0 : 14;
                case 1987235169:
                    return !filterType.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-68906177021487L)) ? 0 : 15;
                default:
                    return 0;
            }
        }
    }
}
