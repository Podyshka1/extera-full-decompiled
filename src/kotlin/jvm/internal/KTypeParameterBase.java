package kotlin.jvm.internal;

import java.lang.reflect.GenericDeclaration;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KTypeParameter;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b&\u0018\u00002\u00020\u0001B\u0015\bF\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u0096\u0082\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u0096\u0080\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u0096\u0080\u0004R\u0019\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u0004\u0018\u00010\n8@X\u0080\u0084\n¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lkotlin/jvm/internal/KTypeParameterBase;", "Lkotlin/reflect/KTypeParameter;", "container", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/jvm/internal/TypeParameterContainer;", "<init>", "(Ljava/lang/Object;)V", "getContainer$kotlin_stdlib", "()Ljava/lang/Object;", "javaContainingDeclaration", "Ljava/lang/reflect/GenericDeclaration;", "getJavaContainingDeclaration$kotlin_stdlib", "()Ljava/lang/reflect/GenericDeclaration;", "javaContainingDeclaration$delegate", "Lkotlin/Lazy;", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class KTypeParameterBase implements KTypeParameter {
    private final Object container;

    /* JADX INFO: renamed from: javaContainingDeclaration$delegate, reason: from kotlin metadata */
    private final Lazy javaContainingDeclaration = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: kotlin.jvm.internal.KTypeParameterBase$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KTypeParameterBase.$r8$lambda$ZsDcbUL_sm0rBpIC3GBrLZrR8yA(this.f$0);
        }
    });

    public KTypeParameterBase(Object obj) {
        this.container = obj;
    }

    /* JADX INFO: renamed from: getContainer$kotlin_stdlib, reason: from getter */
    public final Object getContainer() {
        return this.container;
    }

    public final GenericDeclaration getJavaContainingDeclaration$kotlin_stdlib() {
        return (GenericDeclaration) this.javaContainingDeclaration.getValue();
    }

    public static GenericDeclaration $r8$lambda$ZsDcbUL_sm0rBpIC3GBrLZrR8yA(KTypeParameterBase kTypeParameterBase) {
        Object obj = kTypeParameterBase.container;
        KotlinGenericDeclaration kotlinGenericDeclaration = obj instanceof KotlinGenericDeclaration ? (KotlinGenericDeclaration) obj : null;
        if (kotlinGenericDeclaration != null) {
            return kotlinGenericDeclaration.findJavaDeclaration();
        }
        return null;
    }

    public boolean equals(Object other) {
        if (!(other instanceof KTypeParameterBase)) {
            return false;
        }
        KTypeParameterBase kTypeParameterBase = (KTypeParameterBase) other;
        return Intrinsics.areEqual(getName(), kTypeParameterBase.getName()) && Intrinsics.areEqual(this.container, kTypeParameterBase.container);
    }

    public int hashCode() {
        return (this.container.hashCode() * 31) + getName().hashCode();
    }

    public String toString() {
        return TypeParameterReference.INSTANCE.toString(this);
    }
}
