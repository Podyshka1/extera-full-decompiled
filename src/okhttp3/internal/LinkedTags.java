package okhttp3.internal;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000b\u001a\u00020\u0003\"\b\b\u0001\u0010\f*\u00020\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\f0\u00052\b\u0010\u0006\u001a\u0004\u0018\u0001H\fH\u0016¢\u0006\u0002\u0010\rJ(\u0010\u000e\u001a\u0004\u0018\u0001H\f\"\b\b\u0001\u0010\f*\u00020\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\f0\u0005H\u0096\u0002¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00028\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/LinkedTags;", "K", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/Tags;", PluginsConstants.Settings.KEY, "Lkotlin/reflect/KClass;", "value", "next", "<init>", "(Lkotlin/reflect/KClass;Ljava/lang/Object;Lokhttp3/internal/Tags;)V", "Ljava/lang/Object;", "plus", "T", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokhttp3/internal/Tags;", "get", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
final class LinkedTags<K> extends Tags {
    private final KClass<K> key;
    private final Tags next;
    private final K value;

    public LinkedTags(KClass<K> kClass, K k, Tags tags) {
        super(null);
        this.key = kClass;
        this.value = k;
        this.next = tags;
    }

    @Override // okhttp3.internal.Tags
    public <T> Tags plus(KClass<T> key, T value) {
        boolean zAreEqual = Intrinsics.areEqual(key, this.key);
        Tags tags = this.next;
        if (!zAreEqual) {
            Tags tagsPlus = tags.plus(key, null);
            if (tagsPlus != this.next) {
                this = new LinkedTags<>(this.key, this.value, tagsPlus);
            }
            tags = this;
        }
        return value != null ? new LinkedTags(key, value, tags) : tags;
    }

    @Override // okhttp3.internal.Tags
    public <T> T get(KClass<T> key) {
        return Intrinsics.areEqual(key, this.key) ? (T) JvmClassMappingKt.getJavaClass((KClass) key).cast(this.value) : (T) this.next.get(key);
    }

    public static LinkedTags $r8$lambda$Oa1fjbqL7x3c7crSS257QCt1kFE(LinkedTags linkedTags) {
        Tags tags = linkedTags.next;
        if (tags instanceof LinkedTags) {
            return (LinkedTags) tags;
        }
        return null;
    }

    public String toString() {
        return CollectionsKt.joinToString$default(CollectionsKt.reversed(SequencesKt.toList(SequencesKt.generateSequence(this, (Function1<? super LinkedTags<K>, ? extends LinkedTags<K>>) new Function1() { // from class: okhttp3.internal.LinkedTags$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LinkedTags.$r8$lambda$Oa1fjbqL7x3c7crSS257QCt1kFE((LinkedTags) obj);
            }
        }))), null, "{", "}", 0, null, new Function1() { // from class: okhttp3.internal.LinkedTags$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LinkedTags.m5333$r8$lambda$uVZpiaickqd0YIDc2k2ZzaQL74((LinkedTags) obj);
            }
        }, 25, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$uVZpiaickqd0YIDc2k2ZzaQL-74, reason: not valid java name */
    public static CharSequence m5333$r8$lambda$uVZpiaickqd0YIDc2k2ZzaQL74(LinkedTags linkedTags) {
        StringBuilder sb = new StringBuilder();
        sb.append(linkedTags.key);
        sb.append(SignatureVisitor.INSTANCEOF);
        sb.append(linkedTags.value);
        return sb.toString();
    }
}
