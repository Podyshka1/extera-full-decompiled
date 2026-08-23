package kotlin.streams.jdk8;

import java.util.Iterator;
import java.util.List;
import java.util.Spliterators;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.sequences.Sequence;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u001a \u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\u0080\u0004\u001a\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0005H\u0087\u0080\u0004\u001a\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0007H\u0087\u0080\u0004\u001a\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\b0\u0001*\u00020\tH\u0087\u0080\u0004\u001a \u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0087\u0080\u0004\u001a \u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\f\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\u0080\u0004\u001a\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\f*\u00020\u0005H\u0087\u0080\u0004\u001a\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f*\u00020\u0007H\u0087\u0080\u0004\u001a\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\f*\u00020\tH\u0087\u0080\u0004¨\u0006\r"}, d2 = {"asSequence", "Lkotlin/sequences/Sequence;", "T", "Ljava/util/stream/Stream;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/stream/IntStream;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/stream/LongStream;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/stream/DoubleStream;", "asStream", "toList", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib-jdk8"}, m754k = 2, mv = {2, 3, 0}, pn = "kotlin.streams", xi = 48)
@JvmName(name = "StreamsKt")
public final class StreamsKt {
    @SinceKotlin(version = "1.2")
    public static final <T> Sequence<T> asSequence(final Stream<T> stream) {
        return new Sequence<T>() { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<T> iterator() {
                return stream.iterator();
            }
        };
    }

    @SinceKotlin(version = "1.2")
    public static final Sequence<Integer> asSequence(final IntStream intStream) {
        return new Sequence<Integer>() { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$2
            @Override // kotlin.sequences.Sequence
            public Iterator<Integer> iterator() {
                return intStream.iterator();
            }
        };
    }

    @SinceKotlin(version = "1.2")
    public static final Sequence<Long> asSequence(final LongStream longStream) {
        return new Sequence<Long>() { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$3
            @Override // kotlin.sequences.Sequence
            public Iterator<Long> iterator() {
                return longStream.iterator();
            }
        };
    }

    @SinceKotlin(version = "1.2")
    public static final Sequence<Double> asSequence(final DoubleStream doubleStream) {
        return new Sequence<Double>() { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$4
            @Override // kotlin.sequences.Sequence
            public Iterator<Double> iterator() {
                return doubleStream.iterator();
            }
        };
    }

    @SinceKotlin(version = "1.2")
    public static final <T> Stream<T> asStream(final Sequence<? extends T> sequence) {
        return StreamSupport.stream(new Supplier() { // from class: kotlin.streams.jdk8.StreamsKt$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return Spliterators.spliteratorUnknownSize(sequence.iterator(), 16);
            }
        }, 16, false);
    }

    @SinceKotlin(version = "1.2")
    public static final <T> List<T> toList(Stream<T> stream) {
        return (List) stream.collect(Collectors.toList());
    }

    @SinceKotlin(version = "1.2")
    public static final List<Integer> toList(IntStream intStream) {
        return ArraysKt.asList(intStream.toArray());
    }

    @SinceKotlin(version = "1.2")
    public static final List<Long> toList(LongStream longStream) {
        return ArraysKt.asList(longStream.toArray());
    }

    @SinceKotlin(version = "1.2")
    public static final List<Double> toList(DoubleStream doubleStream) {
        return ArraysKt.asList(doubleStream.toArray());
    }
}
