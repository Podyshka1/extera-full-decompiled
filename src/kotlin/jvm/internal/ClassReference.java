package kotlin.jvm.internal;

import androidx.mediarouter.media.MediaRouteProviderProtocol;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXFormulaSettingsParser;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 S2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001SB\u0015\bF\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0002H\u0097\u0080\u0004J\n\u0010J\u001a\u00020KH\u0082\u0080\u0004J\n\u0010L\u001a\u00020MH\u0096\u0080\u0004J\u0014\u0010N\u001a\u00020$2\b\u0010O\u001a\u0004\u0018\u00010\u0002H\u0096\u0082\u0004J\n\u0010P\u001a\u00020QH\u0096\u0080\u0004J\n\u0010R\u001a\u00020\fH\u0096\u0080\u0004R\u0019\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0096\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\u0004\u0018\u00010\f8VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\u0004\u0018\u00010\f8VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000eR\u001f\u0010\u0011\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\u00128VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R!\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00170\u00128VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0015R\u001f\u0010\u0019\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u00128VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015R\u001b\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010 \u001a\u0004\u0018\u00010\u00028VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b!\u0010\"R!\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u001c8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b(\u0010)\u001a\u0004\b*\u0010\u001fR!\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u001c8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b-\u0010)\u001a\u0004\b.\u0010\u001fR)\u0010/\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00010\u001c8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b0\u0010)\u001a\u0004\b1\u0010\u001fR\u001d\u00102\u001a\u0004\u0018\u0001038VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b4\u0010)\u001a\u0004\b5\u00106R\u001b\u00107\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b8\u0010)\u001a\u0004\b7\u00109R\u001b\u0010:\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b;\u0010)\u001a\u0004\b:\u00109R\u001b\u0010<\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b=\u0010)\u001a\u0004\b<\u00109R\u001b\u0010>\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\b?\u0010)\u001a\u0004\b>\u00109R\u001b\u0010@\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\bA\u0010)\u001a\u0004\b@\u00109R\u001b\u0010B\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\bC\u0010)\u001a\u0004\bB\u00109R\u001b\u0010D\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\bE\u0010)\u001a\u0004\bD\u00109R\u001b\u0010F\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\bG\u0010)\u001a\u0004\bF\u00109R\u001b\u0010H\u001a\u00020$8VX\u0097\u0084\b¢\u0006\f\u0012\u0004\bI\u0010)\u001a\u0004\bH\u00109¨\u0006T"}, d2 = {"Lkotlin/jvm/internal/ClassReference;", "Lkotlin/reflect/KClass;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "Lkotlin/jvm/internal/KotlinGenericDeclaration;", "jClass", "Ljava/lang/Class;", "<init>", "(Ljava/lang/Class;)V", "getJClass", "()Ljava/lang/Class;", "simpleName", _UrlKt.FRAGMENT_ENCODE_SET, "getSimpleName", "()Ljava/lang/String;", "qualifiedName", "getQualifiedName", "members", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors", "nestedClasses", "getNestedClasses", "annotations", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getAnnotations", "()Ljava/util/List;", "objectInstance", "getObjectInstance", "()Ljava/lang/Object;", "isInstance", _UrlKt.FRAGMENT_ENCODE_SET, "value", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters$annotations", "()V", "getTypeParameters", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes$annotations", "getSupertypes", "sealedSubclasses", "getSealedSubclasses$annotations", "getSealedSubclasses", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "getVisibility", "()Lkotlin/reflect/KVisibility;", "isFinal", "isFinal$annotations", "()Z", "isOpen", "isOpen$annotations", "isAbstract", "isAbstract$annotations", "isSealed", "isSealed$annotations", "isData", "isData$annotations", "isInner", "isInner$annotations", "isCompanion", "isCompanion$annotations", "isFun", "isFun$annotations", "isValue", "isValue$annotations", MediaRouteProviderProtocol.SERVICE_DATA_ERROR, _UrlKt.FRAGMENT_ENCODE_SET, "findJavaDeclaration", "Ljava/lang/reflect/GenericDeclaration;", "equals", "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,293:1\n1596#2:294\n1629#2,4:295\n*S KotlinDebug\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n*L\n110#1:294\n110#1:295,4\n*E\n"})
public final class ClassReference implements KClass<Object>, ClassBasedDeclarationContainer, KotlinGenericDeclaration {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<Class<? extends Function<?>>, Integer> FUNCTION_CLASSES;
    private final Class<?> jClass;

    @SinceKotlin(version = "1.3")
    public static /* synthetic */ void getSealedSubclasses$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void getSupertypes$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void getTypeParameters$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void getVisibility$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isAbstract$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isCompanion$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isData$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isFinal$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void isFun$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isInner$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isOpen$annotations() {
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void isSealed$annotations() {
    }

    @SinceKotlin(version = "1.5")
    public static /* synthetic */ void isValue$annotations() {
    }

    public ClassReference(Class<?> cls) {
        this.jClass = cls;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<?> getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.KClass
    public String getSimpleName() {
        return INSTANCE.getClassSimpleName(getJClass());
    }

    @Override // kotlin.reflect.KClass
    public String getQualifiedName() {
        return INSTANCE.getClassQualifiedName(getJClass());
    }

    @Override // kotlin.reflect.KClass, kotlin.reflect.KDeclarationContainer
    public Collection<KCallable<?>> getMembers() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public Collection<KFunction<Object>> getConstructors() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public Collection<KClass<?>> getNestedClasses() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public Object getObjectInstance() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    @SinceKotlin(version = "1.1")
    public boolean isInstance(Object value) {
        return INSTANCE.isInstance(value, getJClass());
    }

    @Override // kotlin.reflect.KClass
    public List<KTypeParameter> getTypeParameters() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public List<KType> getSupertypes() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public List<KClass<? extends Object>> getSealedSubclasses() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public KVisibility getVisibility() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isFinal() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isOpen() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isAbstract() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isSealed() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isData() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isInner() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isCompanion() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isFun() {
        error();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.KClass
    public boolean isValue() {
        error();
        throw new KotlinNothingValueException();
    }

    private final Void error() {
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // kotlin.jvm.internal.KotlinGenericDeclaration
    public GenericDeclaration findJavaDeclaration() {
        return getJClass();
    }

    @Override // kotlin.reflect.KClass
    public boolean equals(Object other) {
        return (other instanceof ClassReference) && Intrinsics.areEqual(JvmClassMappingKt.getJavaObjectType(this), JvmClassMappingKt.getJavaObjectType((KClass) other));
    }

    @Override // kotlin.reflect.KClass
    public int hashCode() {
        return JvmClassMappingKt.getJavaObjectType(this).hashCode();
    }

    public String toString() {
        return getJClass().toString() + " (Kotlin reflection is not available)";
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0082\u0080\u0004J\u0014\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0082\u0080\u0004J\u0018\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0086\u0080\u0004J\u0018\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0086\u0080\u0004J \u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00012\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0086\u0080\u0004R'\u0010\u0004\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lkotlin/jvm/internal/ClassReference$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "FUNCTION_CLASSES", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Class;", "Lkotlin/Function;", _UrlKt.FRAGMENT_ENCODE_SET, "classFqNameOf", _UrlKt.FRAGMENT_ENCODE_SET, TeXSymbolParser.TYPE_ATTR, "simpleNameOf", "getClassSimpleName", "jClass", "getClassQualifiedName", "isInstance", _UrlKt.FRAGMENT_ENCODE_SET, "value", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,293:1\n1#2:294\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private final String classFqNameOf(String type) {
            int iHashCode = type.hashCode();
            switch (iHashCode) {
                case -2061550653:
                    if (type.equals("kotlin.jvm.internal.DoubleCompanionObject")) {
                        return "kotlin.Double.Companion";
                    }
                    return null;
                case -2056817302:
                    if (type.equals("java.lang.Integer")) {
                        return "kotlin.Int";
                    }
                    return null;
                case -2034166429:
                    if (type.equals("java.lang.Cloneable")) {
                        return "kotlin.Cloneable";
                    }
                    return null;
                case -1979556166:
                    if (type.equals("java.lang.annotation.Annotation")) {
                        return "kotlin.Annotation";
                    }
                    return null;
                case -1571515090:
                    if (type.equals("java.lang.Comparable")) {
                        return "kotlin.Comparable";
                    }
                    return null;
                case -1383349348:
                    if (type.equals("java.util.Map")) {
                        return "kotlin.collections.Map";
                    }
                    return null;
                case -1383343454:
                    if (type.equals("java.util.Set")) {
                        return "kotlin.collections.Set";
                    }
                    return null;
                case -1325958191:
                    if (type.equals("double")) {
                        return "kotlin.Double";
                    }
                    return null;
                case -1182275604:
                    if (type.equals("kotlin.jvm.internal.ByteCompanionObject")) {
                        return "kotlin.Byte.Companion";
                    }
                    return null;
                case -1062240117:
                    if (type.equals("java.lang.CharSequence")) {
                        return "kotlin.CharSequence";
                    }
                    return null;
                case -688322466:
                    if (type.equals("java.util.Collection")) {
                        return "kotlin.collections.Collection";
                    }
                    return null;
                case -527879800:
                    if (type.equals("java.lang.Float")) {
                        return "kotlin.Float";
                    }
                    return null;
                case -515992664:
                    if (type.equals("java.lang.Short")) {
                        return "kotlin.Short";
                    }
                    return null;
                case -246476834:
                    if (type.equals("kotlin.jvm.internal.CharCompanionObject")) {
                        return "kotlin.Char.Companion";
                    }
                    return null;
                case -207262728:
                    if (type.equals("kotlin.jvm.internal.LongCompanionObject")) {
                        return "kotlin.Long.Companion";
                    }
                    return null;
                case -165139126:
                    if (type.equals("java.util.Map$Entry")) {
                        return "kotlin.collections.Map.Entry";
                    }
                    return null;
                case 104431:
                    if (type.equals("int")) {
                        return "kotlin.Int";
                    }
                    return null;
                case 3039496:
                    if (type.equals("byte")) {
                        return "kotlin.Byte";
                    }
                    return null;
                case 3052374:
                    if (type.equals("char")) {
                        return "kotlin.Char";
                    }
                    return null;
                case 3327612:
                    if (type.equals("long")) {
                        return "kotlin.Long";
                    }
                    return null;
                case 64711720:
                    if (type.equals("boolean")) {
                        return "kotlin.Boolean";
                    }
                    return null;
                case 65821278:
                    if (type.equals("java.util.List")) {
                        return "kotlin.collections.List";
                    }
                    return null;
                case 77230534:
                    if (type.equals("kotlin.jvm.internal.ShortCompanionObject")) {
                        return "kotlin.Short.Companion";
                    }
                    return null;
                case 97526364:
                    if (type.equals("float")) {
                        return "kotlin.Float";
                    }
                    return null;
                case 109413500:
                    if (type.equals("short")) {
                        return "kotlin.Short";
                    }
                    return null;
                case 155276373:
                    if (type.equals("java.lang.Character")) {
                        return "kotlin.Char";
                    }
                    return null;
                case 226173651:
                    if (type.equals("kotlin.jvm.internal.EnumCompanionObject")) {
                        return "kotlin.Enum.Companion";
                    }
                    return null;
                case 344809556:
                    if (type.equals("java.lang.Boolean")) {
                        return "kotlin.Boolean";
                    }
                    return null;
                case 398507100:
                    if (type.equals("java.lang.Byte")) {
                        return "kotlin.Byte";
                    }
                    return null;
                case 398585941:
                    if (type.equals("java.lang.Enum")) {
                        return "kotlin.Enum";
                    }
                    return null;
                case 398795216:
                    if (type.equals("java.lang.Long")) {
                        return "kotlin.Long";
                    }
                    return null;
                case 482629606:
                    if (type.equals("kotlin.jvm.internal.FloatCompanionObject")) {
                        return "kotlin.Float.Companion";
                    }
                    return null;
                case 499831342:
                    if (type.equals("java.util.Iterator")) {
                        return "kotlin.collections.Iterator";
                    }
                    return null;
                case 577341676:
                    if (type.equals("java.util.ListIterator")) {
                        return "kotlin.collections.ListIterator";
                    }
                    return null;
                case 599019395:
                    if (type.equals("kotlin.jvm.internal.StringCompanionObject")) {
                        return "kotlin.String.Companion";
                    }
                    return null;
                case 761287205:
                    if (type.equals("java.lang.Double")) {
                        return "kotlin.Double";
                    }
                    return null;
                case 1052881309:
                    if (type.equals("java.lang.Number")) {
                        return "kotlin.Number";
                    }
                    return null;
                case 1063877011:
                    if (type.equals("java.lang.Object")) {
                        return "kotlin.Any";
                    }
                    return null;
                case 1195259493:
                    if (type.equals("java.lang.String")) {
                        return "kotlin.String";
                    }
                    return null;
                case 1275614662:
                    if (type.equals("java.lang.Iterable")) {
                        return "kotlin.collections.Iterable";
                    }
                    return null;
                case 1383693018:
                    if (type.equals("kotlin.jvm.internal.BooleanCompanionObject")) {
                        return "kotlin.Boolean.Companion";
                    }
                    return null;
                case 1630335596:
                    if (type.equals("java.lang.Throwable")) {
                        return "kotlin.Throwable";
                    }
                    return null;
                case 1877171123:
                    if (type.equals("kotlin.jvm.internal.IntCompanionObject")) {
                        return "kotlin.Int.Companion";
                    }
                    return null;
                default:
                    switch (iHashCode) {
                        case -1811142716:
                            if (type.equals("kotlin.jvm.functions.Function10")) {
                                return "kotlin.Function10";
                            }
                            return null;
                        case -1811142715:
                            if (type.equals("kotlin.jvm.functions.Function11")) {
                                return "kotlin.Function11";
                            }
                            return null;
                        case -1811142714:
                            if (type.equals("kotlin.jvm.functions.Function12")) {
                                return "kotlin.Function12";
                            }
                            return null;
                        case -1811142713:
                            if (type.equals("kotlin.jvm.functions.Function13")) {
                                return "kotlin.Function13";
                            }
                            return null;
                        case -1811142712:
                            if (type.equals("kotlin.jvm.functions.Function14")) {
                                return "kotlin.Function14";
                            }
                            return null;
                        case -1811142711:
                            if (type.equals("kotlin.jvm.functions.Function15")) {
                                return "kotlin.Function15";
                            }
                            return null;
                        case -1811142710:
                            if (type.equals("kotlin.jvm.functions.Function16")) {
                                return "kotlin.Function16";
                            }
                            return null;
                        case -1811142709:
                            if (type.equals("kotlin.jvm.functions.Function17")) {
                                return "kotlin.Function17";
                            }
                            return null;
                        case -1811142708:
                            if (type.equals("kotlin.jvm.functions.Function18")) {
                                return "kotlin.Function18";
                            }
                            return null;
                        case -1811142707:
                            if (type.equals("kotlin.jvm.functions.Function19")) {
                                return "kotlin.Function19";
                            }
                            return null;
                        default:
                            switch (iHashCode) {
                                case -1811142685:
                                    if (type.equals("kotlin.jvm.functions.Function20")) {
                                        return "kotlin.Function20";
                                    }
                                    return null;
                                case -1811142684:
                                    if (type.equals("kotlin.jvm.functions.Function21")) {
                                        return "kotlin.Function21";
                                    }
                                    return null;
                                case -1811142683:
                                    if (type.equals("kotlin.jvm.functions.Function22")) {
                                        return "kotlin.Function22";
                                    }
                                    return null;
                                default:
                                    switch (iHashCode) {
                                        case 80123371:
                                            if (type.equals("kotlin.jvm.functions.Function0")) {
                                                return "kotlin.Function0";
                                            }
                                            return null;
                                        case 80123372:
                                            if (type.equals("kotlin.jvm.functions.Function1")) {
                                                return "kotlin.Function1";
                                            }
                                            return null;
                                        case 80123373:
                                            if (type.equals("kotlin.jvm.functions.Function2")) {
                                                return "kotlin.Function2";
                                            }
                                            return null;
                                        case 80123374:
                                            if (type.equals("kotlin.jvm.functions.Function3")) {
                                                return "kotlin.Function3";
                                            }
                                            return null;
                                        case 80123375:
                                            if (type.equals("kotlin.jvm.functions.Function4")) {
                                                return "kotlin.Function4";
                                            }
                                            return null;
                                        case 80123376:
                                            if (type.equals("kotlin.jvm.functions.Function5")) {
                                                return "kotlin.Function5";
                                            }
                                            return null;
                                        case 80123377:
                                            if (type.equals("kotlin.jvm.functions.Function6")) {
                                                return "kotlin.Function6";
                                            }
                                            return null;
                                        case 80123378:
                                            if (type.equals("kotlin.jvm.functions.Function7")) {
                                                return "kotlin.Function7";
                                            }
                                            return null;
                                        case 80123379:
                                            if (type.equals("kotlin.jvm.functions.Function8")) {
                                                return "kotlin.Function8";
                                            }
                                            return null;
                                        case 80123380:
                                            if (type.equals("kotlin.jvm.functions.Function9")) {
                                                return "kotlin.Function9";
                                            }
                                            return null;
                                        default:
                                            return null;
                                    }
                            }
                    }
            }
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private final String simpleNameOf(String type) {
            int iHashCode = type.hashCode();
            switch (iHashCode) {
                case -2061550653:
                    if (type.equals("kotlin.jvm.internal.DoubleCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case -2056817302:
                    if (type.equals("java.lang.Integer")) {
                        return "Int";
                    }
                    return null;
                case -2034166429:
                    if (type.equals("java.lang.Cloneable")) {
                        return "Cloneable";
                    }
                    return null;
                case -1979556166:
                    if (type.equals("java.lang.annotation.Annotation")) {
                        return "Annotation";
                    }
                    return null;
                case -1571515090:
                    if (type.equals("java.lang.Comparable")) {
                        return "Comparable";
                    }
                    return null;
                case -1383349348:
                    if (type.equals("java.util.Map")) {
                        return TeXFormulaSettingsParser.CHARTODEL_MAPPING_EL;
                    }
                    return null;
                case -1383343454:
                    if (type.equals("java.util.Set")) {
                        return "Set";
                    }
                    return null;
                case -1325958191:
                    if (type.equals("double")) {
                        return "Double";
                    }
                    return null;
                case -1182275604:
                    if (type.equals("kotlin.jvm.internal.ByteCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case -1062240117:
                    if (type.equals("java.lang.CharSequence")) {
                        return "CharSequence";
                    }
                    return null;
                case -688322466:
                    if (type.equals("java.util.Collection")) {
                        return "Collection";
                    }
                    return null;
                case -527879800:
                    if (type.equals("java.lang.Float")) {
                        return "Float";
                    }
                    return null;
                case -515992664:
                    if (type.equals("java.lang.Short")) {
                        return "Short";
                    }
                    return null;
                case -246476834:
                    if (type.equals("kotlin.jvm.internal.CharCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case -207262728:
                    if (type.equals("kotlin.jvm.internal.LongCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case -165139126:
                    if (type.equals("java.util.Map$Entry")) {
                        return "Entry";
                    }
                    return null;
                case 104431:
                    if (type.equals("int")) {
                        return "Int";
                    }
                    return null;
                case 3039496:
                    if (type.equals("byte")) {
                        return "Byte";
                    }
                    return null;
                case 3052374:
                    if (type.equals("char")) {
                        return "Char";
                    }
                    return null;
                case 3327612:
                    if (type.equals("long")) {
                        return "Long";
                    }
                    return null;
                case 64711720:
                    if (type.equals("boolean")) {
                        return "Boolean";
                    }
                    return null;
                case 65821278:
                    if (type.equals("java.util.List")) {
                        return "List";
                    }
                    return null;
                case 77230534:
                    if (type.equals("kotlin.jvm.internal.ShortCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case 97526364:
                    if (type.equals("float")) {
                        return "Float";
                    }
                    return null;
                case 109413500:
                    if (type.equals("short")) {
                        return "Short";
                    }
                    return null;
                case 155276373:
                    if (type.equals("java.lang.Character")) {
                        return "Char";
                    }
                    return null;
                case 226173651:
                    if (type.equals("kotlin.jvm.internal.EnumCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case 344809556:
                    if (type.equals("java.lang.Boolean")) {
                        return "Boolean";
                    }
                    return null;
                case 398507100:
                    if (type.equals("java.lang.Byte")) {
                        return "Byte";
                    }
                    return null;
                case 398585941:
                    if (type.equals("java.lang.Enum")) {
                        return "Enum";
                    }
                    return null;
                case 398795216:
                    if (type.equals("java.lang.Long")) {
                        return "Long";
                    }
                    return null;
                case 482629606:
                    if (type.equals("kotlin.jvm.internal.FloatCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case 499831342:
                    if (type.equals("java.util.Iterator")) {
                        return "Iterator";
                    }
                    return null;
                case 577341676:
                    if (type.equals("java.util.ListIterator")) {
                        return "ListIterator";
                    }
                    return null;
                case 599019395:
                    if (type.equals("kotlin.jvm.internal.StringCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case 761287205:
                    if (type.equals("java.lang.Double")) {
                        return "Double";
                    }
                    return null;
                case 1052881309:
                    if (type.equals("java.lang.Number")) {
                        return "Number";
                    }
                    return null;
                case 1063877011:
                    if (type.equals("java.lang.Object")) {
                        return "Any";
                    }
                    return null;
                case 1195259493:
                    if (type.equals("java.lang.String")) {
                        return "String";
                    }
                    return null;
                case 1275614662:
                    if (type.equals("java.lang.Iterable")) {
                        return "Iterable";
                    }
                    return null;
                case 1383693018:
                    if (type.equals("kotlin.jvm.internal.BooleanCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                case 1630335596:
                    if (type.equals("java.lang.Throwable")) {
                        return "Throwable";
                    }
                    return null;
                case 1877171123:
                    if (type.equals("kotlin.jvm.internal.IntCompanionObject")) {
                        return "Companion";
                    }
                    return null;
                default:
                    switch (iHashCode) {
                        case -1811142716:
                            if (type.equals("kotlin.jvm.functions.Function10")) {
                                return "Function10";
                            }
                            return null;
                        case -1811142715:
                            if (type.equals("kotlin.jvm.functions.Function11")) {
                                return "Function11";
                            }
                            return null;
                        case -1811142714:
                            if (type.equals("kotlin.jvm.functions.Function12")) {
                                return "Function12";
                            }
                            return null;
                        case -1811142713:
                            if (type.equals("kotlin.jvm.functions.Function13")) {
                                return "Function13";
                            }
                            return null;
                        case -1811142712:
                            if (type.equals("kotlin.jvm.functions.Function14")) {
                                return "Function14";
                            }
                            return null;
                        case -1811142711:
                            if (type.equals("kotlin.jvm.functions.Function15")) {
                                return "Function15";
                            }
                            return null;
                        case -1811142710:
                            if (type.equals("kotlin.jvm.functions.Function16")) {
                                return "Function16";
                            }
                            return null;
                        case -1811142709:
                            if (type.equals("kotlin.jvm.functions.Function17")) {
                                return "Function17";
                            }
                            return null;
                        case -1811142708:
                            if (type.equals("kotlin.jvm.functions.Function18")) {
                                return "Function18";
                            }
                            return null;
                        case -1811142707:
                            if (type.equals("kotlin.jvm.functions.Function19")) {
                                return "Function19";
                            }
                            return null;
                        default:
                            switch (iHashCode) {
                                case -1811142685:
                                    if (type.equals("kotlin.jvm.functions.Function20")) {
                                        return "Function20";
                                    }
                                    return null;
                                case -1811142684:
                                    if (type.equals("kotlin.jvm.functions.Function21")) {
                                        return "Function21";
                                    }
                                    return null;
                                case -1811142683:
                                    if (type.equals("kotlin.jvm.functions.Function22")) {
                                        return "Function22";
                                    }
                                    return null;
                                default:
                                    switch (iHashCode) {
                                        case 80123371:
                                            if (type.equals("kotlin.jvm.functions.Function0")) {
                                                return "Function0";
                                            }
                                            return null;
                                        case 80123372:
                                            if (type.equals("kotlin.jvm.functions.Function1")) {
                                                return "Function1";
                                            }
                                            return null;
                                        case 80123373:
                                            if (type.equals("kotlin.jvm.functions.Function2")) {
                                                return "Function2";
                                            }
                                            return null;
                                        case 80123374:
                                            if (type.equals("kotlin.jvm.functions.Function3")) {
                                                return "Function3";
                                            }
                                            return null;
                                        case 80123375:
                                            if (type.equals("kotlin.jvm.functions.Function4")) {
                                                return "Function4";
                                            }
                                            return null;
                                        case 80123376:
                                            if (type.equals("kotlin.jvm.functions.Function5")) {
                                                return "Function5";
                                            }
                                            return null;
                                        case 80123377:
                                            if (type.equals("kotlin.jvm.functions.Function6")) {
                                                return "Function6";
                                            }
                                            return null;
                                        case 80123378:
                                            if (type.equals("kotlin.jvm.functions.Function7")) {
                                                return "Function7";
                                            }
                                            return null;
                                        case 80123379:
                                            if (type.equals("kotlin.jvm.functions.Function8")) {
                                                return "Function8";
                                            }
                                            return null;
                                        case 80123380:
                                            if (type.equals("kotlin.jvm.functions.Function9")) {
                                                return "Function9";
                                            }
                                            return null;
                                        default:
                                            return null;
                                    }
                            }
                    }
            }
        }

        public final String getClassSimpleName(Class<?> jClass) {
            String strSimpleNameOf;
            String strConcat = null;
            if (jClass.isAnonymousClass()) {
                return null;
            }
            if (jClass.isLocalClass()) {
                String simpleName = jClass.getSimpleName();
                Method enclosingMethod = jClass.getEnclosingMethod();
                if (enclosingMethod != null) {
                    String strSubstringAfter$default = StringsKt.substringAfter$default(simpleName, enclosingMethod.getName() + Typography.dollar, (String) null, 2, (Object) null);
                    if (strSubstringAfter$default != null) {
                        return strSubstringAfter$default;
                    }
                }
                Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
                if (enclosingConstructor == null) {
                    return StringsKt.substringAfter$default(simpleName, Typography.dollar, (String) null, 2, (Object) null);
                }
                return StringsKt.substringAfter$default(simpleName, enclosingConstructor.getName() + Typography.dollar, (String) null, 2, (Object) null);
            }
            if (jClass.isArray()) {
                Class<?> componentType = jClass.getComponentType();
                if (componentType.isPrimitive() && (strSimpleNameOf = simpleNameOf(componentType.getName())) != null) {
                    strConcat = strSimpleNameOf.concat("Array");
                }
                return strConcat == null ? "Array" : strConcat;
            }
            String strSimpleNameOf2 = simpleNameOf(jClass.getName());
            return strSimpleNameOf2 == null ? jClass.getSimpleName() : strSimpleNameOf2;
        }

        public final String getClassQualifiedName(Class<?> jClass) {
            String strClassFqNameOf;
            String strConcat = null;
            if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
                return null;
            }
            if (jClass.isArray()) {
                Class<?> componentType = jClass.getComponentType();
                if (componentType.isPrimitive() && (strClassFqNameOf = classFqNameOf(componentType.getName())) != null) {
                    strConcat = strClassFqNameOf.concat("Array");
                }
                return strConcat == null ? "kotlin.Array" : strConcat;
            }
            String strClassFqNameOf2 = classFqNameOf(jClass.getName());
            return strClassFqNameOf2 == null ? jClass.getCanonicalName() : strClassFqNameOf2;
        }

        public final boolean isInstance(Object value, Class<?> jClass) {
            Integer num = (Integer) ClassReference.FUNCTION_CLASSES.get(jClass);
            if (num != null) {
                return TypeIntrinsics.isFunctionOfArity(value, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = JvmClassMappingKt.getJavaObjectType(JvmClassMappingKt.getKotlinClass(jClass));
            }
            return jClass.isInstance(value);
        }
    }

    static {
        List listListOf = CollectionsKt.listOf((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class});
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listListOf, 10));
        int i = 0;
        for (Object obj : listListOf) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(TuplesKt.to((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        FUNCTION_CLASSES = MapsKt.toMap(arrayList);
    }
}
