.class public final Landroidx/core/backported/fixes/SystemPropertyResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/backported/fixes/StatusResolver;


# instance fields
.field private final aliases$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$WUGZ1J69Ga10Y7fYyHq8WrTbPFQ(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->aliases_delegate$lambda$0(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroidx/core/backported/fixes/SystemPropertyResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/backported/fixes/SystemPropertyResolver$$ExternalSyntheticLambda0;-><init>(Landroidx/core/backported/fixes/SystemPropertyResolver;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/backported/fixes/SystemPropertyResolver;->aliases$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final aliases_delegate$lambda$0(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->initAliases()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final getAliasBitsetString()Ljava/lang/String;
    .locals 8

    .line 85
    const-string v0, ""

    .line 86
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 87
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.build.backported_fixes.alias_bitset.long_list"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private final initAliases()Ljava/util/Set;
    .locals 4

    .line 46
    invoke-direct {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->getAliasBitsetString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->parseLongListString(Ljava/lang/String;)[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    invoke-static {v1}, Lkotlin/collections/SetsKt;->createSetBuilder(I)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v2, :cond_3

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    invoke-static {v1}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private final parseLongListString(Ljava/lang/String;)[J
    .locals 8

    .line 69
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    new-array v3, v1, [C

    const/16 v1, 0x2c

    const/4 v2, 0x0

    aput-char v1, v3, v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 80
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAliases()Ljava/util/Set;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/core/backported/fixes/SystemPropertyResolver;->aliases$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;
    .locals 1

    const-string v0, "ki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getAlias$core_backported_fixes()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    sget-object p1, Landroidx/core/backported/fixes/Status;->Unknown:Landroidx/core/backported/fixes/Status;

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->getAliases()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getAlias$core_backported_fixes()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    sget-object p1, Landroidx/core/backported/fixes/Status;->Fixed:Landroidx/core/backported/fixes/Status;

    return-object p1

    .line 40
    :cond_1
    sget-object p1, Landroidx/core/backported/fixes/Status;->NotFixed:Landroidx/core/backported/fixes/Status;

    return-object p1
.end method
