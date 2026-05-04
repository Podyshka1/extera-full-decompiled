.class final Lorg/telegram/ui/Components/TableLayout$PackedMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackedMap"
.end annotation


# instance fields
.field public final index:[I

.field public final keys:[Ljava/lang/Object;

.field public final values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 1708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1709
    invoke-static {p1}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->createIndex([Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->index:[I

    .line 1711
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->keys:[Ljava/lang/Object;

    .line 1712
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;Lorg/telegram/ui/Components/TableLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private static compact([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 5

    .line 1737
    array-length v0, p0

    .line 1738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, -0x1

    .line 1739
    invoke-static {p1, v2}, Lorg/telegram/ui/Components/TableLayout;->max2([II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1742
    aget v3, p1, v2

    aget-object v4, p0, v2

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createIndex([Ljava/lang/Object;)[I
    .locals 6

    .line 1720
    array-length v0, p0

    .line 1721
    new-array v1, v0, [I

    .line 1723
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1725
    aget-object v4, p0, v3

    .line 1726
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 1728
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1729
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getValue(I)Ljava/lang/Object;
    .locals 2

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout$PackedMap;->index:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    return-object p1
.end method
