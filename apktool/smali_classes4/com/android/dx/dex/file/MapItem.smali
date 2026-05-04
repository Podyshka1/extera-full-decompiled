.class public final Lcom/android/dx/dex/file/MapItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0xc


# instance fields
.field private final firstItem:Lcom/android/dx/dex/file/Item;

.field private final itemCount:I

.field private final lastItem:Lcom/android/dx/dex/file/Item;

.field private final section:Lcom/android/dx/dex/file/Section;

.field private final type:Lcom/android/dx/dex/file/ItemType;


# direct methods
.method private constructor <init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-lez p5, :cond_0

    .line 147
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 148
    iput-object p2, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    .line 149
    iput-object p3, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    .line 150
    iput-object p4, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    .line 151
    iput p5, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "section == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/android/dx/dex/file/Section;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    .line 167
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    iput-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 168
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    .line 170
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    const/4 p1, 0x1

    .line 171
    iput p1, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    return-void

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "section == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V
    .locals 13

    if-eqz p0, :cond_7

    .line 72
    invoke-virtual {p1}, Lcom/android/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v6, p0, v3

    .line 85
    invoke-virtual {v6}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v4, 0x0

    move v9, v2

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/android/dx/dex/file/Item;

    .line 86
    invoke-virtual {v11}, Lcom/android/dx/dex/file/Item;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v12

    if-eq v12, v5, :cond_1

    if-eqz v9, :cond_0

    .line 89
    new-instance v4, Lcom/android/dx/dex/file/MapItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v9, v2

    move-object v7, v11

    move-object v5, v12

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-object v8, v11

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    .line 102
    new-instance v4, Lcom/android/dx/dex/file/MapItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-ne v6, p1, :cond_4

    .line 106
    new-instance v4, Lcom/android/dx/dex/file/MapItem;

    invoke-direct {v4, p1}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/Section;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_5
    new-instance p0, Lcom/android/dx/dex/file/UniformListItem;

    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/UniformListItem;-><init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    return-void

    .line 73
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mapSection.items().size() != 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "sections == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 0

    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 177
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    const-class v1, Lcom/android/dx/dex/file/MapItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 5

    .line 210
    iget-object p1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/ItemType;->getMapValue()I

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I

    move-result v0

    .line 219
    :goto_0
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 222
    invoke-interface {p2, v3, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 224
    const-string v1, "  unused: 0"

    invoke-interface {p2, v3, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  offset: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 229
    :cond_1
    invoke-interface {p2, p1}, Lcom/android/dx/util/Output;->writeShort(I)V

    .line 230
    invoke-interface {p2, v2}, Lcom/android/dx/util/Output;->writeShort(I)V

    .line 231
    iget p1, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    invoke-interface {p2, p1}, Lcom/android/dx/util/Output;->writeInt(I)V

    .line 232
    invoke-interface {p2, v0}, Lcom/android/dx/util/Output;->writeInt(I)V

    return-void
.end method
