package kotlin.collections;

import android.Manifest;
import android.R;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u009f\u0001\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\u0088\u0004ø\u0001\u0000\u001a¸\u0001\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001aÀ\u0001\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u000526\u0010\u0015\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u00162K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0017H\u0087\u0088\u0004ø\u0001\u0000\u001aÙ\u0001\u0010\u0018\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u001026\u0010\u0015\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u00162K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0017H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a\u0080\u0001\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u001a\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0016H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u001b\u001a\u0094\u0001\u0010\u0018\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102\u0006\u0010\u001a\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0016H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\u008c\u0001\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001e0\u0001\"\u0004\b\u0000\u0010\u001e\"\b\b\u0001\u0010\u0004*\u0002H\u001e\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u001e¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u001e0\u0017H\u0087\u0088\u0004ø\u0001\u0000\u001a¥\u0001\u0010\u001f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u001e\"\b\b\u0001\u0010\u0004*\u0002H\u001e\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001e0\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u001e¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u001e0\u0017H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010 \u001aK\u0010!\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0016\b\u0002\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\"0\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u0010H\u0087\u0080\u0004¢\u0006\u0002\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"aggregate", _UrlKt.FRAGMENT_ENCODE_SET, "K", "R", "T", "Lkotlin/collections/Grouping;", "operation", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "key", "accumulator", "element", _UrlKt.FRAGMENT_ENCODE_SET, "first", "aggregateTo", "M", _UrlKt.FRAGMENT_ENCODE_SET, "destination", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;", "fold", "initialValueSelector", "Lkotlin/Function2;", "Lkotlin/Function3;", "foldTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "initialValue", "(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "reduce", "S", "reduceTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "eachCountTo", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/collections/GroupingKt")
@SourceDebugExtension({"SMAP\nGrouping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n*L\n1#1,291:1\n80#1,6:292\n53#1:298\n80#1,6:299\n80#1,6:305\n53#1:311\n80#1,6:312\n80#1,6:318\n53#1:324\n80#1,6:325\n80#1,6:331\n189#1:337\n80#1,6:338\n*S KotlinDebug\n*F\n+ 1 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n*L\n53#1:292,6\n112#1:298\n112#1:299,6\n143#1:305,6\n164#1:311\n164#1:312,6\n189#1:318,6\n211#1:324\n211#1:325,6\n239#1:331,6\n257#1:337\n257#1:338,6\n*E\n"})
class GroupingKt__GroupingKt extends GroupingKt__GroupingJVMKt {
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    public static final <T, K, R> Map<K, R> aggregate(Grouping<T, ? extends K> grouping, Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> function4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = grouping.keyOf(next);
            Manifest.permission_group permission_groupVar = (Object) linkedHashMap.get(objKeyOf);
            linkedHashMap.put(objKeyOf, function4.invoke(objKeyOf, permission_groupVar, next, Boolean.valueOf(permission_groupVar == null && !linkedHashMap.containsKey(objKeyOf))));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    public static final <T, K, R> Map<K, R> fold(Grouping<T, ? extends K> grouping, R r, Function2<? super R, ? super T, ? extends R> function2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            K kKeyOf = grouping.keyOf(next);
            R r2 = (Object) linkedHashMap.get(kKeyOf);
            if (r2 == null && !linkedHashMap.containsKey(kKeyOf)) {
                r2 = (Object) r;
            }
            linkedHashMap.put(kKeyOf, function2.invoke(r2, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    public static final <T, K, R> Map<K, R> fold(Grouping<T, ? extends K> grouping, Function2<? super K, ? super T, ? extends R> function2, Function3<? super K, ? super R, ? super T, ? extends R> function3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = grouping.keyOf(next);
            R rInvoke = (Object) linkedHashMap.get(objKeyOf);
            if (rInvoke == null && !linkedHashMap.containsKey(objKeyOf)) {
                rInvoke = function2.invoke(objKeyOf, next);
            }
            linkedHashMap.put(objKeyOf, function3.invoke(objKeyOf, rInvoke, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    public static final <S, T extends S, K> Map<K, S> reduce(Grouping<T, ? extends K> grouping, Function3<? super K, ? super S, ? super T, ? extends S> function3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            S sInvoke = (Object) itSourceIterator.next();
            Object objKeyOf = grouping.keyOf(sInvoke);
            Manifest.permission_group permission_groupVar = (Object) linkedHashMap.get(objKeyOf);
            if (!(permission_groupVar == null && !linkedHashMap.containsKey(objKeyOf))) {
                sInvoke = function3.invoke(objKeyOf, permission_groupVar, sInvoke);
            }
            linkedHashMap.put(objKeyOf, sInvoke);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    public static final <T, K, R, M extends Map<? super K, R>> M aggregateTo(Grouping<T, ? extends K> grouping, M m, Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> function4) {
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = grouping.keyOf(next);
            Manifest.permission_group permission_groupVar = (Object) m.get(objKeyOf);
            m.put(objKeyOf, function4.invoke(objKeyOf, permission_groupVar, next, Boolean.valueOf(permission_groupVar == null && !m.containsKey(objKeyOf))));
        }
        return m;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    public static final <T, K, R, M extends Map<? super K, R>> M foldTo(Grouping<T, ? extends K> grouping, M m, R r, Function2<? super R, ? super T, ? extends R> function2) {
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            K kKeyOf = grouping.keyOf(next);
            R r2 = (Object) m.get(kKeyOf);
            if (r2 == null && !m.containsKey(kKeyOf)) {
                r2 = (Object) r;
            }
            m.put(kKeyOf, function2.invoke(r2, next));
        }
        return m;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    public static final <T, K, R, M extends Map<? super K, R>> M foldTo(Grouping<T, ? extends K> grouping, M m, Function2<? super K, ? super T, ? extends R> function2, Function3<? super K, ? super R, ? super T, ? extends R> function3) {
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = grouping.keyOf(next);
            R rInvoke = (Object) m.get(objKeyOf);
            if (rInvoke == null && !m.containsKey(objKeyOf)) {
                rInvoke = function2.invoke(objKeyOf, next);
            }
            m.put(objKeyOf, function3.invoke(objKeyOf, rInvoke, next));
        }
        return m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    public static final <S, T extends S, K, M extends Map<? super K, S>> M reduceTo(Grouping<T, ? extends K> grouping, M m, Function3<? super K, ? super S, ? super T, ? extends S> function3) {
        Iterator itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            S sInvoke = (Object) itSourceIterator.next();
            Object objKeyOf = grouping.keyOf(sInvoke);
            Manifest.permission_group permission_groupVar = (Object) m.get(objKeyOf);
            if (!(permission_groupVar == null && !m.containsKey(objKeyOf))) {
                sInvoke = function3.invoke(objKeyOf, permission_groupVar, sInvoke);
            }
            m.put(objKeyOf, sInvoke);
        }
        return m;
    }

    @SinceKotlin(version = "1.1")
    public static final <T, K, M extends Map<? super K, Integer>> M eachCountTo(Grouping<T, ? extends K> grouping, M m) {
        Iterator<T> itSourceIterator = grouping.sourceIterator();
        while (itSourceIterator.hasNext()) {
            K kKeyOf = grouping.keyOf(itSourceIterator.next());
            Object obj = m.get(kKeyOf);
            if (obj == null && !m.containsKey(kKeyOf)) {
                obj = 0;
            }
            m.put(kKeyOf, Integer.valueOf(((Number) obj).intValue() + 1));
        }
        return m;
    }
}
