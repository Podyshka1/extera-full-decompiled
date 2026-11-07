package com.exteragram.messenger.inline.time;

import j$.time.DateTimeException;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001a\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001eR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001eR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001eR\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$R0\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060&j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/exteragram/messenger/inline/time/TimeZones;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/time/LocalTime", "time", _UrlKt.FRAGMENT_ENCODE_SET, "meridiem", "format", "(Lj$/time/LocalTime;Ljava/lang/String;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "words", _UrlKt.FRAGMENT_ENCODE_SET, "from", "to", "j$/time/ZoneId", "zone", "(Ljava/util/List;II)Lj$/time/ZoneId;", "name", "normalize", "(Ljava/lang/String;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "text", "equalsIndex", "Lcom/exteragram/messenger/inline/time/TimeZoneOptions;", "options", "valueAt", "(Ljava/lang/CharSequence;ILcom/exteragram/messenger/inline/time/TimeZoneOptions;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "targetMarkers", "Ljava/util/Set;", "sourceMarkers", "nowWords", "meridiems", "Lkotlin/text/Regex;", "timePattern", "Lkotlin/text/Regex;", "offsetPattern", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "zones", "Ljava/util/HashMap;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTimeZones.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeZones.kt\ncom/exteragram/messenger/inline/time/TimeZones\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,248:1\n777#2:249\n873#2,2:250\n2792#2,3:252\n1#3:255\n14048#4,2:256\n*S KotlinDebug\n*F\n+ 1 TimeZones.kt\ncom/exteragram/messenger/inline/time/TimeZones\n*L\n125#1:249\n125#1:250,2\n158#1:252,3\n41#1:256,2\n*E\n"})
public final class TimeZones {
    public static final TimeZones INSTANCE = new TimeZones();
    private static final Set<String> targetMarkers = SetsKt.setOf((Object[]) new String[]{"в", "во", "to", "in"});
    private static final Set<String> sourceMarkers = SetsKt.setOf("по");
    private static final Set<String> nowWords = SetsKt.setOf((Object[]) new String[]{"сейчас", "now"});
    private static final Set<String> meridiems = SetsKt.setOf((Object[]) new String[]{"am", "pm", "a.m.", "p.m."});
    private static final Regex timePattern = new Regex("^(\\d{1,2})(?:[:.](\\d{2}))?(am|pm|a\\.m\\.|p\\.m\\.)?$");
    private static final Regex offsetPattern = new Regex("^(utc|gmt|msk|мск) ?([+-]) ?(\\d{1,2})(?::?(\\d{2}))?$");
    private static final HashMap<String, String> zones = new HashMap<>();

    private TimeZones() {
    }

    static {
        _init_$add("UTC", "utc");
        _init_$add("GMT", "gmt");
        _init_$add("Europe/Moscow", "msk", "мск", "москва", "москве", "moscow", "питер", "питере", "спб", "петербург", "петербурге", "санкт-петербург", "санкт-петербурге", "st petersburg", "saint petersburg");
        _init_$add("Europe/Kaliningrad", "калининград", "калининграде", "kaliningrad");
        _init_$add("Europe/Samara", "самара", "самаре", "samara");
        _init_$add("Asia/Yekaterinburg", "екб", "екатеринбург", "екатеринбурге", "yekaterinburg");
        _init_$add("Asia/Omsk", "омск", "омске", "omsk");
        _init_$add("Asia/Novosibirsk", "нск", "новосибирск", "новосибирске", "novosibirsk");
        _init_$add("Asia/Krasnoyarsk", "красноярск", "красноярске", "krasnoyarsk");
        _init_$add("Asia/Irkutsk", "иркутск", "иркутске", "irkutsk");
        _init_$add("Asia/Yakutsk", "якутск", "якутске", "yakutsk");
        _init_$add("Asia/Vladivostok", "владивосток", "владивостоке", "vladivostok");
        _init_$add("Asia/Magadan", "магадан", "магадане", "magadan");
        _init_$add("Asia/Kamchatka", "камчатка", "камчатке", "kamchatka");
        _init_$add("Europe/Kiev", "киев", "киеве", "київ", "києві", "kyiv", "kiev");
        _init_$add("Europe/Minsk", "минск", "минске", "minsk");
        _init_$add("Asia/Almaty", "алматы", "almaty", "астана", "астане", "astana");
        _init_$add("Asia/Tashkent", "ташкент", "ташкенте", "tashkent");
        _init_$add("Asia/Bishkek", "бишкек", "бишкеке", "bishkek");
        _init_$add("Asia/Dushanbe", "душанбе", "dushanbe");
        _init_$add("Asia/Tbilisi", "тбилиси", "tbilisi");
        _init_$add("Asia/Yerevan", "ереван", "ереване", "yerevan");
        _init_$add("Asia/Baku", "баку", "baku");
        _init_$add("Europe/Chisinau", "кишинев", "кишиневе", "chisinau");
        _init_$add("Europe/Riga", "рига", "риге", "riga");
        _init_$add("Europe/Vilnius", "вильнюс", "вильнюсе", "vilnius");
        _init_$add("Europe/Tallinn", "таллин", "таллине", "tallinn");
        _init_$add("Europe/Helsinki", "eet", "eest", "хельсинки", "helsinki");
        _init_$add("Europe/Warsaw", "варшава", "варшаве", "warsaw");
        _init_$add("Europe/Prague", "прага", "праге", "prague");
        _init_$add("Europe/Berlin", "cet", "cest", "берлин", "берлине", "berlin");
        _init_$add("Europe/Paris", "париж", "париже", "paris");
        _init_$add("Europe/Rome", "рим", "риме", "rome");
        _init_$add("Europe/Madrid", "мадрид", "мадриде", "madrid", "барселона", "барселоне", "barcelona");
        _init_$add("Europe/Amsterdam", "амстердам", "амстердаме", "amsterdam");
        _init_$add("Europe/London", "bst", "лондон", "лондоне", "london");
        _init_$add("Europe/Lisbon", "wet", "west", "лиссабон", "лиссабоне", "lisbon");
        _init_$add("Europe/Istanbul", "стамбул", "стамбуле", "istanbul", "анталья", "анталье", "antalya");
        _init_$add("Asia/Jerusalem", "тель-авив", "тель-авиве", "tel aviv", "иерусалим", "иерусалиме", "jerusalem");
        _init_$add("Asia/Dubai", "дубай", "дубае", "dubai");
        _init_$add("Africa/Cairo", "каир", "каире", "cairo");
        _init_$add("Asia/Kolkata", "ist", "дели", "delhi", "new delhi", "мумбаи", "mumbai");
        _init_$add("Asia/Bangkok", "бангкок", "бангкоке", "bangkok", "пхукет", "пхукете", "phuket");
        _init_$add("Asia/Makassar", "бали", "bali");
        _init_$add("Asia/Singapore", "sgt", "сингапур", "сингапуре", "singapore");
        _init_$add("Asia/Hong_Kong", "hkt", "гонконг", "гонконге", "hong kong");
        _init_$add("Asia/Shanghai", "пекин", "пекине", "beijing", "шанхай", "шанхае", "shanghai");
        _init_$add("Asia/Seoul", "kst", "сеул", "сеуле", "seoul");
        _init_$add("Asia/Tokyo", "jst", "токио", "tokyo");
        _init_$add("Australia/Perth", "awst", "перт", "перте", "perth");
        _init_$add("Australia/Sydney", "aest", "aedt", "сидней", "сиднее", "sydney");
        _init_$add("Australia/Melbourne", "мельбурн", "мельбурне", "melbourne");
        _init_$add("Pacific/Auckland", "nzst", "nzdt", "окленд", "окленде", "auckland");
        _init_$add("America/New_York", "est", "edt", "нью-йорк", "нью-йорке", "new york", "nyc", "вашингтон", "вашингтоне", "washington", "майами", "miami");
        _init_$add("America/Toronto", "торонто", "toronto");
        _init_$add("America/Chicago", "cst", "cdt", "чикаго", "chicago");
        _init_$add("America/Denver", "mst", "mdt", "денвер", "денвере", "denver");
        _init_$add("America/Los_Angeles", "pst", "pdt", "лос-анджелес", "лос-анджелесе", "los angeles", "сан-франциско", "san francisco", "сиэтл", "сиэтле", "seattle");
        _init_$add("America/Vancouver", "ванкувер", "ванкувере", "vancouver");
        _init_$add("America/Anchorage", "akst", "akdt", "анкоридж", "анкоридже", "anchorage");
        _init_$add("Pacific/Honolulu", "hst", "гонолулу", "honolulu");
        _init_$add("America/Mexico_City", "мехико", "mexico city");
        _init_$add("America/Sao_Paulo", "сан-паулу", "sao paulo");
        _init_$add("America/Argentina/Buenos_Aires", "буэнос-айрес", "буэнос-айресе", "buenos aires");
    }

    public final String valueAt(CharSequence text, int equalsIndex, TimeZoneOptions options) {
        ZoneId zoneIdZone;
        ZoneId zoneIdZone2;
        int iMax = Math.max(0, equalsIndex - 64);
        int i = equalsIndex - 1;
        if (iMax <= i) {
            while (text.charAt(i) != '\n' && text.charAt(i) != '=') {
                if (i == iMax) {
                    break;
                }
                i--;
            }
            iMax = i + 1;
        }
        List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.replace$default(StringsKt.replace$default(text.subSequence(iMax, equalsIndex).toString().toLowerCase(Locale.ROOT), (char) 1105, (char) 1077, false, 4, (Object) null), (char) 8722, SignatureVisitor.SUPER, false, 4, (Object) null), new char[]{' ', '\t', Typography.nbsp}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSplit$default) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        int i2 = 3;
        while (true) {
            if (i2 <= 0) {
                zoneIdZone = null;
                break;
            }
            int i3 = size - i2;
            int i4 = i3 - 1;
            if (i4 >= 0 && targetMarkers.contains(arrayList.get(i4)) && (zoneIdZone = zone(arrayList, i3, size)) != null) {
                size -= i2 + 1;
                break;
            }
            i2--;
        }
        int i5 = 3;
        while (true) {
            if (i5 <= 0) {
                zoneIdZone2 = null;
                break;
            }
            int i6 = size - i5;
            if (i6 >= 1 && (zoneIdZone2 = zone(arrayList, i6, size)) != null) {
                if (sourceMarkers.contains(arrayList.get(i6 - 1)) && i6 > 1) {
                    i6--;
                }
                size = i6;
            } else {
                i5--;
            }
        }
        if (size < 1) {
            return null;
        }
        Object string = arrayList.get(size - 1);
        Set<String> set = meridiems;
        if (set.contains(string) && size >= 2) {
            Object obj2 = arrayList.get(size - 2);
            StringBuilder sb = new StringBuilder();
            sb.append(obj2);
            sb.append(string);
            string = sb.toString();
        }
        if (zoneIdZone2 == null && zoneIdZone == null) {
            if (set == null || !set.isEmpty()) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    if (StringsKt.endsWith$default((String) string, (String) it.next(), false, 2, (Object) null)) {
                    }
                }
            }
            return null;
        }
        ZoneId local = options.getLocal();
        ZonedDateTime now = options.getNow();
        if (now == null) {
            now = ZonedDateTime.now(local);
        }
        if (nowWords.contains(string)) {
            if (zoneIdZone == null || zoneIdZone2 != null) {
                return null;
            }
            return format(now.mo752o(zoneIdZone).toLocalTime(), null);
        }
        MatchResult matchResultMatchEntire = timePattern.matchEntire((CharSequence) string);
        if (matchResultMatchEntire == null) {
            return null;
        }
        int i7 = Integer.parseInt(matchResultMatchEntire.getGroupValues().get(1));
        String str = matchResultMatchEntire.getGroupValues().get(2);
        String str2 = matchResultMatchEntire.getGroupValues().get(3);
        if (str2.length() == 0) {
            str2 = null;
        }
        String str3 = str2;
        if (str.length() == 0 && str3 == null && zoneIdZone2 == null) {
            return null;
        }
        int i8 = str.length() == 0 ? 0 : Integer.parseInt(str);
        if (i8 > 59) {
            return null;
        }
        if (str3 != null) {
            if (1 > i7 || i7 >= 13) {
                return null;
            }
            i7 = (i7 % 12) + (StringsKt.startsWith$default((CharSequence) str3, 'p', false, 2, (Object) null) ? 12 : 0);
        } else if (i7 > 23) {
            return null;
        }
        if (zoneIdZone2 == null && zoneIdZone == null) {
            return format(LocalTime.of(i7, i8), null);
        }
        if (zoneIdZone2 == null) {
            zoneIdZone2 = local;
        }
        if (zoneIdZone == null) {
            zoneIdZone = local;
        }
        ZonedDateTime zonedDateTimeOf = ZonedDateTime.of(now.mo752o(zoneIdZone2).mo751m(), LocalTime.of(i7, i8), zoneIdZone2);
        ZonedDateTime zonedDateTimeMo752o = zonedDateTimeOf.mo752o(zoneIdZone);
        if (Intrinsics.areEqual(zonedDateTimeMo752o.mo744A(), zonedDateTimeOf.mo744A())) {
            return null;
        }
        long epochDay = zonedDateTimeMo752o.mo751m().toEpochDay() - zonedDateTimeOf.mo751m().toEpochDay();
        String str4 = format(zonedDateTimeMo752o.toLocalTime(), str3);
        if (epochDay > 0) {
            return str4 + " (+" + epochDay + ")";
        }
        if (epochDay >= 0) {
            return str4;
        }
        return str4 + " (" + epochDay + ")";
    }

    private final String format(LocalTime time, String meridiem) {
        String strPadStart = StringsKt.padStart(String.valueOf(time.getMinute()), 2, '0');
        if (meridiem == null) {
            return StringsKt.padStart(String.valueOf(time.getHour()), 2, '0') + ":" + strPadStart;
        }
        return (((time.getHour() + 11) % 12) + 1) + ":" + strPadStart + " " + (time.getHour() < 12 ? "am" : "pm");
    }

    private final ZoneId zone(List<String> words, int from, int to) {
        String strJoinToString$default = CollectionsKt.joinToString$default(words.subList(from, to), " ", null, null, 0, null, null, 62, null);
        String str = zones.get(normalize(strJoinToString$default));
        if (str != null) {
            try {
                return ZoneId.of(str);
            } catch (DateTimeException unused) {
                return null;
            }
        }
        MatchResult matchResultMatchEntire = offsetPattern.matchEntire(strJoinToString$default);
        if (matchResultMatchEntire == null) {
            return null;
        }
        int i = (Intrinsics.areEqual(matchResultMatchEntire.getGroupValues().get(1), "msk") || Intrinsics.areEqual(matchResultMatchEntire.getGroupValues().get(1), "мск")) ? 180 : 0;
        int i2 = Integer.parseInt(matchResultMatchEntire.getGroupValues().get(3));
        String str2 = matchResultMatchEntire.getGroupValues().get(4);
        if (str2.length() == 0) {
            str2 = MVEL.VERSION_SUB;
        }
        int i3 = Integer.parseInt(str2);
        if (i2 <= 18 && i3 <= 59) {
            try {
                return ZoneOffset.ofTotalSeconds((i + ((Intrinsics.areEqual(matchResultMatchEntire.getGroupValues().get(2), "-") ? -1 : 1) * ((i2 * 60) + i3))) * 60);
            } catch (DateTimeException unused2) {
            }
        }
        return null;
    }

    private final String normalize(String name) {
        return StringsKt.replace$default(StringsKt.replace$default(name.toLowerCase(Locale.ROOT), (char) 1105, (char) 1077, false, 4, (Object) null), SignatureVisitor.SUPER, ' ', false, 4, (Object) null);
    }

    private static final void _init_$add(String str, String... strArr) {
        for (String str2 : strArr) {
            zones.put(INSTANCE.normalize(str2), str);
        }
    }
}
