package kotlin.collections;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u0086\u0080\u0004\u001a/\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005\"\u0002H\u0002H\u0086\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\"\u0004\b\u0000\u0010\u0002H\u0087\u0088\u0004\u001a/\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\"\u0004\b\u0000\u0010\u00022\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005\"\u0002H\u0002H\u0086\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a%\u0010\t\u001a\u0012\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000b\"\u0004\b\u0000\u0010\u0002H\u0087\u0088\u0004¢\u0006\u0002\u0010\f\u001a9\u0010\t\u001a\u0012\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\u000b\"\u0004\b\u0000\u0010\u00022\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005\"\u0002H\u0002H\u0086\u0080\u0004¢\u0006\u0002\u0010\r\u001a%\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u0002H\u00020\u000fj\b\u0012\u0004\u0012\u0002H\u0002`\u0010\"\u0004\b\u0000\u0010\u0002H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0011\u001a9\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u0002H\u00020\u000fj\b\u0012\u0004\u0012\u0002H\u0002`\u0010\"\u0004\b\u0000\u0010\u00022\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005\"\u0002H\u0002H\u0086\u0080\u0004¢\u0006\u0002\u0010\u0012\u001a)\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u0001H\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0016\u001a7\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00142\u0016\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00020\u0005\"\u0004\u0018\u0001H\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0006\u001aG\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00180\u0001\"\u0004\b\u0000\u0010\u00182\u001f\b\u0001\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00180\b\u0012\u0004\u0012\u00020\u001b0\u001a¢\u0006\u0002\b\u001cH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001aO\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00180\u0001\"\u0004\b\u0000\u0010\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u001f\b\u0001\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00180\b\u0012\u0004\u0012\u00020\u001b0\u001a¢\u0006\u0002\b\u001cH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a\"\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001H\u0087\u0088\u0004\u001a \u0010 \u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0080\u0080\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006!"}, d2 = {"emptySet", _UrlKt.FRAGMENT_ENCODE_SET, "T", "setOf", "elements", _UrlKt.FRAGMENT_ENCODE_SET, "([Ljava/lang/Object;)Ljava/util/Set;", "mutableSetOf", _UrlKt.FRAGMENT_ENCODE_SET, "hashSetOf", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "()Ljava/util/HashSet;", "([Ljava/lang/Object;)Ljava/util/HashSet;", "linkedSetOf", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "()Ljava/util/LinkedHashSet;", "([Ljava/lang/Object;)Ljava/util/LinkedHashSet;", "setOfNotNull", _UrlKt.FRAGMENT_ENCODE_SET, "element", "(Ljava/lang/Object;)Ljava/util/Set;", "buildSet", "E", "builderAction", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "capacity", _UrlKt.FRAGMENT_ENCODE_SET, "orEmpty", "optimizeReadOnlySet", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/collections/SetsKt")
public class SetsKt__SetsKt extends SetsKt__SetsJVMKt {
    public static <T> Set<T> emptySet() {
        return EmptySet.INSTANCE;
    }

    public static <T> Set<T> setOf(T... tArr) {
        return ArraysKt___ArraysKt.toSet(tArr);
    }

    @InlineOnly
    private static final <T> Set<T> setOf() {
        return emptySet();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> Set<T> mutableSetOf() {
        return new LinkedHashSet();
    }

    public static <T> Set<T> mutableSetOf(T... tArr) {
        return (Set) ArraysKt___ArraysKt.toCollection(tArr, new LinkedHashSet(MapsKt__MapsJVMKt.mapCapacity(tArr.length)));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> HashSet<T> hashSetOf() {
        return new HashSet<>();
    }

    public static final <T> HashSet<T> hashSetOf(T... tArr) {
        return (HashSet) ArraysKt___ArraysKt.toCollection(tArr, new HashSet(MapsKt__MapsJVMKt.mapCapacity(tArr.length)));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> LinkedHashSet<T> linkedSetOf() {
        return new LinkedHashSet<>();
    }

    public static final <T> LinkedHashSet<T> linkedSetOf(T... tArr) {
        return (LinkedHashSet) ArraysKt___ArraysKt.toCollection(tArr, new LinkedHashSet(MapsKt__MapsJVMKt.mapCapacity(tArr.length)));
    }

    @SinceKotlin(version = "1.4")
    public static final <T> Set<T> setOfNotNull(T t) {
        return t != null ? SetsKt__SetsJVMKt.setOf(t) : emptySet();
    }

    @SinceKotlin(version = "1.4")
    public static final <T> Set<T> setOfNotNull(T... tArr) {
        return (Set) ArraysKt___ArraysKt.filterNotNullTo(tArr, new LinkedHashSet());
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final <E> Set<E> buildSet(@BuilderInference Function1<? super Set<E>, Unit> function1) {
        Set setCreateSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
        function1.invoke(setCreateSetBuilder);
        return SetsKt__SetsJVMKt.build(setCreateSetBuilder);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final <E> Set<E> buildSet(int i, @BuilderInference Function1<? super Set<E>, Unit> function1) {
        Set setCreateSetBuilder = SetsKt__SetsJVMKt.createSetBuilder(i);
        function1.invoke(setCreateSetBuilder);
        return SetsKt__SetsJVMKt.build(setCreateSetBuilder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> Set<T> orEmpty(Set<? extends T> set) {
        return set == 0 ? emptySet() : set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Set<T> optimizeReadOnlySet(Set<? extends T> set) {
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : SetsKt__SetsJVMKt.setOf(set.iterator().next());
        }
        return emptySet();
    }
}
