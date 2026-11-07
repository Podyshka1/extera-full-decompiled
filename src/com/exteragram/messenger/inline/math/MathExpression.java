package com.exteragram.messenger.inline.math;

import com.exteragram.messenger.inline.rates.Currencies;
import com.exteragram.messenger.inline.rates.CurrencyRates;
import com.exteragram.messenger.inline.time.TimeZoneOptions;
import com.exteragram.messenger.inline.time.TimeZones;
import com.exteragram.messenger.inline.units.Measures;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004,-./B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ!\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u001f¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u0004\u0018\u00010\b2\u0006\u0010$\u001a\u00020!¢\u0006\u0004\b%\u0010&J'\u0010'\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b'\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u00060"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathExpression;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "caret", _UrlKt.FRAGMENT_ENCODE_SET, "value", "Lcom/exteragram/messenger/inline/math/MathSuggestion;", "suggestion", "(Ljava/lang/CharSequence;ILjava/lang/String;)Lcom/exteragram/messenger/inline/math/MathSuggestion;", "from", "to", _UrlKt.FRAGMENT_ENCODE_SET, "looksLikeDate", "(Ljava/lang/CharSequence;II)Z", "end", "nextCandidate", "(Ljava/lang/CharSequence;II)Ljava/lang/Integer;", "equalsIndex", "expressionStart", "(Ljava/lang/CharSequence;I)Ljava/lang/Integer;", _UrlKt.FRAGMENT_ENCODE_SET, "c", "isBlank", "(C)Z", "isWordChar", "isExpressionChar", "expression", "Lcom/exteragram/messenger/inline/math/MathOptions;", "options", "Lcom/exteragram/messenger/inline/math/MathResult;", "evaluate", "(Ljava/lang/CharSequence;Lcom/exteragram/messenger/inline/math/MathOptions;)Lcom/exteragram/messenger/inline/math/MathResult;", "result", "format", "(Lcom/exteragram/messenger/inline/math/MathResult;)Ljava/lang/String;", "suggestionAt", "(Ljava/lang/CharSequence;ILcom/exteragram/messenger/inline/math/MathOptions;)Lcom/exteragram/messenger/inline/math/MathSuggestion;", "Lcom/exteragram/messenger/inline/math/MathExpression$MathParseError;", "error", "Lcom/exteragram/messenger/inline/math/MathExpression$MathParseError;", "MathParseError", "Token", "Operand", "Parser", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMathExpression.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathExpression.kt\ncom/exteragram/messenger/inline/math/MathExpression\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,858:1\n1#2:859\n*E\n"})
public final class MathExpression {
    public static final MathExpression INSTANCE = new MathExpression();
    private static final MathParseError error = new MathParseError();

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isBlank(char c2) {
        return c2 == ' ' || c2 == '\t' || c2 == 160;
    }

    private MathExpression() {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathExpression$MathParseError;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "<init>", "()V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MathParseError extends RuntimeException {
        public MathParseError() {
            super(null, null, false, false);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathExpression$Token;", _UrlKt.FRAGMENT_ENCODE_SET, "type", _UrlKt.FRAGMENT_ENCODE_SET, "number", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "units", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/inline/math/MathUnit;", "<init>", "(IDLjava/lang/String;Ljava/util/List;)V", "getType", "()I", "getNumber", "()D", "getText", "()Ljava/lang/String;", "getUnits", "()Ljava/util/List;", "unit", "getUnit", "()Lcom/exteragram/messenger/inline/math/MathUnit;", "setUnit", "(Lcom/exteragram/messenger/inline/math/MathUnit;)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Token {
        private final double number;
        private final String text;
        private final int type;
        private MathUnit unit;
        private final List<MathUnit> units;

        public Token(int i, double d, String str, List<MathUnit> list) {
            this.type = i;
            this.number = d;
            this.text = str;
            this.units = list;
            this.unit = (MathUnit) CollectionsKt.firstOrNull((List) list);
        }

        public /* synthetic */ Token(int i, double d, String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, (i2 & 2) != 0 ? 0.0d : d, (i2 & 4) != 0 ? _UrlKt.FRAGMENT_ENCODE_SET : str, (i2 & 8) != 0 ? CollectionsKt.emptyList() : list);
        }

        public final double getNumber() {
            return this.number;
        }

        public final String getText() {
            return this.text;
        }

        public final int getType() {
            return this.type;
        }

        public final List<MathUnit> getUnits() {
            return this.units;
        }

        public final MathUnit getUnit() {
            return this.unit;
        }

        public final void setUnit(MathUnit mathUnit) {
            this.unit = mathUnit;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathExpression$Operand;", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "isPercent", _UrlKt.FRAGMENT_ENCODE_SET, "unit", "Lcom/exteragram/messenger/inline/math/MathUnit;", "<init>", "(DZLcom/exteragram/messenger/inline/math/MathUnit;)V", "getValue", "()D", "()Z", "getUnit", "()Lcom/exteragram/messenger/inline/math/MathUnit;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Operand {
        private final boolean isPercent;
        private final MathUnit unit;
        private final double value;

        public Operand(double d, boolean z, MathUnit mathUnit) {
            this.value = d;
            this.isPercent = z;
            this.unit = mathUnit;
        }

        public /* synthetic */ Operand(double d, boolean z, MathUnit mathUnit, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(d, z, (i & 4) != 0 ? null : mathUnit);
        }

        public final MathUnit getUnit() {
            return this.unit;
        }

        public final double getValue() {
            return this.value;
        }

        /* JADX INFO: renamed from: isPercent, reason: from getter */
        public final boolean getIsPercent() {
            return this.isPercent;
        }
    }

    public final MathResult evaluate(CharSequence expression, MathOptions options) {
        try {
            return new Parser(expression, options).parse();
        } catch (MathParseError unused) {
            return null;
        }
    }

    public final String format(MathResult result) {
        String measure;
        if (result.getBase() != 10) {
            return MathFormat.INSTANCE.formatBase(result.getValue(), result.getBase());
        }
        MathUnit unit = result.getUnit();
        if (unit == null) {
            return MathFormat.INSTANCE.format(result.getValue(), result.getDecimalSeparator(), result.getGrouping());
        }
        if (unit.getKind() == UnitKind.CURRENCY) {
            measure = MathFormat.INSTANCE.formatMoney(result.getValue(), Currencies.INSTANCE.fractionDigits(unit.getCode()), result.getDecimalSeparator(), result.getGrouping());
        } else {
            if (result.getBreakdown()) {
                return Measures.INSTANCE.formatDuration(unit.toBase(result.getValue()), result.getDecimalSeparator(), result.getRussian());
            }
            measure = MathFormat.INSTANCE.formatMeasure(result.getValue(), result.getDecimalSeparator(), result.getGrouping());
        }
        if (measure == null) {
            return null;
        }
        return measure + " " + unit.label(result.getRussian());
    }

    public final MathSuggestion suggestionAt(CharSequence text, int caret, MathOptions options) {
        String str;
        String strValueAt;
        if (caret > 1 && caret <= text.length()) {
            int i = caret - 1;
            if (text.charAt(i) == '=') {
                int i2 = caret;
                while (i2 < text.length() && isBlank(text.charAt(i2))) {
                    i2++;
                }
                if (i2 < text.length()) {
                    char cCharAt = text.charAt(i2);
                    if (Character.isDigit(cCharAt) || cCharAt == '.' || cCharAt == ',') {
                        return null;
                    }
                }
                TimeZoneOptions timeZones = options.getTimeZones();
                if (timeZones != null && (strValueAt = TimeZones.INSTANCE.valueAt(text, i, timeZones)) != null) {
                    return INSTANCE.suggestion(text, caret, strValueAt);
                }
                Integer numExpressionStart = expressionStart(text, i);
                if (numExpressionStart != null) {
                    int iIntValue = numExpressionStart.intValue();
                    while (true) {
                        if (!looksLikeDate(text, iIntValue, i)) {
                            StringBuilder sb = new StringBuilder(i - iIntValue);
                            sb.append(text, iIntValue, i);
                            MathResult mathResultEvaluate = evaluate(sb, options);
                            if (mathResultEvaluate != null) {
                                if (!mathResultEvaluate.getHasOperation() || ((mathResultEvaluate.getUnit() == null && !options.getArithmetic()) || (str = format(mathResultEvaluate)) == null)) {
                                    return null;
                                }
                                return suggestion(text, caret, str);
                            }
                        }
                        Integer numNextCandidate = nextCandidate(text, iIntValue, i);
                        if (numNextCandidate == null) {
                            break;
                        }
                        iIntValue = numNextCandidate.intValue();
                    }
                }
            }
        }
        return null;
    }

    private final MathSuggestion suggestion(CharSequence text, int caret, String value) {
        String str;
        if (isBlank(text.charAt(caret - 2))) {
            str = " " + value;
        } else {
            str = value;
        }
        return new MathSuggestion(caret, str, value);
    }

    private final boolean looksLikeDate(CharSequence text, int from, int to) {
        Integer num;
        Integer num2;
        while (from < to && isBlank(text.charAt(from))) {
            from++;
        }
        while (to > from && isBlank(text.charAt(to - 1))) {
            to--;
        }
        if (to - from < 6) {
            return false;
        }
        ArrayList arrayList = new ArrayList(4);
        int i = 0;
        char c2 = ' ';
        while (from < to) {
            char cCharAt = text.charAt(from);
            if (Character.isDigit(cCharAt)) {
                i++;
            } else {
                if (cCharAt != '/' && cCharAt != '.' && cCharAt != '-') {
                    return false;
                }
                if (c2 == ' ') {
                    c2 = cCharAt;
                } else if (c2 != cCharAt) {
                    return false;
                }
                if (i == 0 || arrayList.size() == 2) {
                    return false;
                }
                arrayList.add(Integer.valueOf(i));
                i = 0;
            }
            from++;
        }
        if (i != 0 && arrayList.size() == 2) {
            arrayList.add(Integer.valueOf(i));
            switch (c2) {
                case '-':
                    Integer num3 = (Integer) arrayList.get(0);
                    if (num3 != null && num3.intValue() == 4 && ((Number) arrayList.get(1)).intValue() <= 2 && ((Number) arrayList.get(2)).intValue() <= 2) {
                        return true;
                    }
                    break;
                case '.':
                case '/':
                    return ((Number) arrayList.get(0)).intValue() <= 2 && ((Number) arrayList.get(1)).intValue() <= 2 && (((num = (Integer) arrayList.get(2)) != null && num.intValue() == 2) || ((num2 = (Integer) arrayList.get(2)) != null && num2.intValue() == 4));
                default:
                    return false;
            }
        }
        return false;
    }

    private final Integer nextCandidate(CharSequence text, int from, int end) {
        char c2 = ' ';
        while (from < end) {
            char cCharAt = text.charAt(from);
            from++;
            if (cCharAt == '(') {
                return Integer.valueOf(from);
            }
            if (isBlank(cCharAt)) {
                while (from < end && isBlank(text.charAt(from))) {
                    from++;
                }
                if (from >= end) {
                    return null;
                }
                if (cCharAt != 160 || !Character.isDigit(c2) || !Character.isDigit(text.charAt(from))) {
                    return Integer.valueOf(from);
                }
            } else {
                c2 = cCharAt;
            }
        }
        return null;
    }

    private final Integer expressionStart(CharSequence text, int equalsIndex) {
        int iMax = Math.max(0, equalsIndex - 64);
        int i = equalsIndex - 1;
        while (i >= iMax && isExpressionChar(text.charAt(i))) {
            i--;
        }
        do {
            i++;
            if (i >= equalsIndex) {
                break;
            }
        } while (isBlank(text.charAt(i)));
        if (i >= equalsIndex) {
            return null;
        }
        if (i > 0) {
            char cCharAt = text.charAt(i - 1);
            if (Character.isLetter(cCharAt)) {
                while (i < equalsIndex && !isBlank(text.charAt(i))) {
                    i++;
                }
                while (i < equalsIndex && isBlank(text.charAt(i))) {
                    i++;
                }
                if (i >= equalsIndex) {
                    return null;
                }
            } else if (Character.isDigit(cCharAt) || cCharAt == '_') {
                return null;
            }
        }
        return Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isWordChar(char c2) {
        return Character.isLetter(c2) || Character.isDigit(c2) || c2 == 178;
    }

    private final boolean isExpressionChar(char c2) {
        return Character.isDigit(c2) || Character.isLetter(c2) || c2 == '.' || c2 == ',' || isBlank(c2) || c2 == 176 || c2 == 8451 || c2 == 8457 || c2 == 178 || c2 == 65039 || MathOperators.INSTANCE.getSymbolChars().contains(Character.valueOf(c2)) || Currencies.INSTANCE.getSymbolChars().contains(Character.valueOf(c2));
    }

    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0018\u001a\u00020\u0019J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u00020 H\u0002J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\rH\u0002J\u0010\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\rH\u0002J\u0010\u0010%\u001a\u00020\r2\u0006\u0010#\u001a\u00020\rH\u0002J\u0018\u0010&\u001a\u00020\r2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\rH\u0002J\u0018\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020(2\u0006\u0010)\u001a\u00020\rH\u0002J\u0010\u0010,\u001a\u00020\r2\u0006\u0010#\u001a\u00020\rH\u0002J\u0018\u0010-\u001a\u00020\r2\u0006\u0010#\u001a\u00020\r2\u0006\u0010.\u001a\u00020\u0010H\u0002J\u0018\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00152\u0006\u00101\u001a\u00020\u0010H\u0002J\u0010\u00102\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\rH\u0002J\u0010\u00103\u001a\u00020\u00102\u0006\u00104\u001a\u00020\rH\u0002J\b\u00105\u001a\u00020\nH\u0002J\b\u00106\u001a\u00020\nH\u0002J\u0010\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\rH\u0002J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\rH\u0002J\b\u0010<\u001a\u00020:H\u0002J\u0018\u0010=\u001a\u00020:2\u0006\u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020\u001bH\u0002J \u0010@\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u001b2\u0006\u0010A\u001a\u00020\u001bH\u0002J \u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020:2\u0006\u0010F\u001a\u00020:H\u0002J\b\u0010G\u001a\u00020:H\u0002J\b\u0010H\u001a\u00020:H\u0002J\b\u0010I\u001a\u00020:H\u0002J\u0010\u0010J\u001a\u00020\u001e2\u0006\u0010K\u001a\u00020(H\u0002J\u0018\u0010L\u001a\u00020\u001e2\u0006\u0010K\u001a\u00020(2\u0006\u0010M\u001a\u00020\rH\u0002J\u0018\u0010N\u001a\u00020\u001e2\u0006\u0010O\u001a\u00020(2\u0006\u0010M\u001a\u00020\rH\u0002J\b\u0010P\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Q"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathExpression$Parser;", _UrlKt.FRAGMENT_ENCODE_SET, "source", _UrlKt.FRAGMENT_ENCODE_SET, "options", "Lcom/exteragram/messenger/inline/math/MathOptions;", "<init>", "(Ljava/lang/CharSequence;Lcom/exteragram/messenger/inline/math/MathOptions;)V", "tokens", "Ljava/util/ArrayList;", "Lcom/exteragram/messenger/inline/math/MathExpression$Token;", "Lkotlin/collections/ArrayList;", "position", _UrlKt.FRAGMENT_ENCODE_SET, "depth", "hasOperation", _UrlKt.FRAGMENT_ENCODE_SET, "expanded", "explicitTarget", "base", "separator", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Character;", "russian", "parse", "Lcom/exteragram/messenger/inline/math/MathResult;", "implicitTarget", "Lcom/exteragram/messenger/inline/math/MathUnit;", "unit", "value", _UrlKt.FRAGMENT_ENCODE_SET, "tokenize", _UrlKt.FRAGMENT_ENCODE_SET, "resolveUnits", "wordEnd", "from", "skipBlanks", "readTemperature", "addWord", "word", _UrlKt.FRAGMENT_ENCODE_SET, "end", "readCompound", "first", "readNumber", "scanNumber", "grouping", "isGroupSeparator", "c", "spaces", "isAmountAt", "isDigitGroup", "at", "peek", "next", "expect", "type", "parseExpression", "Lcom/exteragram/messenger/inline/math/MathExpression$Operand;", "minPrecedence", "parseConversion", "convert", "operand", "target", "convertValue", "to", "combine", "operator", "Lcom/exteragram/messenger/inline/math/InfixOperator;", "left", "right", "parseUnary", "parsePostfix", "parsePrimary", "parseIdentifier", "name", "parseBase", "radix", "parseDigits", "digits", "parseArgument", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMathExpression.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathExpression.kt\ncom/exteragram/messenger/inline/math/MathExpression$Parser\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,858:1\n1107#2,2:859\n1#3:861\n296#4,2:862\n*S KotlinDebug\n*F\n+ 1 MathExpression.kt\ncom/exteragram/messenger/inline/math/MathExpression$Parser\n*L\n266#1:859,2\n366#1:862,2\n*E\n"})
    public static final class Parser {
        private int depth;
        private boolean expanded;
        private boolean explicitTarget;
        private boolean hasOperation;
        private final MathOptions options;
        private int position;
        private final boolean russian;
        private Character separator;
        private final CharSequence source;
        private final ArrayList<Token> tokens = new ArrayList<>();
        private int base = 10;

        @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[UnitRule.values().length];
                try {
                    iArr[UnitRule.SAME.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[UnitRule.SCALE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[UnitRule.RATIO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[UnitRule.NONE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public Parser(CharSequence charSequence, MathOptions mathOptions) {
            this.source = charSequence;
            this.options = mathOptions;
            boolean z = false;
            for (int i = 0; i < charSequence.length(); i++) {
                char cCharAt = charSequence.charAt(i);
                if ((1072 <= cCharAt && cCharAt < 1104) || ((1040 <= cCharAt && cCharAt < 1072) || cCharAt == 1105 || cCharAt == 1025)) {
                    z = true;
                    break;
                }
            }
            this.russian = z;
        }

        public final MathResult parse() {
            MathUnit mathUnitImplicitTarget;
            tokenize();
            resolveUnits();
            Operand conversion = parseConversion();
            expect(10);
            MathUnit unit = conversion.getUnit();
            boolean z = false;
            if (unit != null) {
                if (unit.getKind() == UnitKind.DURATION) {
                    if (!this.explicitTarget && Measures.INSTANCE.canBreakDown(unit)) {
                        z = true;
                    }
                    if (!this.hasOperation && z) {
                        this.hasOperation = Measures.INSTANCE.breaksDown(conversion.getValue(), unit);
                    }
                } else if (!this.hasOperation && (mathUnitImplicitTarget = implicitTarget(unit, conversion.getValue())) != null) {
                    conversion = convert(conversion, mathUnitImplicitTarget);
                }
            }
            boolean z2 = z;
            if (this.expanded) {
                this.hasOperation = true;
            }
            double value = conversion.getValue();
            boolean z3 = this.hasOperation;
            Character ch = this.separator;
            return new MathResult(value, z3, ch != null ? ch.charValue() : this.options.getDecimalSeparator(), conversion.getUnit(), this.russian, z2, this.options.getGrouping(), this.base);
        }

        private final MathUnit implicitTarget(MathUnit unit, double value) {
            if (unit.getKind() != UnitKind.CURRENCY) {
                return Measures.INSTANCE.implicitTarget(unit, value, this.options.getImperial());
            }
            String localCurrency = this.options.getLocalCurrency();
            if (localCurrency == null) {
                localCurrency = "USD";
            }
            String str = Intrinsics.areEqual(localCurrency, unit.getCode()) ? "USD" : localCurrency;
            if (Intrinsics.areEqual(str, unit.getCode())) {
                return null;
            }
            return Currencies.INSTANCE.unit(str);
        }

        private final void tokenize() {
            int i;
            int i2;
            int number = 0;
            while (number < this.source.length()) {
                char cCharAt = this.source.charAt(number);
                MathExpression mathExpression = MathExpression.INSTANCE;
                if (!mathExpression.isBlank(cCharAt) && cCharAt != 65039) {
                    if (Character.isDigit(cCharAt) || ((cCharAt == '.' || cCharAt == ',') && (i = number + 1) < this.source.length() && Character.isDigit(this.source.charAt(i)))) {
                        number = readNumber(number);
                    } else if (cCharAt == '(') {
                        this.tokens.add(new Token(2, 0.0d, null, null, 14, null));
                    } else if (cCharAt == ')') {
                        this.tokens.add(new Token(3, 0.0d, null, null, 14, null));
                    } else if (cCharAt == ';' || (cCharAt == ',' && ((i2 = number + 1) == this.source.length() || mathExpression.isBlank(this.source.charAt(i2))))) {
                        this.tokens.add(new Token(5, 0.0d, null, null, 14, null));
                    } else if (cCharAt == 176) {
                        number = readTemperature(number);
                    } else if (Character.isLetter(cCharAt)) {
                        int iWordEnd = wordEnd(number);
                        number = addWord(this.source.subSequence(number, iWordEnd).toString(), iWordEnd);
                    } else {
                        MathUnit mathUnitSymbol = null;
                        MathUnit mathUnitSymbol2 = this.options.getUnits() ? Measures.INSTANCE.symbol(cCharAt) : null;
                        if (mathUnitSymbol2 == null) {
                            CurrencyRates rates = this.options.getRates();
                            if (rates != null) {
                                mathUnitSymbol = Currencies.INSTANCE.symbol(cCharAt, rates);
                            }
                        } else {
                            mathUnitSymbol = mathUnitSymbol2;
                        }
                        if (mathUnitSymbol != null) {
                            this.tokens.add(new Token(6, 0.0d, null, CollectionsKt.listOf(mathUnitSymbol), 6, null));
                        } else {
                            String strMatchSymbol = MathOperators.INSTANCE.matchSymbol(this.source, number);
                            if (strMatchSymbol == null) {
                                throw MathExpression.error;
                            }
                            this.tokens.add(new Token(1, 0.0d, strMatchSymbol, null, 10, null));
                            number += strMatchSymbol.length();
                        }
                    }
                }
                number++;
            }
            this.tokens.add(new Token(10, 0.0d, null, null, 14, null));
        }

        private final void resolveUnits() {
            Object next;
            HashSet hashSet = new HashSet();
            for (Token token : this.tokens) {
                if (token.getType() == 6 && token.getUnits().size() == 1) {
                    hashSet.add(token.getUnits().get(0).getKind());
                }
            }
            for (Token token2 : this.tokens) {
                if (token2.getType() == 6 && token2.getUnits().size() > 1) {
                    Iterator<T> it = token2.getUnits().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            next = it.next();
                            if (hashSet.contains(((MathUnit) next).getKind())) {
                                break;
                            }
                        } else {
                            next = null;
                            break;
                        }
                    }
                    MathUnit mathUnit = (MathUnit) next;
                    if (mathUnit == null) {
                        mathUnit = token2.getUnits().get(0);
                    }
                    token2.setUnit(mathUnit);
                }
            }
        }

        private final int wordEnd(int from) {
            while (from < this.source.length() && MathExpression.INSTANCE.isWordChar(this.source.charAt(from))) {
                from++;
            }
            return from;
        }

        private final int skipBlanks(int from) {
            while (from < this.source.length() && MathExpression.INSTANCE.isBlank(this.source.charAt(from))) {
                from++;
            }
            return from;
        }

        private final int readTemperature(int from) {
            int i;
            if (!this.options.getUnits()) {
                throw MathExpression.error;
            }
            int iSkipBlanks = skipBlanks(from + 1);
            if (iSkipBlanks >= this.source.length() || ((i = iSkipBlanks + 1) < this.source.length() && MathExpression.INSTANCE.isWordChar(this.source.charAt(i)))) {
                throw MathExpression.error;
            }
            MathUnit mathUnitTemperature = Measures.INSTANCE.temperature(this.source.charAt(iSkipBlanks));
            if (mathUnitTemperature == null) {
                throw MathExpression.error;
            }
            this.tokens.add(new Token(6, 0.0d, null, CollectionsKt.listOf(mathUnitTemperature), 6, null));
            return i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final int addWord(String word, int end) {
            int i;
            MathUnit mathUnitWord;
            MathUnit mathUnitWord2;
            int compound;
            String lowerCase = word.toLowerCase(Locale.ROOT);
            MathOperators mathOperators = MathOperators.INSTANCE;
            if (mathOperators.getPercentOf().contains(lowerCase)) {
                this.tokens.add(new Token(8, 0.0d, null, null, 14, null));
                return end;
            }
            CurrencyRates rates = this.options.getRates();
            Currencies currencies = Currencies.INSTANCE;
            if (currencies.isConversion(word)) {
                this.tokens.add(new Token(7, 0.0d, null, null, 14, null));
                return end;
            }
            int iSkipBlanks = skipBlanks(end);
            Object[] objArr = iSkipBlanks < this.source.length() && this.source.charAt(iSkipBlanks) == '(';
            if (objArr != false && Intrinsics.areEqual(lowerCase, "dec")) {
                this.tokens.add(new Token(4, 0.0d, lowerCase, null, 10, null));
                this.tokens.add(new Token(2, 0.0d, null, null, 14, 0 == true ? 1 : 0));
                int iSkipBlanks2 = skipBlanks(iSkipBlanks + 1);
                int iWordEnd = wordEnd(iSkipBlanks2);
                if (iWordEnd > iSkipBlanks2) {
                    this.tokens.add(new Token(9, 0.0d, this.source.subSequence(iSkipBlanks2, iWordEnd).toString(), null, 10, null));
                }
                return iWordEnd;
            }
            if (objArr == false) {
                if (this.options.getUnits() && (compound = readCompound(word, end)) >= 0) {
                    return compound;
                }
                boolean z = mathOperators.getConstants().containsKey(lowerCase) || mathOperators.getBases().containsKey(lowerCase) || mathOperators.functionFor(lowerCase) != null;
                ArrayList arrayList = new ArrayList(2);
                if (rates != null && !z && (mathUnitWord2 = currencies.word(word, rates)) != null) {
                    arrayList.add(mathUnitWord2);
                }
                if (this.options.getUnits() && (mathUnitWord = Measures.INSTANCE.word(word)) != null) {
                    arrayList.add(mathUnitWord);
                }
                if (!arrayList.isEmpty()) {
                    this.tokens.add(new Token(6, 0.0d, null, arrayList, 6, null));
                    return (end >= this.source.length() || this.source.charAt(end) != '.' || ((i = end + 1) != this.source.length() && Character.isDigit(this.source.charAt(i)))) ? end : end + 1;
                }
            }
            this.tokens.add(new Token(4, 0.0d, lowerCase, null, 10, null));
            return end;
        }

        private final int readCompound(String first, int end) {
            boolean z = end < this.source.length() && this.source.charAt(end) == '/';
            int iSkipBlanks = z ? end + 1 : skipBlanks(end);
            if (iSkipBlanks >= this.source.length() || !Character.isLetter(this.source.charAt(iSkipBlanks)) || (!z && iSkipBlanks == end)) {
                return -1;
            }
            int iWordEnd = wordEnd(iSkipBlanks);
            MathUnit mathUnitCompound = Measures.INSTANCE.compound(first, z ? '/' : ' ', this.source.subSequence(iSkipBlanks, iWordEnd).toString());
            if (mathUnitCompound == null) {
                return -1;
            }
            this.tokens.add(new Token(6, 0.0d, null, CollectionsKt.listOf(mathUnitCompound), 6, null));
            return iWordEnd;
        }

        private final int readNumber(int from) {
            int iScanNumber;
            int i;
            boolean z = false;
            int iRadixFor = (this.source.charAt(from) != '0' || from + 2 >= this.source.length()) ? 0 : MathOperators.INSTANCE.radixFor(this.source.charAt(from + 1));
            if (iRadixFor != 0) {
                int i2 = from + 2;
                if (Character.digit(this.source.charAt(i2), iRadixFor) >= 0) {
                    int iWordEnd = wordEnd(i2);
                    this.tokens.add(new Token(0, parseDigits(this.source.subSequence(i2, iWordEnd).toString(), iRadixFor), null, null, 12, null));
                    this.expanded = true;
                    return iWordEnd;
                }
            }
            int iScanNumber2 = scanNumber(from, false);
            if ((this.options.getRates() != null || this.options.getUnits()) && (iScanNumber = scanNumber(from, true)) > iScanNumber2 && isAmountAt(iScanNumber)) {
                iScanNumber2 = iScanNumber;
            }
            StringBuilder sb = new StringBuilder(iScanNumber2 - from);
            while (true) {
                if (from >= iScanNumber2) {
                    break;
                }
                char cCharAt = this.source.charAt(from);
                if (!MathExpression.INSTANCE.isBlank(cCharAt)) {
                    sb.append(cCharAt != ',' ? cCharAt : '.');
                }
                from++;
            }
            Double doubleOrNull = StringsKt.toDoubleOrNull(sb.toString());
            if (doubleOrNull == null) {
                throw MathExpression.error;
            }
            double dDoubleValue = doubleOrNull.doubleValue();
            if (iScanNumber2 < this.source.length() && Character.isLetter(this.source.charAt(iScanNumber2))) {
                z = true;
            }
            int iSkipBlanks = z ? iScanNumber2 : skipBlanks(iScanNumber2);
            if ((iSkipBlanks > iScanNumber2 || z) && iSkipBlanks < this.source.length() && Character.isLetter(this.source.charAt(iSkipBlanks))) {
                int iWordEnd2 = wordEnd(iSkipBlanks);
                String lowerCase = this.source.subSequence(iSkipBlanks, iWordEnd2).toString().toLowerCase(Locale.ROOT);
                MathOperators mathOperators = MathOperators.INSTANCE;
                Double d = mathOperators.getMultipliers().get(lowerCase);
                if (d != null && (z || !mathOperators.getGluedMultipliers().contains(lowerCase))) {
                    dDoubleValue *= d.doubleValue();
                    this.expanded = true;
                    iScanNumber2 = (iWordEnd2 >= this.source.length() || this.source.charAt(iWordEnd2) != '.' || ((i = iWordEnd2 + 1) != this.source.length() && Character.isDigit(this.source.charAt(i)))) ? iWordEnd2 : i;
                }
            }
            this.tokens.add(new Token(0, dDoubleValue, null, null, 12, null));
            return iScanNumber2;
        }

        private final int scanNumber(int from, boolean grouping) {
            int i;
            int i2;
            int i3 = from;
            while (i3 < this.source.length() && Character.isDigit(this.source.charAt(i3))) {
                i3++;
            }
            int i4 = i3 - from;
            if (1 <= i4 && i4 < 4) {
                while (i3 + 3 < this.source.length() && isGroupSeparator(this.source.charAt(i3), grouping) && isDigitGroup(i3 + 1)) {
                    i3 += 4;
                    i4 += 3;
                }
            }
            char cCharAt = i3 < this.source.length() ? this.source.charAt(i3) : ' ';
            if ((cCharAt == '.' || cCharAt == ',') && (i = i3 + 1) < this.source.length() && Character.isDigit(this.source.charAt(i))) {
                i3 = i;
                while (i3 < this.source.length() && Character.isDigit(this.source.charAt(i3))) {
                    i3++;
                }
                i2 = i3 - i;
                if (cCharAt == ',' && i2 == 3 && 1 <= i4 && i4 < 4 && this.source.charAt(from) != '0') {
                    throw MathExpression.error;
                }
                if (this.separator == null) {
                    this.separator = Character.valueOf(cCharAt);
                }
            } else {
                i2 = 0;
            }
            if (i4 == 0 && i2 == 0) {
                throw MathExpression.error;
            }
            return i3;
        }

        private final boolean isGroupSeparator(char c2, boolean spaces) {
            if (c2 != 160) {
                return spaces && MathExpression.INSTANCE.isBlank(c2);
            }
            return true;
        }

        private final boolean isAmountAt(int end) {
            Token token = (Token) CollectionsKt.lastOrNull((List) this.tokens);
            if (token != null && token.getType() == 6) {
                return true;
            }
            int iSkipBlanks = skipBlanks(end);
            if (iSkipBlanks == this.source.length()) {
                return false;
            }
            char cCharAt = this.source.charAt(iSkipBlanks);
            CurrencyRates rates = this.options.getRates();
            if ((rates != null ? Currencies.INSTANCE.symbol(cCharAt, rates) : null) == null && (!this.options.getUnits() || (cCharAt != 176 && Measures.INSTANCE.symbol(cCharAt) == null))) {
                if (!Character.isLetter(cCharAt)) {
                    return false;
                }
                String string = this.source.subSequence(iSkipBlanks, wordEnd(iSkipBlanks)).toString();
                CurrencyRates rates2 = this.options.getRates();
                if ((rates2 != null ? Currencies.INSTANCE.word(string, rates2) : null) == null && (!this.options.getUnits() || Measures.INSTANCE.word(string) == null)) {
                    return false;
                }
            }
            return true;
        }

        private final boolean isDigitGroup(int at) {
            if (!Character.isDigit(this.source.charAt(at)) || !Character.isDigit(this.source.charAt(at + 1)) || !Character.isDigit(this.source.charAt(at + 2))) {
                return false;
            }
            int i = at + 3;
            return i == this.source.length() || !Character.isDigit(this.source.charAt(i));
        }

        private final Token peek() {
            return this.tokens.get(this.position);
        }

        private final Token next() {
            ArrayList<Token> arrayList = this.tokens;
            int i = this.position;
            this.position = i + 1;
            return arrayList.get(i);
        }

        private final Token expect(int type) {
            Token next = next();
            if (next.getType() == type) {
                return next;
            }
            throw MathExpression.error;
        }

        private final Operand parseExpression(int minPrecedence) {
            InfixOperator infixOperatorInfixFor;
            int i = this.depth + 1;
            this.depth = i;
            if (i > 32) {
                throw MathExpression.error;
            }
            try {
                Operand unary = parseUnary();
                while (true) {
                    Token tokenPeek = peek();
                    if (tokenPeek.getType() == 8) {
                        if (!unary.getIsPercent() || 20 < minPrecedence) {
                            break;
                        }
                        next();
                        Operand expression = parseExpression(21);
                        if (expression.getIsPercent()) {
                            throw MathExpression.error;
                        }
                        this.hasOperation = true;
                        unary = new Operand(unary.getValue() * expression.getValue(), false, expression.getUnit());
                    } else {
                        if (tokenPeek.getType() != 1 || (infixOperatorInfixFor = MathOperators.INSTANCE.infixFor(tokenPeek.getText())) == null || infixOperatorInfixFor.getPrecedence() < minPrecedence) {
                            break;
                        }
                        next();
                        Operand expression2 = parseExpression(infixOperatorInfixFor.getRightAssociative() ? infixOperatorInfixFor.getPrecedence() : infixOperatorInfixFor.getPrecedence() + 1);
                        this.hasOperation = true;
                        unary = combine(infixOperatorInfixFor, unary, expression2);
                    }
                }
                return unary;
            } finally {
                this.depth--;
            }
        }

        private final Operand parseConversion() {
            Operand expression = parseExpression(0);
            while (peek().getType() == 7) {
                next();
                Token next = next();
                Integer num = next.getType() == 4 ? MathOperators.INSTANCE.getBases().get(next.getText()) : null;
                if (num != null) {
                    if (expression.getUnit() != null || peek().getType() != 10) {
                        throw MathExpression.error;
                    }
                    this.base = num.intValue();
                    this.hasOperation = true;
                } else {
                    if (next.getType() != 6) {
                        throw MathExpression.error;
                    }
                    MathUnit unit = next.getUnit();
                    if (unit == null) {
                        throw MathExpression.error;
                    }
                    expression = convert(expression, unit);
                    this.explicitTarget = true;
                }
            }
            return expression;
        }

        private final Operand convert(Operand operand, MathUnit target) {
            MathUnit unit = operand.getUnit();
            if (unit == null) {
                throw MathExpression.error;
            }
            this.hasOperation = true;
            return new Operand(convertValue(operand.getValue(), unit, target), false, target);
        }

        private final double convertValue(double value, MathUnit from, MathUnit to) {
            Double dRate;
            if (Intrinsics.areEqual(from.getCode(), to.getCode())) {
                return value;
            }
            if (from.getKind() != to.getKind()) {
                throw MathExpression.error;
            }
            if (from.getKind() == UnitKind.CURRENCY) {
                CurrencyRates rates = this.options.getRates();
                if (rates == null || (dRate = rates.rate(from.getCode(), to.getCode())) == null) {
                    throw MathExpression.error;
                }
                return value * dRate.doubleValue();
            }
            return to.fromBase(from.toBase(value));
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x007e A[PHI: r2
  0x007e: PHI (r2v3 double) = (r2v1 double), (r2v0 double) binds: [B:35:0x0088, B:30:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final Operand combine(InfixOperator operator, Operand left, Operand right) {
            MathUnit unit = left.getUnit();
            MathUnit unit2 = right.getUnit();
            if (unit == null && unit2 == null) {
                return new Operand(operator.getApply().invoke(Double.valueOf(left.getValue()), Double.valueOf(right.getValue()), Boolean.valueOf(right.getIsPercent())).doubleValue(), false, null, 4, null);
            }
            double value = right.getValue();
            int i = WhenMappings.$EnumSwitchMapping$0[operator.getUnits().ordinal()];
            if (i == 1) {
                if (unit != null && unit2 != null) {
                    value = convertValue(value, unit2, unit);
                }
                if (unit == null) {
                }
            } else if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        throw MathExpression.error;
                    }
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                    return null;
                }
                if (unit == null) {
                    throw MathExpression.error;
                }
                if (unit2 != null) {
                    value = convertValue(value, unit2, unit);
                    unit = null;
                }
            } else {
                if (unit != null && unit2 != null) {
                    throw MathExpression.error;
                }
                if (unit == null) {
                    unit = unit2;
                }
            }
            return new Operand(operator.getApply().invoke(Double.valueOf(left.getValue()), Double.valueOf(value), Boolean.valueOf(right.getIsPercent())).doubleValue(), false, unit);
        }

        private final Operand parseUnary() {
            PrefixOperator prefixOperatorPrefixFor;
            Token tokenPeek = peek();
            if (tokenPeek.getType() == 6) {
                MathUnit unit = tokenPeek.getUnit();
                if (unit == null) {
                    throw MathExpression.error;
                }
                if (unit.getKind() != UnitKind.CURRENCY) {
                    throw MathExpression.error;
                }
                next();
                Operand postfix = parsePostfix();
                if (postfix.getUnit() != null || postfix.getIsPercent()) {
                    throw MathExpression.error;
                }
                return new Operand(postfix.getValue(), false, unit);
            }
            if (tokenPeek.getType() == 1 && (prefixOperatorPrefixFor = MathOperators.INSTANCE.prefixFor(tokenPeek.getText())) != null) {
                next();
                Operand expression = parseExpression(prefixOperatorPrefixFor.getPrecedence());
                if (prefixOperatorPrefixFor.getOperation()) {
                    if (expression.getUnit() != null) {
                        throw MathExpression.error;
                    }
                    this.hasOperation = true;
                }
                return new Operand(prefixOperatorPrefixFor.getApply().invoke(Double.valueOf(expression.getValue())).doubleValue(), expression.getIsPercent(), expression.getUnit());
            }
            return parsePostfix();
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        
            return new com.exteragram.messenger.inline.math.MathExpression.Operand(r1, r3, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        
            throw com.exteragram.messenger.inline.math.MathExpression.error;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final Operand parsePostfix() {
            PostfixOperator postfixOperatorPostfixFor;
            Operand primary = parsePrimary();
            double value = primary.getValue();
            MathUnit unit = primary.getUnit();
            boolean percent = false;
            while (true) {
                Token tokenPeek = peek();
                if (tokenPeek.getType() != 6) {
                    if (tokenPeek.getType() != 1 || (postfixOperatorPostfixFor = MathOperators.INSTANCE.postfixFor(tokenPeek.getText())) == null) {
                        break;
                    }
                    if (unit != null) {
                        throw MathExpression.error;
                    }
                    next();
                    value = postfixOperatorPostfixFor.getApply().invoke(Double.valueOf(value)).doubleValue();
                    this.hasOperation = true;
                    percent = postfixOperatorPostfixFor.getPercent();
                } else {
                    if (unit != null || percent) {
                        break;
                    }
                    next();
                    unit = tokenPeek.getUnit();
                }
            }
        }

        private final Operand parsePrimary() {
            Token next = next();
            int type = next.getType();
            if (type == 0) {
                return new Operand(next.getNumber(), false, null, 4, null);
            }
            if (type == 2) {
                Operand conversion = parseConversion();
                expect(3);
                return new Operand(conversion.getValue(), false, conversion.getUnit());
            }
            if (type != 4) {
                throw MathExpression.error;
            }
            return new Operand(parseIdentifier(next.getText()), false, null, 4, null);
        }

        private final double parseIdentifier(String name) {
            MathOperators mathOperators = MathOperators.INSTANCE;
            Double d = mathOperators.getConstants().get(name);
            if (d != null) {
                return d.doubleValue();
            }
            Integer num = mathOperators.getBases().get(name);
            if (num != null) {
                return parseBase(name, num.intValue());
            }
            MathFunction mathFunctionFunctionFor = mathOperators.functionFor(name);
            if (mathFunctionFunctionFor == null) {
                throw MathExpression.error;
            }
            expect(2);
            ArrayList arrayList = new ArrayList(2);
            if (peek().getType() != 3) {
                arrayList.add(Double.valueOf(parseArgument()));
                while (peek().getType() == 5) {
                    next();
                    arrayList.add(Double.valueOf(parseArgument()));
                }
            }
            expect(3);
            IntRange arity = mathFunctionFunctionFor.getArity();
            int first = arity.getFirst();
            int last = arity.getLast();
            int size = arrayList.size();
            if (first > size || size > last) {
                throw MathExpression.error;
            }
            this.hasOperation = true;
            double[] doubleArray = CollectionsKt.toDoubleArray(arrayList);
            boolean z = this.options.getDegrees() && mathFunctionFunctionFor.getAngle() != AngleUse.NONE;
            if (z && mathFunctionFunctionFor.getAngle() == AngleUse.ARGUMENT) {
                int length = doubleArray.length;
                for (int i = 0; i < length; i++) {
                    doubleArray[i] = Math.toRadians(doubleArray[i]);
                }
            }
            double dDoubleValue = mathFunctionFunctionFor.getApply().invoke(doubleArray).doubleValue();
            if (mathFunctionFunctionFor.getAngle() != AngleUse.ARGUMENT || Math.abs(dDoubleValue) >= 1.0E-12d) {
                return (z && mathFunctionFunctionFor.getAngle() == AngleUse.RESULT) ? Math.toDegrees(dDoubleValue) : dDoubleValue;
            }
            return 0.0d;
        }

        private final double parseBase(String name, int radix) {
            double argument;
            int i;
            int iRadixFor = 0;
            boolean z = this.position == 1;
            expect(2);
            if (Intrinsics.areEqual(name, "dec")) {
                String text = expect(9).getText();
                if (peek().getType() == 5) {
                    next();
                    double argument2 = parseArgument();
                    if (argument2 != Math.floor(argument2) || 2 > (i = (int) argument2) || i >= 37) {
                        throw MathExpression.error;
                    }
                    argument = parseDigits(MathOperators.INSTANCE.stripRadixPrefix(text, i), i);
                } else {
                    if (text.length() > 2 && text.charAt(0) == '0') {
                        iRadixFor = MathOperators.INSTANCE.radixFor(text.charAt(1));
                    }
                    argument = iRadixFor != 0 ? parseDigits(text.substring(2), iRadixFor) : parseDigits(text, 10);
                }
            } else {
                argument = parseArgument();
            }
            expect(3);
            if (!Intrinsics.areEqual(name, "dec")) {
                if (!z || peek().getType() != 10) {
                    throw MathExpression.error;
                }
                this.base = radix;
            }
            this.hasOperation = true;
            return argument;
        }

        private final double parseDigits(String digits, int radix) {
            if (digits.length() == 0) {
                throw MathExpression.error;
            }
            int length = digits.length();
            long j = 0;
            for (int i = 0; i < length; i++) {
                int iDigit = Character.digit(digits.charAt(i), radix);
                if (iDigit < 0) {
                    throw MathExpression.error;
                }
                j = (j * ((long) radix)) + ((long) iDigit);
                if (j > 9007199254740992L) {
                    throw MathExpression.error;
                }
            }
            return j;
        }

        private final double parseArgument() {
            Operand expression = parseExpression(0);
            if (expression.getUnit() != null) {
                throw MathExpression.error;
            }
            return expression.getValue();
        }
    }
}
