package com.exteragram.messenger.inline.math;

import com.google.android.gms.cast.MediaTrack;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0017\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\r¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0017\u001a\u00020\r¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020\r¢\u0006\u0004\b#\u0010$R\u001d\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00180%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u001b0%8\u0006¢\u0006\f\n\u0004\b\t\u0010'\u001a\u0004\b*\u0010)R\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001e0%8\u0006¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b,\u0010)R\u001d\u0010-\u001a\b\u0012\u0004\u0012\u00020\"0%8\u0006¢\u0006\f\n\u0004\b-\u0010'\u001a\u0004\b.\u0010)R#\u00100\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00040/8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001d\u00105\u001a\b\u0012\u0004\u0012\u00020\r048\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u001d\u00109\u001a\b\u0012\u0004\u0012\u00020\r048\u0006¢\u0006\f\n\u0004\b9\u00106\u001a\u0004\b:\u00108R#\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0/8\u0006¢\u0006\f\n\u0004\b;\u00101\u001a\u0004\b<\u00103R#\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00040/8\u0006¢\u0006\f\n\u0004\b=\u00101\u001a\u0004\b>\u00103R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020\r0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010'R\u001d\u0010@\u001a\b\u0012\u0004\u0012\u00020\b048\u0006¢\u0006\f\n\u0004\b@\u00106\u001a\u0004\bA\u00108¨\u0006B"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathOperators;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "value", "factorial", "(D)D", _UrlKt.FRAGMENT_ENCODE_SET, "prefix", _UrlKt.FRAGMENT_ENCODE_SET, "radixFor", "(C)I", _UrlKt.FRAGMENT_ENCODE_SET, "digits", "radix", "stripRadixPrefix", "(Ljava/lang/String;I)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "text", "at", "matchSymbol", "(Ljava/lang/CharSequence;I)Ljava/lang/String;", "symbol", "Lcom/exteragram/messenger/inline/math/InfixOperator;", "infixFor", "(Ljava/lang/String;)Lcom/exteragram/messenger/inline/math/InfixOperator;", "Lcom/exteragram/messenger/inline/math/PrefixOperator;", "prefixFor", "(Ljava/lang/String;)Lcom/exteragram/messenger/inline/math/PrefixOperator;", "Lcom/exteragram/messenger/inline/math/PostfixOperator;", "postfixFor", "(Ljava/lang/String;)Lcom/exteragram/messenger/inline/math/PostfixOperator;", "name", "Lcom/exteragram/messenger/inline/math/MathFunction;", "functionFor", "(Ljava/lang/String;)Lcom/exteragram/messenger/inline/math/MathFunction;", _UrlKt.FRAGMENT_ENCODE_SET, "infix", "Ljava/util/List;", "getInfix", "()Ljava/util/List;", "getPrefix", "postfix", "getPostfix", "functions", "getFunctions", _UrlKt.FRAGMENT_ENCODE_SET, "multipliers", "Ljava/util/Map;", "getMultipliers", "()Ljava/util/Map;", _UrlKt.FRAGMENT_ENCODE_SET, "gluedMultipliers", "Ljava/util/Set;", "getGluedMultipliers", "()Ljava/util/Set;", "percentOf", "getPercentOf", "bases", "getBases", "constants", "getConstants", "symbols", "symbolChars", "getSymbolChars", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMathOperators.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathOperators.kt\ncom/exteragram/messenger/inline/math/MathOperators\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,202:1\n296#2,2:203\n296#2,2:205\n296#2,2:207\n296#2,2:209\n296#2,2:211\n1915#2,2:215\n1915#2,2:217\n1915#2,2:219\n1080#2:221\n1915#2:222\n1916#2:225\n1915#2:226\n1916#2:229\n14048#3,2:213\n1198#4,2:223\n1198#4,2:227\n*S KotlinDebug\n*F\n+ 1 MathOperators.kt\ncom/exteragram/messenger/inline/math/MathOperators\n*L\n179#1:203,2\n183#1:205,2\n185#1:207,2\n187#1:209,2\n189#1:211,2\n165#1:215,2\n166#1:217,2\n167#1:219,2\n168#1:221\n171#1:222\n171#1:225\n172#1:226\n172#1:229\n132#1:213,2\n171#1:223,2\n172#1:227,2\n*E\n"})
public final class MathOperators {
    public static final MathOperators INSTANCE = new MathOperators();
    private static final Map<String, Integer> bases;
    private static final Map<String, Double> constants;
    private static final List<MathFunction> functions;
    private static final Set<String> gluedMultipliers;
    private static final List<InfixOperator> infix;
    private static final Map<String, Double> multipliers;
    private static final Set<String> percentOf;
    private static final List<PostfixOperator> postfix;
    private static final List<PrefixOperator> prefix;
    private static final Set<Character> symbolChars;
    private static final List<String> symbols;

    public static double $r8$lambda$1sHgS7I35umYlixCna5c35deAro(double d) {
        return d;
    }

    public final int radixFor(char prefix2) {
        if (prefix2 == 'B') {
            return 2;
        }
        if (prefix2 == 'O') {
            return 8;
        }
        if (prefix2 == 'X') {
            return 16;
        }
        if (prefix2 == 'b') {
            return 2;
        }
        if (prefix2 != 'o') {
            return prefix2 != 'x' ? 0 : 16;
        }
        return 8;
    }

    private MathOperators() {
    }

    static {
        List listListOf = CollectionsKt.listOf("+");
        UnitRule unitRule = UnitRule.SAME;
        List<InfixOperator> listListOf2 = CollectionsKt.listOf((Object[]) new InfixOperator[]{new InfixOperator(listListOf, 10, unitRule, false, new Function3() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return Double.valueOf(MathOperators.$r8$lambda$ZVrQvXZPmKA6MKcS5cA3hZbE5s0(((Double) obj).doubleValue(), ((Double) obj2).doubleValue(), ((Boolean) obj3).booleanValue()));
            }
        }, 8, null), new InfixOperator(CollectionsKt.listOf((Object[]) new String[]{"-", "−"}), 10, unitRule, false, new Function3() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return Double.valueOf(MathOperators.m2688$r8$lambda$LSDKb6aiRHvNLPBAkDSZnVorXU(((Double) obj).doubleValue(), ((Double) obj2).doubleValue(), ((Boolean) obj3).booleanValue()));
            }
        }, 8, null), new InfixOperator(CollectionsKt.listOf((Object[]) new String[]{"*", "×"}), 20, UnitRule.SCALE, false, new Function3() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return Double.valueOf(MathOperators.$r8$lambda$k5EXF16m3PjNI8p3YfxpxexwkF8(((Double) obj).doubleValue(), ((Double) obj2).doubleValue(), ((Boolean) obj3).booleanValue()));
            }
        }, 8, null), new InfixOperator(CollectionsKt.listOf((Object[]) new String[]{"/", "÷"}), 20, UnitRule.RATIO, false, new Function3() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return Double.valueOf(MathOperators.$r8$lambda$kelnVd_Ka84nxlxlbuCSTjjpYkM(((Double) obj).doubleValue(), ((Double) obj2).doubleValue(), ((Boolean) obj3).booleanValue()));
            }
        }, 8, null), new InfixOperator(CollectionsKt.listOf("^"), 40, UnitRule.NONE, true, new Function3() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                double dDoubleValue = ((Double) obj).doubleValue();
                double dDoubleValue2 = ((Double) obj2).doubleValue();
                ((Boolean) obj3).booleanValue();
                return Double.valueOf(Math.pow(dDoubleValue, dDoubleValue2));
            }
        })});
        infix = listListOf2;
        prefix = CollectionsKt.listOf((Object[]) new PrefixOperator[]{new PrefixOperator(CollectionsKt.listOf((Object[]) new String[]{"-", "−"}), 30, false, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(MathOperators.m2693$r8$lambda$pYr6NR2WMrxTJl51URT4Km1qE(((Double) obj).doubleValue()));
            }
        }, 4, null), new PrefixOperator(CollectionsKt.listOf("+"), 30, false, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(MathOperators.$r8$lambda$1sHgS7I35umYlixCna5c35deAro(((Double) obj).doubleValue()));
            }
        }, 4, null), new PrefixOperator(CollectionsKt.listOf("√"), 40, true, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.sqrt(((Double) obj).doubleValue()));
            }
        })});
        postfix = CollectionsKt.listOf((Object[]) new PostfixOperator[]{new PostfixOperator(CollectionsKt.listOf("%"), true, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(MathOperators.$r8$lambda$9knPl1bWilrikXdX83ClBN7MwRE(((Double) obj).doubleValue()));
            }
        }), new PostfixOperator(CollectionsKt.listOf("!"), false, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(MathOperators.INSTANCE.factorial(((Double) obj).doubleValue()));
            }
        }, 2, null)});
        MathFunction mathFunction = new MathFunction("sqrt", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.sqrt(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction2 = new MathFunction("cbrt", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.cbrt(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction3 = new MathFunction("abs", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.abs(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction4 = new MathFunction(MediaTrack.ROLE_SIGN, new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.signum(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction5 = new MathFunction("round", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda5
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 double, still in use, count: 1, list:
                  (r0v1 double) from 0x0006: INVOKE (r0v2 java.lang.Double) = (r0v1 double) STATIC call: java.lang.Double.valueOf(double):java.lang.Double A[MD:(double):java.lang.Double (c)]
                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
                	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
                	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:468)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
                */
            @Override // kotlin.jvm.functions.Function1
            public final java.lang.Object invoke(java.lang.Object r1) {
                /*
                    r0 = this;
                    double[] r1 = (double[]) r1
                    double r0 = com.exteragram.messenger.inline.math.MathOperators.$r8$lambda$G8z2S_NXWKqEXc95h4alFZZoAT0(r1)
                    java.lang.Double r0 = java.lang.Double.valueOf(r0)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda5.invoke(java.lang.Object):java.lang.Object");
            }
        }, 4, null);
        MathFunction mathFunction6 = new MathFunction("floor", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.floor(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction7 = new MathFunction("ceil", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.ceil(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction8 = new MathFunction("fact", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(MathOperators.INSTANCE.factorial(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction9 = new MathFunction("min", new IntRange(1, Integer.MAX_VALUE), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(ArraysKt.minOrThrow((double[]) obj));
            }
        }, 4, null);
        MathFunction mathFunction10 = new MathFunction("max", new IntRange(1, Integer.MAX_VALUE), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(ArraysKt.maxOrThrow((double[]) obj));
            }
        }, 4, null);
        MathFunction mathFunction11 = new MathFunction("log", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.log10(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction12 = new MathFunction("log2", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(MathKt.log2(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction13 = new MathFunction("ln", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.log(((double[]) obj)[0]));
            }
        }, 4, null);
        MathFunction mathFunction14 = new MathFunction("exp", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.exp(((double[]) obj)[0]));
            }
        }, 4, null);
        IntRange intRange = new IntRange(1, 1);
        AngleUse angleUse = AngleUse.ARGUMENT;
        MathFunction mathFunction15 = new MathFunction("sin", intRange, angleUse, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.sin(((double[]) obj)[0]));
            }
        });
        MathFunction mathFunction16 = new MathFunction("cos", new IntRange(1, 1), angleUse, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.cos(((double[]) obj)[0]));
            }
        });
        MathFunction mathFunction17 = new MathFunction("tan", new IntRange(1, 1), angleUse, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.tan(((double[]) obj)[0]));
            }
        });
        IntRange intRange2 = new IntRange(1, 1);
        AngleUse angleUse2 = AngleUse.RESULT;
        functions = CollectionsKt.listOf((Object[]) new MathFunction[]{mathFunction, mathFunction2, mathFunction3, mathFunction4, mathFunction5, mathFunction6, mathFunction7, mathFunction8, mathFunction9, mathFunction10, mathFunction11, mathFunction12, mathFunction13, mathFunction14, mathFunction15, mathFunction16, mathFunction17, new MathFunction("asin", intRange2, angleUse2, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.asin(((double[]) obj)[0]));
            }
        }), new MathFunction("acos", new IntRange(1, 1), angleUse2, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.acos(((double[]) obj)[0]));
            }
        }), new MathFunction("atan", new IntRange(1, 1), angleUse2, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.atan(((double[]) obj)[0]));
            }
        }), new MathFunction("atan2", new IntRange(2, 2), angleUse2, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                double[] dArr = (double[]) obj;
                return Double.valueOf(Math.atan2(dArr[0], dArr[1]));
            }
        }), new MathFunction("sinh", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.sinh(((double[]) obj)[0]));
            }
        }, 4, null), new MathFunction("cosh", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.cosh(((double[]) obj)[0]));
            }
        }, 4, null), new MathFunction("tanh", new IntRange(1, 1), null, new Function1() { // from class: com.exteragram.messenger.inline.math.MathOperators$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Double.valueOf(Math.tanh(((double[]) obj)[0]));
            }
        }, 4, null)});
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        multipliers$lambda$35$add(mapCreateMapBuilder, 1000.0d, "к", "k", "тыс", "тысяча", "тысячи", "тысяч", "thousand", "thousands");
        multipliers$lambda$35$add(mapCreateMapBuilder, 1000000.0d, "кк", "kk", "млн", "миллион", "миллиона", "миллионов", "million", "millions");
        multipliers$lambda$35$add(mapCreateMapBuilder, 1.0E9d, "ккк", "kkk", "млрд", "миллиард", "миллиарда", "миллиардов", "billion", "billions");
        multipliers = MapsKt.build(mapCreateMapBuilder);
        gluedMultipliers = SetsKt.setOf((Object[]) new String[]{"к", "k", "кк", "kk", "ккк", "kkk"});
        percentOf = SetsKt.setOf((Object[]) new String[]{"от", "of"});
        bases = MapsKt.mapOf(TuplesKt.to("bin", 2), TuplesKt.to("oct", 8), TuplesKt.to("hex", 16), TuplesKt.to("dec", 10));
        Double dValueOf = Double.valueOf(3.141592653589793d);
        constants = MapsKt.mapOf(TuplesKt.to("pi", dValueOf), TuplesKt.to("π", dValueOf), TuplesKt.to("e", Double.valueOf(2.718281828459045d)));
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator<T> it = listListOf2.iterator();
        while (it.hasNext()) {
            listCreateListBuilder.addAll(((InfixOperator) it.next()).getSymbols());
        }
        Iterator<T> it2 = prefix.iterator();
        while (it2.hasNext()) {
            listCreateListBuilder.addAll(((PrefixOperator) it2.next()).getSymbols());
        }
        Iterator<T> it3 = postfix.iterator();
        while (it3.hasNext()) {
            listCreateListBuilder.addAll(((PostfixOperator) it3.next()).getSymbols());
        }
        List<String> listSortedWith = CollectionsKt.sortedWith(CollectionsKt.distinct(CollectionsKt.build(listCreateListBuilder)), new Comparator() { // from class: com.exteragram.messenger.inline.math.MathOperators$special$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((String) t2).length()), Integer.valueOf(((String) t).length()));
            }
        });
        symbols = listSortedWith;
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        Iterator<T> it4 = listSortedWith.iterator();
        while (true) {
            if (!it4.hasNext()) {
                break;
            }
            String str = (String) it4.next();
            for (int i = 0; i < str.length(); i++) {
                setCreateSetBuilder.add(Character.valueOf(str.charAt(i)));
            }
        }
        for (String str2 : constants.keySet()) {
            for (int i2 = 0; i2 < str2.length(); i2++) {
                char cCharAt = str2.charAt(i2);
                if (!Character.isLetter(cCharAt)) {
                    setCreateSetBuilder.add(Character.valueOf(cCharAt));
                }
            }
        }
        setCreateSetBuilder.add('(');
        setCreateSetBuilder.add(')');
        setCreateSetBuilder.add(';');
        symbolChars = SetsKt.build(setCreateSetBuilder);
    }

    public static double $r8$lambda$ZVrQvXZPmKA6MKcS5cA3hZbE5s0(double d, double d2, boolean z) {
        return z ? d + (d2 * d) : d + d2;
    }

    /* JADX INFO: renamed from: $r8$lambda$LSDKb6aiRHvNLPBAkDSZ-nVorXU, reason: not valid java name */
    public static double m2688$r8$lambda$LSDKb6aiRHvNLPBAkDSZnVorXU(double d, double d2, boolean z) {
        return z ? d - (d2 * d) : d - d2;
    }

    public static double $r8$lambda$k5EXF16m3PjNI8p3YfxpxexwkF8(double d, double d2, boolean z) {
        return d * d2;
    }

    public static double $r8$lambda$kelnVd_Ka84nxlxlbuCSTjjpYkM(double d, double d2, boolean z) {
        return d / d2;
    }

    /* JADX INFO: renamed from: $r8$lambda$pYr6NR2WM-rxTJl5-1URT4Km1qE, reason: not valid java name */
    public static double m2693$r8$lambda$pYr6NR2WMrxTJl51URT4Km1qE(double d) {
        return -d;
    }

    public static double $r8$lambda$9knPl1bWilrikXdX83ClBN7MwRE(double d) {
        return d / 100.0d;
    }

    public final Map<String, Double> getMultipliers() {
        return multipliers;
    }

    public final Set<String> getGluedMultipliers() {
        return gluedMultipliers;
    }

    public final Set<String> getPercentOf() {
        return percentOf;
    }

    public final Map<String, Integer> getBases() {
        return bases;
    }

    public final String stripRadixPrefix(String digits, int radix) {
        return (digits.length() > 2 && digits.charAt(0) == '0' && radixFor(digits.charAt(1)) == radix) ? digits.substring(2) : digits;
    }

    public final Map<String, Double> getConstants() {
        return constants;
    }

    public final Set<Character> getSymbolChars() {
        return symbolChars;
    }

    public final String matchSymbol(CharSequence text, int at) {
        Object next;
        CharSequence charSequence;
        int i;
        Iterator<T> it = symbols.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            String str = (String) next;
            if (str.length() + at <= text.length()) {
                charSequence = text;
                i = at;
                if (StringsKt.regionMatches$default(charSequence, i, (CharSequence) str, 0, str.length(), false, 16, (Object) null)) {
                    break;
                }
            } else {
                charSequence = text;
                i = at;
            }
            text = charSequence;
            at = i;
        }
        return (String) next;
    }

    public final InfixOperator infixFor(String symbol) {
        Object next;
        Iterator<T> it = infix.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((InfixOperator) next).getSymbols().contains(symbol)) {
                break;
            }
        }
        return (InfixOperator) next;
    }

    public final PrefixOperator prefixFor(String symbol) {
        Object next;
        Iterator<T> it = prefix.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((PrefixOperator) next).getSymbols().contains(symbol)) {
                break;
            }
        }
        return (PrefixOperator) next;
    }

    public final PostfixOperator postfixFor(String symbol) {
        Object next;
        Iterator<T> it = postfix.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((PostfixOperator) next).getSymbols().contains(symbol)) {
                break;
            }
        }
        return (PostfixOperator) next;
    }

    public final MathFunction functionFor(String name) {
        Object next;
        Iterator<T> it = functions.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((MathFunction) next).getName(), name)) {
                break;
            }
        }
        return (MathFunction) next;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double factorial(double value) {
        if (value < 0.0d || value != Math.floor(value) || value > 170.0d) {
            return Double.NaN;
        }
        int i = (int) value;
        double d = 1.0d;
        int i2 = 2;
        if (2 <= i) {
            while (true) {
                d *= (double) i2;
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        return d;
    }

    private static final void multipliers$lambda$35$add(Map<String, Double> map, double d, String... strArr) {
        for (String str : strArr) {
            map.put(str, Double.valueOf(d));
        }
    }
}
