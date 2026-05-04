.class public abstract Lcom/android/dx/dex/file/MemberIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    const/4 v0, 0x4

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    return-void
.end method

.method private getTooManyMembersMessage()Ljava/lang/String;
    .locals 9

    .line 58
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/IdItem;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 64
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 69
    :cond_1
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 71
    :try_start_0
    instance-of v2, p0, Lcom/android/dx/dex/file/MethodIdsSection;

    if-eqz v2, :cond_2

    const-string v2, "method"

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const-string v2, "field"

    .line 72
    :goto_1
    const-string v3, "Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:"

    .line 76
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v4, v6, v2

    const/4 v4, 0x2

    aput-object v5, v6, v4

    .line 72
    invoke-virtual {v1, v3, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    const-string v5, "%n%6d %s"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v7

    aput-object v3, v8, v2

    invoke-virtual {v1, v5, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    return-object v0

    :goto_3
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    throw v0
.end method


# virtual methods
.method protected orderItems()V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/IndexedItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/android/dex/DexIndexOverflowException;

    invoke-direct {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->getTooManyMembersMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
