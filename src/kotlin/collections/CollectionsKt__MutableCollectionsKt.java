package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001f\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u001a.\u0010\u0000\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\u0088\b¢\u0006\u0002\u0010\u0006\u001a/\u0010\u0007\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0087\u0088\b\u001a/\u0010\n\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0087\u0088\b\u001a)\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\u008a\u0004¢\u0006\u0002\u0010\r\u001a*\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\u008a\u0004\u001a/\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0087\u008a\u0004¢\u0006\u0002\u0010\u0010\u001a*\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\u008a\u0004\u001a)\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\u008a\u0004¢\u0006\u0002\u0010\r\u001a*\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\u008a\u0004\u001a/\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0087\u008a\u0004¢\u0006\u0002\u0010\u0010\u001a*\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\u008a\u0004\u001a*\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\u0080\b\u001a*\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\u0080\b\u001a1\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u000fH\u0087\u0080\b¢\u0006\u0002\u0010\u0014\u001a \u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\t\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0080\u0080\u0004\u001a*\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\u0080\b\u001a*\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\u0080\b\u001a1\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u000fH\u0087\u0080\b¢\u0006\u0002\u0010\u0014\u001a*\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\u0080\b\u001a1\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u000fH\u0087\u0080\b¢\u0006\u0002\u0010\u0014\u001a*\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\u0080\b\u001a\u0017\u0010\u0016\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0004H\u0083\u0080\b¢\u0006\u0002\b\u0017\u001a.\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001aH\u0087\u0080\b\u001a.\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001aH\u0087\u0080\b\u001a;\u0010\u001b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b\u001d\u001a'\u0010\u0000\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0087\u0088\u0004¢\u0006\u0002\u0010!\u001a\u001f\u0010\"\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0087\u0080\b¢\u0006\u0002\u0010#\u001a!\u0010$\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0087\u0080\b¢\u0006\u0002\u0010#\u001a\u001f\u0010%\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0087\u0080\b¢\u0006\u0002\u0010#\u001a!\u0010&\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0087\u0080\b¢\u0006\u0002\u0010#\u001a.\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001aH\u0087\u0080\b\u001a.\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001aH\u0087\u0080\b\u001a;\u0010\u001b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b\u001d¨\u0006'"}, d2 = {"remove", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/internal/OnlyInputTypes;", _UrlKt.FRAGMENT_ENCODE_SET, "element", "(Ljava/util/Collection;Ljava/lang/Object;)Z", "removeAll", "elements", _UrlKt.FRAGMENT_ENCODE_SET, "retainAll", "plusAssign", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/Collection;Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/Collection;[Ljava/lang/Object;)V", "Lkotlin/sequences/Sequence;", "minusAssign", "addAll", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", "convertToListIfNotCollection", "retainNothing", "retainNothing$CollectionsKt__MutableCollectionsKt", _UrlKt.FRAGMENT_ENCODE_SET, "predicate", "Lkotlin/Function1;", "filterInPlace", "predicateResultToRemove", "filterInPlace$CollectionsKt__MutableCollectionsKt", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/List;I)Ljava/lang/Object;", "removeFirst", "(Ljava/util/List;)Ljava/lang/Object;", "removeFirstOrNull", "removeLast", "removeLastOrNull", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/collections/CollectionsKt")
public class CollectionsKt__MutableCollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    @IgnorableReturnValue
    @InlineOnly
    private static final <T> boolean remove(Collection<? extends T> collection, T t) {
        return TypeIntrinsics.asMutableCollection(collection).remove(t);
    }

    @IgnorableReturnValue
    @InlineOnly
    private static final <T> boolean removeAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        return TypeIntrinsics.asMutableCollection(collection).removeAll(collection2);
    }

    @IgnorableReturnValue
    @InlineOnly
    private static final <T> boolean retainAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        return TypeIntrinsics.asMutableCollection(collection).retainAll(collection2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, T t) {
        collection.add(t);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, Iterable<? extends T> iterable) {
        addAll(collection, iterable);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, T[] tArr) {
        addAll(collection, tArr);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, Sequence<? extends T> sequence) {
        addAll(collection, sequence);
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, T t) {
        collection.remove(t);
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, Iterable<? extends T> iterable) {
        removeAll(collection, iterable);
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, T[] tArr) {
        removeAll(collection, tArr);
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, Sequence<? extends T> sequence) {
        removeAll(collection, sequence);
    }

    @IgnorableReturnValue
    public static <T> boolean addAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    @IgnorableReturnValue
    public static <T> boolean addAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        Iterator<? extends T> it = sequence.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    @IgnorableReturnValue
    public static <T> boolean addAll(Collection<? super T> collection, T[] tArr) {
        return collection.addAll(ArraysKt___ArraysJvmKt.asList(tArr));
    }

    public static <T> Collection<T> convertToListIfNotCollection(Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : CollectionsKt___CollectionsKt.toList(iterable);
    }

    @IgnorableReturnValue
    public static final <T> boolean removeAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        return collection.removeAll(convertToListIfNotCollection(iterable));
    }

    @IgnorableReturnValue
    public static final <T> boolean removeAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        List list = SequencesKt.toList(sequence);
        return !list.isEmpty() && collection.removeAll(list);
    }

    @IgnorableReturnValue
    public static final <T> boolean removeAll(Collection<? super T> collection, T[] tArr) {
        return !(tArr.length == 0) && collection.removeAll(ArraysKt___ArraysJvmKt.asList(tArr));
    }

    @IgnorableReturnValue
    public static final <T> boolean retainAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        return collection.retainAll(convertToListIfNotCollection(iterable));
    }

    @IgnorableReturnValue
    public static final <T> boolean retainAll(Collection<? super T> collection, T[] tArr) {
        if (!(tArr.length == 0)) {
            return collection.retainAll(ArraysKt___ArraysJvmKt.asList(tArr));
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(collection);
    }

    @IgnorableReturnValue
    public static final <T> boolean retainAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        List list = SequencesKt.toList(sequence);
        if (!list.isEmpty()) {
            return collection.retainAll(list);
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(collection);
    }

    @IgnorableReturnValue
    private static final boolean retainNothing$CollectionsKt__MutableCollectionsKt(Collection<?> collection) {
        boolean z = !collection.isEmpty();
        collection.clear();
        return z;
    }

    @IgnorableReturnValue
    public static final <T> boolean removeAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) iterable, (Function1) function1, true);
    }

    @IgnorableReturnValue
    public static <T> boolean retainAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) iterable, (Function1) function1, false);
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (function1.invoke(it.next()).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use removeAt(index) instead.", replaceWith = @ReplaceWith(expression = "removeAt(index)", imports = {}))
    @InlineOnly
    private static final <T> T remove(List<T> list, int i) {
        return list.remove(i);
    }

    @SinceKotlin(version = "1.4")
    @IgnorableReturnValue
    public static <T> T removeFirst(List<T> list) {
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m761m("List is empty.");
        return null;
    }

    @SinceKotlin(version = "1.4")
    @IgnorableReturnValue
    public static final <T> T removeFirstOrNull(List<T> list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    @SinceKotlin(version = "1.4")
    @IgnorableReturnValue
    public static <T> T removeLast(List<T> list) {
        if (!list.isEmpty()) {
            return list.remove(CollectionsKt__CollectionsKt.getLastIndex(list));
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m761m("List is empty.");
        return null;
    }

    @SinceKotlin(version = "1.4")
    @IgnorableReturnValue
    public static <T> T removeLastOrNull(List<T> list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(CollectionsKt__CollectionsKt.getLastIndex(list));
    }

    @IgnorableReturnValue
    public static <T> boolean removeAll(List<T> list, Function1<? super T, Boolean> function1) {
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) list, (Function1) function1, true);
    }

    @IgnorableReturnValue
    public static final <T> boolean retainAll(List<T> list, Function1<? super T, Boolean> function1) {
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) list, (Function1) function1, false);
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(List<T> list, Function1<? super T, Boolean> function1, boolean z) {
        int i;
        if (!(list instanceof RandomAccess)) {
            return filterInPlace$CollectionsKt__MutableCollectionsKt(TypeIntrinsics.asMutableIterable(list), function1, z);
        }
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (lastIndex >= 0) {
            int i2 = 0;
            i = 0;
            while (true) {
                T t = list.get(i2);
                if (function1.invoke(t).booleanValue() != z) {
                    if (i != i2) {
                        list.set(i, t);
                    }
                    i++;
                }
                if (i2 == lastIndex) {
                    break;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        if (i >= list.size()) {
            return false;
        }
        int lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (i > lastIndex2) {
            return true;
        }
        while (true) {
            list.remove(lastIndex2);
            if (lastIndex2 == i) {
                return true;
            }
            lastIndex2--;
        }
    }
}
