package kotlin.jvm.internal;

import java.util.List;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;
import kotlin.time.DurationKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.4")
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB-\bF\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u001a\u001a\u00020\u001b2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0086\u0080\u0004R\u0015\u0010\u0005\u001a\u00020\u0006X\u0096\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0007\u001a\u00020\bX\u0096\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\t\u001a\u00020\nX\u0096\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0011R\u0017\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u008e\b¢\u0006\u0002\n\u0000R!\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138VX\u0096\u0084\b¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference;", "Lkotlin/jvm/internal/KTypeParameterBase;", "container", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/jvm/internal/TypeParameterContainer;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "variance", "Lkotlin/reflect/KVariance;", "isReified", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "getName", "()Ljava/lang/String;", "getVariance", "()Lkotlin/reflect/KVariance;", "()Z", "bounds", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KType;", "upperBounds", "getUpperBounds$annotations", "()V", "getUpperBounds", "()Ljava/util/List;", "setUpperBounds", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTypeParameterReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterReference.kt\nkotlin/jvm/internal/TypeParameterReference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"})
public final class TypeParameterReference extends KTypeParameterBase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private volatile List<? extends KType> bounds;
    private final boolean isReified;
    private final String name;
    private final KVariance variance;

    public static /* synthetic */ void getUpperBounds$annotations() {
    }

    public TypeParameterReference(Object obj, String str, KVariance kVariance, boolean z) {
        super(obj);
        this.name = str;
        this.variance = kVariance;
        this.isReified = z;
    }

    @Override // kotlin.reflect.KTypeParameter
    public String getName() {
        return this.name;
    }

    @Override // kotlin.reflect.KTypeParameter
    public KVariance getVariance() {
        return this.variance;
    }

    @Override // kotlin.reflect.KTypeParameter
    /* JADX INFO: renamed from: isReified, reason: from getter */
    public boolean getIsReified() {
        return this.isReified;
    }

    @Override // kotlin.reflect.KTypeParameter
    public List<KType> getUpperBounds() {
        List list = this.bounds;
        if (list != null) {
            return list;
        }
        List<KType> listListOf = CollectionsKt.listOf(Reflection.nullableTypeOf(Object.class));
        this.bounds = listListOf;
        return listListOf;
    }

    public final void setUpperBounds(List<? extends KType> upperBounds) {
        if (this.bounds != null) {
            DurationKt$$ExternalSyntheticBUOutline1.m811m("Upper bounds of type parameter '", this, "' have already been initialized.");
        } else {
            this.bounds = upperBounds;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0080\u0004¨\u0006\b"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "typeParameter", "Lkotlin/reflect/KTypeParameter;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        @Metadata(m754k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[KVariance.values().length];
                try {
                    iArr[KVariance.INVARIANT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[KVariance.IN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[KVariance.OUT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String toString(KTypeParameter typeParameter) {
            StringBuilder sb = new StringBuilder();
            int i = WhenMappings.$EnumSwitchMapping$0[typeParameter.getVariance().ordinal()];
            if (i == 1) {
                Unit unit = Unit.INSTANCE;
            } else if (i == 2) {
                sb.append("in ");
            } else {
                if (i != 3) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                    return null;
                }
                sb.append("out ");
            }
            sb.append(typeParameter.getName());
            return sb.toString();
        }
    }
}
