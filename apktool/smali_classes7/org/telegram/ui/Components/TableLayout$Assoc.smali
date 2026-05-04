.class final Lorg/telegram/ui/Components/TableLayout$Assoc;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Assoc"
.end annotation


# instance fields
.field private final keyType:Ljava/lang/Class;

.field private final valueType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 1676
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Assoc;->keyType:Ljava/lang/Class;

    .line 1678
    iput-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Assoc;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;)Lorg/telegram/ui/Components/TableLayout$Assoc;
    .locals 1

    .line 1682
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Assoc;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/TableLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public pack()Lorg/telegram/ui/Components/TableLayout$PackedMap;
    .locals 5

    .line 1691
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 1692
    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout$Assoc;->keyType:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1693
    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout$Assoc;->valueType:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1695
    invoke-virtual {p0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v1, v3

    .line 1696
    invoke-virtual {p0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1698
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$PackedMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/TableLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Lorg/telegram/ui/Components/TableLayout-IA;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1686
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
