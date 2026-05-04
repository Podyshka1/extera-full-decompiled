.class public final Lj$/util/stream/Collectors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 106
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    sget-object v2, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 107
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 111
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 114
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 116
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->b:Ljava/util/Set;

    .line 118
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    .line 120
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method public static a([DD)V
    .locals 6

    const/4 v0, 0x1

    .line 746
    aget-wide v1, p0, v0

    sub-double/2addr p1, v1

    const/4 v1, 0x0

    .line 747
    aget-wide v2, p0, v1

    add-double v4, v2, p1

    sub-double v2, v4, v2

    sub-double/2addr v2, p1

    .line 749
    aput-wide v2, p0, v0

    .line 750
    aput-wide v4, p0, v1

    return-void
.end method

.method public static joining()Lj$/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Lj$/util/stream/l;

    new-instance v1, Lj$/util/stream/j;

    const/4 v2, 0x5

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/j;-><init>(I)V

    .line 368
    new-instance v2, Lj$/time/format/a;

    const/16 v3, 0x14

    .line 0
    invoke-direct {v2, v3}, Lj$/time/format/a;-><init>(I)V

    .line 368
    new-instance v3, Lj$/time/format/a;

    const/16 v4, 0x15

    .line 0
    invoke-direct {v3, v4}, Lj$/time/format/a;-><init>(I)V

    .line 368
    new-instance v4, Lj$/time/format/a;

    const/16 v5, 0x16

    .line 0
    invoke-direct {v4, v5}, Lj$/time/format/a;-><init>(I)V

    .line 368
    sget-object v5, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Lj$/util/stream/l;

    new-instance v1, Lj$/util/stream/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lj$/time/format/a;

    const/16 p0, 0x10

    .line 0
    invoke-direct {v2, p0}, Lj$/time/format/a;-><init>(I)V

    .line 402
    new-instance v3, Lj$/time/format/a;

    const/16 p0, 0x11

    .line 0
    invoke-direct {v3, p0}, Lj$/time/format/a;-><init>(I)V

    .line 402
    new-instance v4, Lj$/time/format/a;

    const/16 p0, 0x12

    .line 0
    invoke-direct {v4, p0}, Lj$/time/format/a;-><init>(I)V

    .line 402
    sget-object v5, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/util/function/Supplier<",
            "TC;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lj$/util/stream/l;

    new-instance v1, Lj$/time/format/a;

    const/16 v2, 0xa

    .line 0
    invoke-direct {v1, v2}, Lj$/time/format/a;-><init>(I)V

    .line 261
    new-instance v2, Lj$/time/format/a;

    const/16 v3, 0xb

    .line 0
    invoke-direct {v2, v3}, Lj$/time/format/a;-><init>(I)V

    .line 261
    sget-object v3, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/util/stream/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toList()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 278
    new-instance v0, Lj$/util/stream/l;

    new-instance v1, Lj$/util/stream/j;

    const/4 v2, 0x1

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/j;-><init>(I)V

    .line 278
    new-instance v2, Lj$/time/format/a;

    const/16 v3, 0xc

    .line 0
    invoke-direct {v2, v3}, Lj$/time/format/a;-><init>(I)V

    .line 278
    new-instance v3, Lj$/time/format/a;

    const/16 v4, 0xe

    .line 0
    invoke-direct {v3, v4}, Lj$/time/format/a;-><init>(I)V

    .line 278
    sget-object v4, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1657
    new-instance v0, Lj$/util/stream/k;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/k;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1660
    new-instance p0, Lj$/util/stream/l;

    .line 422
    new-instance p1, Lj$/time/s;

    const/4 v1, 0x4

    invoke-direct {p1, v1, p2}, Lj$/time/s;-><init>(ILjava/lang/Object;)V

    .line 1660
    sget-object p2, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {p0, p3, v0, p1, p2}, Lj$/util/stream/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p0
.end method

.method public static toSet()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 319
    new-instance v0, Lj$/util/stream/l;

    new-instance v1, Lj$/util/stream/j;

    const/4 v2, 0x3

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/j;-><init>(I)V

    .line 319
    new-instance v2, Lj$/time/format/a;

    const/16 v3, 0xd

    .line 0
    invoke-direct {v2, v3}, Lj$/time/format/a;-><init>(I)V

    .line 319
    new-instance v3, Lj$/time/format/a;

    const/16 v4, 0x13

    .line 0
    invoke-direct {v3, v4}, Lj$/time/format/a;-><init>(I)V

    .line 319
    sget-object v4, Lj$/util/stream/Collectors;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method
