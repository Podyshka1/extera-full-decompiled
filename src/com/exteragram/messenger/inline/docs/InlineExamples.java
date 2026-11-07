package com.exteragram.messenger.inline.docs;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000eR\u0017\u0010\u0011\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000eR\u0017\u0010\u0013\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\f\u001a\u0004\b\u0014\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\f\u001a\u0004\b\u0016\u0010\u000eR\u0017\u0010\u0017\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0018\u0010\u000eR\u0017\u0010\u0019\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\f\u001a\u0004\b\u001a\u0010\u000eR\u0017\u0010\u001b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\f\u001a\u0004\b\u001c\u0010\u000eR\u0017\u0010\u001d\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000eR\u0017\u0010\u001f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u001f\u0010\f\u001a\u0004\b \u0010\u000eR\u0017\u0010!\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b!\u0010\f\u001a\u0004\b\"\u0010\u000eR\u0017\u0010#\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b#\u0010\f\u001a\u0004\b$\u0010\u000eR\u001d\u0010%\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0006¢\u0006\f\n\u0004\b%\u0010\u0007\u001a\u0004\b&\u0010\t¨\u0006'"}, d2 = {"Lcom/exteragram/messenger/inline/docs/InlineExamples;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "functions", "Ljava/util/List;", "getFunctions", "()Ljava/util/List;", "Lcom/exteragram/messenger/inline/docs/InlineExampleGroup;", "arithmetic", "Lcom/exteragram/messenger/inline/docs/InlineExampleGroup;", "getArithmetic", "()Lcom/exteragram/messenger/inline/docs/InlineExampleGroup;", "arithmeticFunctions", "getArithmeticFunctions", "bases", "getBases", "percentages", "getPercentages", "shorthands", "getShorthands", "currencyDefault", "getCurrencyDefault", "currencyTarget", "getCurrencyTarget", "unitsDefault", "getUnitsDefault", "unitsTarget", "getUnitsTarget", "durations", "getDurations", "timeZones", "getTimeZones", "currentTime", "getCurrentTime", "all", "getAll", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class InlineExamples {
    private static final List<InlineExampleGroup> all;
    private static final InlineExampleGroup arithmetic;
    private static final InlineExampleGroup arithmeticFunctions;
    private static final InlineExampleGroup bases;
    private static final InlineExampleGroup currencyDefault;
    private static final InlineExampleGroup currencyTarget;
    private static final InlineExampleGroup currentTime;
    private static final InlineExampleGroup durations;
    private static final InlineExampleGroup percentages;
    private static final InlineExampleGroup shorthands;
    private static final InlineExampleGroup timeZones;
    private static final InlineExampleGroup unitsDefault;
    private static final InlineExampleGroup unitsTarget;
    public static final InlineExamples INSTANCE = new InlineExamples();
    private static final List<String> functions = CollectionsKt.listOf((Object[]) new String[]{"round", "min", "max", "abs", "sqrt", "log", "ln", "sin", "cos", "tan", "pi", "e"});

    private InlineExamples() {
    }

    static {
        InlineExampleGroup inlineExampleGroup = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"(120 + 80) / 4 =", "√144 + 2^3 ="}), null, 2, null);
        arithmetic = inlineExampleGroup;
        InlineExampleGroup inlineExampleGroup2 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"max(12, 40, 7) =", "sin(30) ="}), null, 2, null);
        arithmeticFunctions = inlineExampleGroup2;
        InlineExampleGroup inlineExampleGroup3 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"hex(255) =", "dec(ff, 16) =", "0xff + 1 ="}), null, 2, null);
        bases = inlineExampleGroup3;
        InlineExampleGroup inlineExampleGroup4 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"2300 - 15% =", "12% of 1200 ="}), CollectionsKt.listOf((Object[]) new String[]{"2300 - 15% =", "12% от 1200 ="}));
        percentages = inlineExampleGroup4;
        InlineExampleGroup inlineExampleGroup5 = new InlineExampleGroup(CollectionsKt.listOf("300k / 12 ="), CollectionsKt.listOf("300к / 12 ="));
        shorthands = inlineExampleGroup5;
        InlineExampleGroup inlineExampleGroup6 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"100€ =", "500 stars ="}), CollectionsKt.listOf((Object[]) new String[]{"100€ =", "500 звёзд ="}));
        currencyDefault = inlineExampleGroup6;
        InlineExampleGroup inlineExampleGroup7 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"100 dollars to euros =", "5k ₽ to $ =", "50$ to GRAM ="}), CollectionsKt.listOf((Object[]) new String[]{"100 долларов в евро =", "5к ₽ в $ =", "50$ в GRAM ="}));
        currencyTarget = inlineExampleGroup7;
        InlineExampleGroup inlineExampleGroup8 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"72°F =", "10 miles ="}), CollectionsKt.listOf((Object[]) new String[]{"72°F =", "10 миль ="}));
        unitsDefault = inlineExampleGroup8;
        InlineExampleGroup inlineExampleGroup9 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"5 kg to lb =", "100 km/h to mph ="}), CollectionsKt.listOf((Object[]) new String[]{"5 кг в фунтах =", "100 км/ч в mph ="}));
        unitsTarget = inlineExampleGroup9;
        InlineExampleGroup inlineExampleGroup10 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"90 min =", "2 h + 45 min ="}), CollectionsKt.listOf((Object[]) new String[]{"90 мин =", "2 ч + 45 мин ="}));
        durations = inlineExampleGroup10;
        InlineExampleGroup inlineExampleGroup11 = new InlineExampleGroup(CollectionsKt.listOf((Object[]) new String[]{"6pm est =", "12:00 in tokyo ="}), CollectionsKt.listOf((Object[]) new String[]{"18:00 utc =", "12:00 в токио ="}));
        timeZones = inlineExampleGroup11;
        InlineExampleGroup inlineExampleGroup12 = new InlineExampleGroup(CollectionsKt.listOf("now in new york ="), CollectionsKt.listOf("сейчас в нью-йорке ="));
        currentTime = inlineExampleGroup12;
        all = CollectionsKt.listOf((Object[]) new InlineExampleGroup[]{inlineExampleGroup, inlineExampleGroup2, inlineExampleGroup3, inlineExampleGroup4, inlineExampleGroup5, inlineExampleGroup6, inlineExampleGroup7, inlineExampleGroup8, inlineExampleGroup9, inlineExampleGroup10, inlineExampleGroup11, inlineExampleGroup12});
    }

    public final List<String> getFunctions() {
        return functions;
    }

    public final InlineExampleGroup getArithmetic() {
        return arithmetic;
    }

    public final InlineExampleGroup getArithmeticFunctions() {
        return arithmeticFunctions;
    }

    public final InlineExampleGroup getBases() {
        return bases;
    }

    public final InlineExampleGroup getPercentages() {
        return percentages;
    }

    public final InlineExampleGroup getShorthands() {
        return shorthands;
    }

    public final InlineExampleGroup getCurrencyDefault() {
        return currencyDefault;
    }

    public final InlineExampleGroup getCurrencyTarget() {
        return currencyTarget;
    }

    public final InlineExampleGroup getUnitsDefault() {
        return unitsDefault;
    }

    public final InlineExampleGroup getUnitsTarget() {
        return unitsTarget;
    }

    public final InlineExampleGroup getDurations() {
        return durations;
    }

    public final InlineExampleGroup getTimeZones() {
        return timeZones;
    }

    public final InlineExampleGroup getCurrentTime() {
        return currentTime;
    }
}
