.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/ClassReference$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/ClassReference$Companion;

.field private static final FUNCTION_CLASSES:Ljava/util/Map;


# instance fields
.field private final jClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/ClassReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    const/16 v0, 0x17

    .line 106
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/functions/Function0;

    aput-object v2, v0, v1

    const-class v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function3;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function4;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function5;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function6;

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function7;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function8;

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function9;

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v2, 0xa

    const-class v3, Lkotlin/jvm/functions/Function10;

    aput-object v3, v0, v2

    const-class v3, Lkotlin/jvm/functions/Function11;

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function12;

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function13;

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function14;

    const/16 v4, 0xe

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function15;

    const/16 v4, 0xf

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function16;

    const/16 v4, 0x10

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function17;

    const/16 v4, 0x11

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function18;

    const/16 v4, 0x12

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function19;

    const/16 v4, 0x13

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function20;

    const/16 v4, 0x14

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function21;

    const/16 v4, 0x15

    aput-object v3, v0, v4

    const-class v3, Lkotlin/jvm/functions/Function22;

    const/16 v4, 0x16

    aput-object v3, v0, v4

    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1573
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1605
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    .line 1606
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Ljava/lang/Class;

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1606
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string/jumbo v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-void
.end method

.method public static final synthetic access$getFUNCTION_CLASSES$cp()Ljava/util/Map;
    .locals 1

    .line 10
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    return-object v0
.end method

.method private final error()Ljava/lang/Void;
    .locals 1

    .line 88
    new-instance v0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {v0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 91
    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/KClass;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 27
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getJClass()Ljava/lang/Class;
    .locals 1

    .line 10
    iget-object v0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .line 15
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->getClassQualifiedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 2

    .line 12
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2

    .line 34
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->isInstance(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
