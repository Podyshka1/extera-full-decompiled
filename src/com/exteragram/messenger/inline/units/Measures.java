package com.exteragram.messenger.inline.units;

import com.exteragram.messenger.inline.math.MathFormat;
import com.exteragram.messenger.inline.math.MathUnit;
import com.exteragram.messenger.inline.math.UnitKind;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.ImageLoader;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u00016B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u0010\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\b0\u000e\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0018\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000f¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u0015¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u0015¢\u0006\u0004\b\u001e\u0010\u001cJ'\u0010\"\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b$\u0010%J\u001d\u0010&\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020 ¢\u0006\u0004\b*\u0010+R0\u0010.\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00060,j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0006`-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R0\u00100\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0,j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f`-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010/R0\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0,j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f`-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010/R0\u00102\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0,j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f`-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010/R0\u00103\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040,j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0004`-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010/R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\u000f0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105¨\u00067"}, d2 = {"Lcom/exteragram/messenger/inline/units/Measures;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lcom/exteragram/messenger/inline/units/Measures$Ladder;", "ladder", "Lcom/exteragram/messenger/inline/math/MathUnit;", "unit", _UrlKt.FRAGMENT_ENCODE_SET, "base", "rescale", "(Lcom/exteragram/messenger/inline/units/Measures$Ladder;Lcom/exteragram/messenger/inline/math/MathUnit;D)Lcom/exteragram/messenger/inline/math/MathUnit;", "seconds", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Pair;", _UrlKt.FRAGMENT_ENCODE_SET, "parts", "(D)Ljava/util/List;", "word", "(Ljava/lang/String;)Lcom/exteragram/messenger/inline/math/MathUnit;", "first", _UrlKt.FRAGMENT_ENCODE_SET, "separator", "second", "compound", "(Ljava/lang/String;CLjava/lang/String;)Lcom/exteragram/messenger/inline/math/MathUnit;", "scale", "temperature", "(C)Lcom/exteragram/messenger/inline/math/MathUnit;", "c", "symbol", "value", _UrlKt.FRAGMENT_ENCODE_SET, "imperial", "implicitTarget", "(Lcom/exteragram/messenger/inline/math/MathUnit;DZ)Lcom/exteragram/messenger/inline/math/MathUnit;", "canBreakDown", "(Lcom/exteragram/messenger/inline/math/MathUnit;)Z", "breaksDown", "(DLcom/exteragram/messenger/inline/math/MathUnit;)Z", "decimalSeparator", "russian", "formatDuration", "(DCZ)Ljava/lang/String;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "units", "Ljava/util/HashMap;", "words", "counterparts", "compounds", "ladders", "breakdown", "Ljava/util/List;", "Ladder", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMeasures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Measures.kt\ncom/exteragram/messenger/inline/units/Measures\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,292:1\n1#2:293\n1924#3,3:294\n14048#4,2:297\n14048#4,2:299\n*S KotlinDebug\n*F\n+ 1 Measures.kt\ncom/exteragram/messenger/inline/units/Measures\n*L\n262#1:294,3\n54#1:297,2\n184#1:299,2\n*E\n"})
public final class Measures {
    private static final List<String> breakdown;
    private static final HashMap<String, String> compounds;
    private static final HashMap<String, Ladder> ladders;
    public static final Measures INSTANCE = new Measures();
    private static final HashMap<String, MathUnit> units = new HashMap<>();
    private static final HashMap<String, String> words = new HashMap<>();
    private static final HashMap<String, String> counterparts = new HashMap<>();

    private Measures() {
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        compounds = map;
        HashMap<String, Ladder> map2 = new HashMap<>();
        ladders = map2;
        breakdown = CollectionsKt.listOf((Object[]) new String[]{"d", "h", "min", "s"});
        UnitKind unitKind = UnitKind.LENGTH;
        _init_$unit$default("mm", "mm", "мм", unitKind, 0.001d, "in", new String[]{"mm", "мм", "миллиметр", "миллиметра", "миллиметров", "миллиметрах", "millimeter", "millimeters", "millimetre", "millimetres"}, 0.0d, 128, null);
        _init_$unit$default("cm", "cm", "см", unitKind, 0.01d, "in", new String[]{"cm", "см", "сантиметр", "сантиметра", "сантиметров", "сантиметрах", "centimeter", "centimeters", "centimetre", "centimetres"}, 0.0d, 128, null);
        _init_$unit$default("m", "m", "м", unitKind, 1.0d, "ft", new String[]{"m", "м", "метр", "метра", "метров", "метрах", "meter", "meters", "metre", "metres"}, 0.0d, 128, null);
        _init_$unit$default("km", "km", "км", unitKind, 1000.0d, "mi", new String[]{"km", "км", "километр", "километра", "километров", "километрах", "kilometer", "kilometers", "kilometre", "kilometres"}, 0.0d, 128, null);
        _init_$unit$default("in", "in", "in", unitKind, 0.0254d, "cm", new String[]{"inch", "inches", "дюйм", "дюйма", "дюймов", "дюймах"}, 0.0d, 128, null);
        _init_$unit$default("ft", "ft", "ft", unitKind, 0.3048d, "m", new String[]{"ft", "foot", "feet", "фут", "фута", "футов", "футах"}, 0.0d, 128, null);
        _init_$unit$default("yd", "yd", "yd", unitKind, 0.9144d, "m", new String[]{"yd", "yard", "yards", "ярд", "ярда", "ярдов", "ярдах"}, 0.0d, 128, null);
        _init_$unit$default("mi", "mi", "mi", unitKind, 1609.344d, "km", new String[]{"mi", "mile", "miles", "миля", "мили", "миль", "милях"}, 0.0d, 128, null);
        UnitKind unitKind2 = UnitKind.MASS;
        _init_$unit$default("mg", "mg", "мг", unitKind2, 1.0E-6d, null, new String[]{"mg", "мг", "миллиграмм", "миллиграмма", "миллиграммов", "milligram", "milligrams"}, 0.0d, 128, null);
        _init_$unit$default(ImageLoader.AUTOPLAY_FILTER, ImageLoader.AUTOPLAY_FILTER, "г", unitKind2, 0.001d, "oz", new String[]{ImageLoader.AUTOPLAY_FILTER, "г", "гр", "грамм", "грамма", "граммов", "граммах", "gram", "grams", "gramme", "grammes"}, 0.0d, 128, null);
        _init_$unit$default("kg", "kg", "кг", unitKind2, 1.0d, "lb", new String[]{"kg", "кг", "килограмм", "килограмма", "килограммов", "килограммах", "kilogram", "kilograms", "kilo", "kilos"}, 0.0d, 128, null);
        _init_$unit$default("t", "t", "т", unitKind2, 1000.0d, "lb", new String[]{"t", "т", "тонна", "тонны", "тонн", "тоннах", "tonne", "tonnes"}, 0.0d, 128, null);
        _init_$unit$default("oz", "oz", "oz", unitKind2, 0.028349523125d, ImageLoader.AUTOPLAY_FILTER, new String[]{"oz", "ounce", "ounces", "унция", "унции", "унций", "унциях"}, 0.0d, 128, null);
        _init_$unit$default("lb", "lb", "lb", unitKind2, 0.45359237d, "kg", new String[]{"lb", "lbs", "pound", "pounds", "фунт", "фунта", "фунтов", "фунтах"}, 0.0d, 128, null);
        UnitKind unitKind3 = UnitKind.VOLUME;
        _init_$unit$default("ml", "ml", "мл", unitKind3, 0.001d, "floz", new String[]{"ml", "мл", "миллилитр", "миллилитра", "миллилитров", "миллилитрах", "milliliter", "milliliters", "millilitre", "millilitres"}, 0.0d, 128, null);
        _init_$unit$default("l", "l", "л", unitKind3, 1.0d, "gal", new String[]{"l", "л", "литр", "литра", "литров", "литрах", "liter", "liters", "litre", "litres"}, 0.0d, 128, null);
        _init_$unit$default("floz", "fl oz", "fl oz", unitKind3, 0.0295735295625d, "ml", new String[]{"floz"}, 0.0d, 128, null);
        _init_$unit$default("gal", "gal", "gal", unitKind3, 3.785411784d, "l", new String[]{"gal", "gallon", "gallons", "галлон", "галлона", "галлонов", "галлонах"}, 0.0d, 128, null);
        UnitKind unitKind4 = UnitKind.AREA;
        _init_$unit$default("m2", "m²", "м²", unitKind4, 1.0d, "ft2", new String[]{"m2", "m²", "м2", "м²", "sqm"}, 0.0d, 128, null);
        _init_$unit$default("km2", "km²", "км²", unitKind4, 1000000.0d, "mi2", new String[]{"km2", "km²", "км2", "км²"}, 0.0d, 128, null);
        _init_$unit$default("ha", "ha", "га", unitKind4, 10000.0d, "acre", new String[]{"ha", "га", "гектар", "гектара", "гектаров", "гектарах", "hectare", "hectares"}, 0.0d, 128, null);
        _init_$unit$default("ft2", "ft²", "ft²", unitKind4, 0.09290304d, "m2", new String[]{"ft2", "ft²", "sqft"}, 0.0d, 128, null);
        _init_$unit$default("mi2", "mi²", "mi²", unitKind4, 2589988.110336d, "km2", new String[]{"mi2", "mi²"}, 0.0d, 128, null);
        _init_$unit$default("acre", "ac", "ac", unitKind4, 4046.8564224d, "ha", new String[]{"ac", "acre", "acres", "акр", "акра", "акров", "акрах"}, 0.0d, 128, null);
        UnitKind unitKind5 = UnitKind.SPEED;
        _init_$unit$default("kmh", "km/h", "км/ч", unitKind5, 0.2777777777777778d, "mph", new String[]{"kmh", "kph"}, 0.0d, 128, null);
        _init_$unit$default("ms", "m/s", "м/с", unitKind5, 1.0d, "kmh", new String[]{"mps"}, 0.0d, 128, null);
        _init_$unit$default("mph", "mph", "mph", unitKind5, 0.44704d, "kmh", new String[]{"mph"}, 0.0d, 128, null);
        _init_$unit$default("knot", "kn", "уз", unitKind5, 0.5144444444444445d, "kmh", new String[]{"knot", "knots", "узел", "узла", "узлов", "узлах"}, 0.0d, 128, null);
        UnitKind unitKind6 = UnitKind.TEMPERATURE;
        _init_$unit("C", "°C", "°C", unitKind6, 1.0d, "F", new String[]{"celsius", "цельсий", "цельсия", "цельсию", "цельсиях"}, 273.15d);
        _init_$unit("F", "°F", "°F", unitKind6, 0.5555555555555556d, "C", new String[]{"fahrenheit", "фаренгейт", "фаренгейта", "фаренгейту", "фаренгейтах"}, 255.3722222222222d);
        _init_$unit$default("K", "K", "K", unitKind6, 1.0d, "C", new String[]{"kelvin", "kelvins", "кельвин", "кельвина", "кельвинов", "кельвинах"}, 0.0d, 128, null);
        UnitKind unitKind7 = UnitKind.DURATION;
        _init_$unit$default("msec", "ms", "мс", unitKind7, 0.001d, null, new String[]{"ms", "мс", "millisecond", "milliseconds", "миллисекунда", "миллисекунды", "миллисекунд"}, 0.0d, 128, null);
        _init_$unit$default("s", "s", "с", unitKind7, 1.0d, null, new String[]{"s", "sec", "secs", "second", "seconds", "с", "сек", "секунда", "секунды", "секунд", "секундах", "секунду"}, 0.0d, 128, null);
        _init_$unit$default("min", "min", "мин", unitKind7, 60.0d, null, new String[]{"min", "mins", "minute", "minutes", "мин", "минута", "минуты", "минут", "минутах", "минуту"}, 0.0d, 128, null);
        _init_$unit$default("h", "h", "ч", unitKind7, 3600.0d, null, new String[]{"h", "hr", "hrs", "hour", "hours", "ч", "час", "часа", "часов", "часах"}, 0.0d, 128, null);
        _init_$unit$default("d", "d", "д", unitKind7, 86400.0d, null, new String[]{"d", "day", "days", "д", "дн", "день", "дня", "дней", "днях", "сут", "сутки", "суток"}, 0.0d, 128, null);
        _init_$unit$default("w", "w", "нед", unitKind7, 604800.0d, null, new String[]{"w", "wk", "week", "weeks", "нед", "неделя", "недели", "недель", "неделях", "неделю"}, 0.0d, 128, null);
        _init_$unit$default("mo", "mo", "мес", unitKind7, 2592000.0d, null, new String[]{"mo", "month", "months", "мес", "месяц", "месяца", "месяцев", "месяцах"}, 0.0d, 128, null);
        _init_$unit$default("y", "y", "г.", unitKind7, 3.1536E7d, null, new String[]{"y", "yr", "yrs", "year", "years", "год", "года", "лет", "годах"}, 0.0d, 128, null);
        map.put("km/h", "kmh");
        map.put("км/ч", "kmh");
        map.put("m/s", "ms");
        map.put("м/с", "ms");
        map.put("fl oz", "floz");
        _init_$ladder(false, "mm", "cm", "m", "km");
        _init_$ladder(false, "mg", ImageLoader.AUTOPLAY_FILTER, "kg", "t");
        _init_$ladder(false, "ml", "l");
        _init_$ladder(false, "m2", "ha", "km2");
        map2.put("yd", _init_$ladder(true, "in", "ft", "mi"));
        _init_$ladder(true, "oz", "lb");
        _init_$ladder(true, "floz", "gal");
        _init_$ladder(true, "ft2", "acre", "mi2");
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/exteragram/messenger/inline/units/Measures$Ladder;", _UrlKt.FRAGMENT_ENCODE_SET, "imperial", _UrlKt.FRAGMENT_ENCODE_SET, "codes", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ZLjava/util/List;)V", "getImperial", "()Z", "getCodes", "()Ljava/util/List;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Ladder {
        private final List<String> codes;
        private final boolean imperial;

        public Ladder(boolean z, List<String> list) {
            this.imperial = z;
            this.codes = list;
        }

        public final List<String> getCodes() {
            return this.codes;
        }

        public final boolean getImperial() {
            return this.imperial;
        }
    }

    public static /* synthetic */ void _init_$unit$default(String str, String str2, String str3, UnitKind unitKind, double d, String str4, String[] strArr, double d2, int i, Object obj) {
        _init_$unit(str, str2, str3, unitKind, d, str4, strArr, (i & 128) != 0 ? 0.0d : d2);
    }

    private static final void _init_$unit(String str, String str2, String str3, UnitKind unitKind, double d, String str4, String[] strArr, double d2) {
        units.put(str, new MathUnit(str, str2, unitKind, d, d2, str3));
        if (str4 != null) {
            counterparts.put(str, str4);
        }
        for (String str5 : strArr) {
            words.put(str5, str);
        }
    }

    private static final Ladder _init_$ladder(boolean z, String... strArr) {
        Ladder ladder = new Ladder(z, ArraysKt.toList(strArr));
        for (String str : strArr) {
            ladders.put(str, ladder);
        }
        return ladder;
    }

    public final MathUnit word(String word) {
        String str = words.get(word.toLowerCase(Locale.ROOT));
        if (str != null) {
            return units.get(str);
        }
        return null;
    }

    public final MathUnit compound(String first, char separator, String second) {
        Locale locale = Locale.ROOT;
        String str = compounds.get(first.toLowerCase(locale) + separator + second.toLowerCase(locale));
        if (str != null) {
            return units.get(str);
        }
        return null;
    }

    public final MathUnit temperature(char scale) {
        switch (scale) {
            case 'C':
            case 'c':
            case 1057:
            case 1089:
                return units.get("C");
            case 'F':
            case 'f':
            case 1060:
            case 1092:
                return units.get("F");
            case 'K':
            case 'k':
            case 1050:
            case 1082:
                return units.get("K");
            default:
                return null;
        }
    }

    public final MathUnit symbol(char c2) {
        if (c2 == 8451) {
            return units.get("C");
        }
        if (c2 != 8457) {
            return null;
        }
        return units.get("F");
    }

    public final MathUnit implicitTarget(MathUnit unit, double value, boolean imperial) {
        MathUnit mathUnitRescale;
        Ladder ladder = ladders.get(unit.getCode());
        if (ladder != null && ladder.getImperial() == imperial && (mathUnitRescale = rescale(ladder, unit, Math.abs(unit.toBase(value)))) != null) {
            return mathUnitRescale;
        }
        String str = counterparts.get(unit.getCode());
        if (str != null) {
            return units.get(str);
        }
        return null;
    }

    private final MathUnit rescale(Ladder ladder, MathUnit unit, double base) {
        for (String str : CollectionsKt.asReversed(ladder.getCodes())) {
            MathUnit mathUnit = (MathUnit) MapsKt.getValue(units, str);
            double dFromBase = mathUnit.fromBase(base);
            if (!Intrinsics.areEqual(str, unit.getCode()) && dFromBase >= 0.1d && dFromBase < 1000.0d) {
                return mathUnit;
            }
        }
        int iIndexOf = ladder.getCodes().indexOf(unit.getCode());
        if (iIndexOf <= 0) {
            return null;
        }
        MathUnit mathUnit2 = (MathUnit) MapsKt.getValue(units, ladder.getCodes().get(iIndexOf - 1));
        double dFromBase2 = mathUnit2.fromBase(base);
        if (dFromBase2 < 1.0d || dFromBase2 >= 100000.0d) {
            return null;
        }
        return mathUnit2;
    }

    public final boolean canBreakDown(MathUnit unit) {
        return breakdown.contains(unit.getCode());
    }

    public final boolean breaksDown(double value, MathUnit unit) {
        List<Pair<String, Double>> listParts;
        if (breakdown.contains(unit.getCode()) && (listParts = parts(Math.abs(value * unit.getScale()))) != null) {
            return listParts.size() > 1 || !Intrinsics.areEqual(listParts.get(0).getFirst(), unit.getCode());
        }
        return false;
    }

    public final String formatDuration(double seconds, char decimalSeparator, boolean russian) {
        List<Pair<String, Double>> listParts;
        if (Double.isNaN(seconds) || Double.isInfinite(seconds) || (listParts = parts(Math.abs(seconds))) == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (seconds < 0.0d) {
            sb.append(SignatureVisitor.SUPER);
        }
        int i = 0;
        for (Object obj : listParts) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            String str = (String) pair.component1();
            double dDoubleValue = ((Number) pair.component2()).doubleValue();
            if (i > 0) {
                sb.append(' ');
            }
            String str2 = MathFormat.INSTANCE.format(dDoubleValue, decimalSeparator, false);
            if (str2 == null) {
                return null;
            }
            sb.append(str2);
            sb.append(Typography.nbsp);
            sb.append(((MathUnit) MapsKt.getValue(units, str)).label(russian));
            i = i2;
        }
        return sb.toString();
    }

    private final List<Pair<String, Double>> parts(double seconds) {
        if (seconds >= 1.0E12d) {
            return null;
        }
        if (seconds < 60.0d) {
            return CollectionsKt.listOf(TuplesKt.to("s", Double.valueOf(seconds)));
        }
        long jRoundToLong = MathKt.roundToLong(seconds);
        ArrayList arrayList = new ArrayList(4);
        for (String str : breakdown) {
            long scale = (long) ((MathUnit) MapsKt.getValue(units, str)).getScale();
            long jFloor = (long) Math.floor(jRoundToLong / scale);
            if (jFloor > 0) {
                arrayList.add(TuplesKt.to(str, Double.valueOf(jFloor)));
                jRoundToLong -= jFloor * scale;
            }
        }
        boolean zIsEmpty = arrayList.isEmpty();
        List<Pair<String, Double>> listListOf = arrayList;
        if (zIsEmpty) {
            listListOf = CollectionsKt.listOf(TuplesKt.to("s", Double.valueOf(0.0d)));
        }
        return listListOf;
    }
}
