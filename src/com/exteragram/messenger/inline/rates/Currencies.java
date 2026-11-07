package com.exteragram.messenger.inline.rates;

import com.exteragram.messenger.inline.math.MathUnit;
import java.util.ArrayList;
import java.util.Currency;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\b\u001a\u0004\u0018\u00010\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\b\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001fR \u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001bR\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00020\f0\u001d8\u0006¢\u0006\f\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/exteragram/messenger/inline/rates/Currencies;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "code", "label", "(Ljava/lang/String;)Ljava/lang/String;", "word", _UrlKt.FRAGMENT_ENCODE_SET, "isConversion", "(Ljava/lang/String;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "c", "Lcom/exteragram/messenger/inline/rates/CurrencyRates;", "rates", "Lcom/exteragram/messenger/inline/math/MathUnit;", "symbol", "(CLcom/exteragram/messenger/inline/rates/CurrencyRates;)Lcom/exteragram/messenger/inline/math/MathUnit;", "(Ljava/lang/String;Lcom/exteragram/messenger/inline/rates/CurrencyRates;)Lcom/exteragram/messenger/inline/math/MathUnit;", "unit", "(Ljava/lang/String;)Lcom/exteragram/messenger/inline/math/MathUnit;", _UrlKt.FRAGMENT_ENCODE_SET, "fractionDigits", "(Ljava/lang/String;)I", _UrlKt.FRAGMENT_ENCODE_SET, "symbols", "Ljava/util/Map;", "labels", _UrlKt.FRAGMENT_ENCODE_SET, "lowercaseCodes", "Ljava/util/Set;", "conversions", "words", "symbolChars", "getSymbolChars", "()Ljava/util/Set;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCurrencies.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Currencies.kt\ncom/exteragram/messenger/inline/rates/Currencies\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1088#2,2:137\n14048#3,2:139\n777#4:141\n873#4,2:142\n1205#4,2:144\n1282#4,4:146\n*S KotlinDebug\n*F\n+ 1 Currencies.kt\ncom/exteragram/messenger/inline/rates/Currencies\n*L\n116#1:137,2\n62#1:139,2\n50#1:141\n50#1:142,2\n51#1:144,2\n51#1:146,4\n*E\n"})
public final class Currencies {
    public static final Currencies INSTANCE = new Currencies();
    private static final Set<String> conversions;
    private static final Map<String, String> labels;
    private static final Set<String> lowercaseCodes;
    private static final Set<Character> symbolChars;
    private static final Map<Character, String> symbols;
    private static final Map<String, String> words;

    private Currencies() {
    }

    static {
        char c2;
        String str = "BTC";
        char c3 = 9733;
        Map<Character, String> mapMapOf = MapsKt.mapOf(TuplesKt.to(Character.valueOf(Typography.dollar), "USD"), TuplesKt.to(Character.valueOf(Typography.euro), "EUR"), TuplesKt.to((char) 8381, "RUB"), TuplesKt.to(Character.valueOf(Typography.pound), "GBP"), TuplesKt.to((char) 165, "JPY"), TuplesKt.to((char) 8376, "KZT"), TuplesKt.to((char) 8372, "UAH"), TuplesKt.to((char) 8378, "TRY"), TuplesKt.to((char) 8377, "INR"), TuplesKt.to((char) 8362, "ILS"), TuplesKt.to((char) 8361, "KRW"), TuplesKt.to((char) 8382, "GEL"), TuplesKt.to((char) 8380, "AZN"), TuplesKt.to((char) 1423, "AMD"), TuplesKt.to((char) 8363, "VND"), TuplesKt.to((char) 3647, "THB"), TuplesKt.to((char) 8369, "PHP"), TuplesKt.to((char) 8358, "NGN"), TuplesKt.to((char) 8383, "BTC"), TuplesKt.to((char) 11088, "XTR"), TuplesKt.to((char) 9733, "XTR"));
        symbols = mapMapOf;
        Set<Map.Entry<Character, String>> setEntrySet = mapMapOf.entrySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setEntrySet) {
            Map.Entry entry = (Map.Entry) obj;
            String str2 = str;
            if (Intrinsics.areEqual(entry.getValue(), str2)) {
                c2 = c3;
            } else {
                c2 = c3;
                if (((Character) entry.getKey()).charValue() != c2) {
                    arrayList.add(obj);
                }
            }
            c3 = c2;
            str = str2;
        }
        String str3 = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList, 10)), 16));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            Map.Entry entry2 = (Map.Entry) obj2;
            Pair pair = TuplesKt.to(entry2.getValue(), String.valueOf(((Character) entry2.getKey()).charValue()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        labels = linkedHashMap;
        lowercaseCodes = SetsKt.setOf((Object[]) new String[]{"usd", "eur", "rub", "gbp", "kzt", "uah", "byn", "cny", "jpy", "pln", "czk", "aed", "inr", "ils", "chf", "cad", "aud", "uzs", "kgs", "azn", "krw", "thb", "vnd", "sgd", "hkd", "brl", "mxn", "sek", "huf", "btc", "eth", "usdt", "xtr"});
        conversions = SetsKt.setOf((Object[]) new String[]{"в", "to", "in"});
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        words$lambda$3$add(mapCreateMapBuilder, "USD", "доллар", "доллара", "долларов", "доллары", "долларах", "долл", "бакс", "бакса", "баксов", "баксы", "баксах", "dollar", "dollars", "buck", "bucks");
        words$lambda$3$add(mapCreateMapBuilder, "EUR", "евро", "euro", "euros");
        words$lambda$3$add(mapCreateMapBuilder, "RUB", "рубль", "рубля", "рублей", "рубли", "рублях", "руб", "р", "ruble", "rubles", "rouble", "roubles");
        words$lambda$3$add(mapCreateMapBuilder, "GBP", "фунт", "фунта", "фунтов", "фунты", "фунтах");
        words$lambda$3$add(mapCreateMapBuilder, "KZT", "тенге", "tenge");
        words$lambda$3$add(mapCreateMapBuilder, "UAH", "гривна", "гривны", "гривен", "гривнах", "грн", "hryvnia", "hryvnias");
        words$lambda$3$add(mapCreateMapBuilder, "CNY", "юань", "юаня", "юаней", "юани", "юанях", "yuan");
        words$lambda$3$add(mapCreateMapBuilder, "JPY", "иена", "иены", "иен", "иенах", "йена", "йены", "йен", "йенах", "yen");
        words$lambda$3$add(mapCreateMapBuilder, "TRY", "лира", "лиры", "лир", "лирах", "lira", "liras");
        words$lambda$3$add(mapCreateMapBuilder, "PLN", "злотый", "злотого", "злотых", "злотые", "zloty", "zlotys", "zł");
        words$lambda$3$add(mapCreateMapBuilder, "CZK", "kč");
        words$lambda$3$add(mapCreateMapBuilder, "INR", "рупия", "рупии", "рупий", "рупиях", "rupee", "rupees");
        words$lambda$3$add(mapCreateMapBuilder, "ILS", "шекель", "шекеля", "шекелей", "шекели", "шекелях", "shekel", "shekels");
        words$lambda$3$add(mapCreateMapBuilder, "CHF", "франк", "франка", "франков", "франки", "франках", "franc", "francs");
        words$lambda$3$add(mapCreateMapBuilder, "AED", "дирхам", "дирхама", "дирхамов", "дирхамы", "дирхамах", "dirham", "dirhams");
        words$lambda$3$add(mapCreateMapBuilder, "THB", "бат", "бата", "батов", "баты", "батах", "baht");
        words$lambda$3$add(mapCreateMapBuilder, "GEL", "лари", "lari");
        words$lambda$3$add(mapCreateMapBuilder, "AMD", "драм", "драмов", "драмы", "драмах", "dram", "drams");
        words$lambda$3$add(mapCreateMapBuilder, "UZS", "сум", "сумов", "сумы", "сумах");
        words$lambda$3$add(mapCreateMapBuilder, "KGS", "сом", "сомов", "сомах", "som");
        words$lambda$3$add(mapCreateMapBuilder, str3, "биткоин", "биткоина", "биткоинов", "биткоины", "биткоинах", "биткойн", "биткойна", "биткойнов", "биткойны", "биткойнах", "bitcoin", "bitcoins");
        words$lambda$3$add(mapCreateMapBuilder, "ETH", "эфириум", "эфириума", "эфириумов", "эфириумах", "ethereum", "ether");
        words$lambda$3$add(mapCreateMapBuilder, "GRAM", "gram", "grams", "грам", "грама", "грамов", "грамы", "грамах", "ton", "тон", "тона", "тонов", "тонах", "toncoin", "toncoins", "тонкоин", "тонкоина", "тонкоинов");
        words$lambda$3$add(mapCreateMapBuilder, "USDT", "tether");
        words$lambda$3$add(mapCreateMapBuilder, "XTR", "звезда", "звезды", "звёзды", "звезд", "звёзд", "звездах", "звёздах", "звездами", "звёздами", "звезду", "star", "stars");
        words = MapsKt.build(mapCreateMapBuilder);
        symbolChars = symbols.keySet();
    }

    public final Set<Character> getSymbolChars() {
        return symbolChars;
    }

    public final boolean isConversion(String word) {
        return conversions.contains(word.toLowerCase(Locale.ROOT));
    }

    public final MathUnit symbol(char c2, CurrencyRates rates) {
        String str = symbols.get(Character.valueOf(c2));
        if (str != null && rates.supports(str)) {
            return new MathUnit(str, Intrinsics.areEqual(str, "XTR") ? label(str) : String.valueOf(c2), null, 0.0d, 0.0d, null, 60, null);
        }
        return null;
    }

    public final MathUnit word(String word, CurrencyRates rates) {
        CurrencyRates currencyRates;
        String str;
        String upperCase = word;
        String lowerCase = upperCase.toLowerCase(Locale.ROOT);
        String str2 = words.get(lowerCase);
        if (str2 == null) {
            for (int i = 0; i < upperCase.length(); i++) {
                char cCharAt = upperCase.charAt(i);
                if ('A' > cCharAt || cCharAt >= '[') {
                    if (!lowercaseCodes.contains(lowerCase)) {
                        return null;
                    }
                    upperCase = lowerCase.toUpperCase(Locale.ROOT);
                    str = upperCase;
                    currencyRates = rates;
                }
            }
            str = upperCase;
            currencyRates = rates;
        } else {
            currencyRates = rates;
            str = str2;
        }
        if (currencyRates.supports(str)) {
            return new MathUnit(str, str2 != null ? label(str) : str, null, 0.0d, 0.0d, null, 60, null);
        }
        return null;
    }

    public final MathUnit unit(String code) {
        return new MathUnit(code, label(code), null, 0.0d, 0.0d, null, 60, null);
    }

    public final int fractionDigits(String code) {
        if (Intrinsics.areEqual(code, "XTR")) {
            return 0;
        }
        try {
            return Currency.getInstance(code).getDefaultFractionDigits();
        } catch (IllegalArgumentException unused) {
            return -1;
        }
    }

    private final String label(String code) {
        String str = labels.get(code);
        return str == null ? code : str;
    }

    private static final void words$lambda$3$add(Map<String, String> map, String str, String... strArr) {
        for (String str2 : strArr) {
            map.put(str2, str);
        }
    }
}
