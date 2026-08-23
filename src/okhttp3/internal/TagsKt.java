package okhttp3.internal;

import com.google.android.exoplayer2.mediacodec.AbstractC1260xa830b2f;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a=\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00010\bH\u0000¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"computeIfAbsent", "T", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/concurrent/atomic/AtomicReference;", "Lokhttp3/internal/Tags;", TeXSymbolParser.TYPE_ATTR, "Lkotlin/reflect/KClass;", "compute", "Lkotlin/Function0;", "(Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "okhttp"}, m754k = 2, mv = {2, 2, 0}, xi = 48)
public final class TagsKt {
    public static final <T> T computeIfAbsent(AtomicReference<Tags> atomicReference, KClass<T> kClass, Function0<? extends T> function0) {
        Tags tags;
        T tInvoke = null;
        do {
            tags = atomicReference.get();
            T t = (T) tags.get(kClass);
            if (t != null) {
                return t;
            }
            if (tInvoke == null) {
                tInvoke = function0.invoke();
            }
        } while (!AbstractC1260xa830b2f.m261m(atomicReference, tags, tags.plus(kClass, tInvoke)));
        return tInvoke;
    }
}
