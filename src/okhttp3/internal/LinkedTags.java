package okhttp3.internal;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes.dex */
final class LinkedTags<K> extends Tags {
    private final KClass key;
    private final Tags next;
    private final K value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedTags(KClass key, K value, Tags next) {
        super(null);
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(next, "next");
        this.key = key;
        this.value = value;
        this.next = next;
    }

    @Override // okhttp3.internal.Tags
    public <T> Tags plus(KClass key, T t) {
        Tags linkedTags;
        Intrinsics.checkNotNullParameter(key, "key");
        if (Intrinsics.areEqual(key, this.key)) {
            linkedTags = this.next;
        } else {
            Tags tagsPlus = this.next.plus(key, null);
            linkedTags = tagsPlus == this.next ? this : new LinkedTags(this.key, this.value, tagsPlus);
        }
        return t != null ? new LinkedTags(key, t, linkedTags) : linkedTags;
    }

    @Override // okhttp3.internal.Tags
    public <T> T get(KClass key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return Intrinsics.areEqual(key, this.key) ? (T) JvmClassMappingKt.getJavaClass(key).cast(this.value) : (T) this.next.get(key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinkedTags toString$lambda$0(LinkedTags it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Tags tags = it.next;
        if (tags instanceof LinkedTags) {
            return (LinkedTags) tags;
        }
        return null;
    }

    public String toString() {
        return CollectionsKt.joinToString$default(CollectionsKt.reversed(SequencesKt.toList(SequencesKt.generateSequence(this, new Function1() { // from class: okhttp3.internal.LinkedTags$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LinkedTags.toString$lambda$0((LinkedTags) obj);
            }
        }))), null, "{", "}", 0, null, new Function1() { // from class: okhttp3.internal.LinkedTags$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LinkedTags.toString$lambda$1((LinkedTags) obj);
            }
        }, 25, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$1(LinkedTags it) {
        Intrinsics.checkNotNullParameter(it, "it");
        StringBuilder sb = new StringBuilder();
        sb.append(it.key);
        sb.append(SignatureVisitor.INSTANCEOF);
        sb.append(it.value);
        return sb.toString();
    }
}
