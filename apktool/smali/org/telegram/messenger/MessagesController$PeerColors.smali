.class public Lorg/telegram/messenger/MessagesController$PeerColors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColors"
.end annotation


# static fields
.field public static final TYPE_NAME:I = 0x0

.field public static final TYPE_PROFILE:I = 0x1


# instance fields
.field public final colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesController$PeerColor;",
            ">;"
        }
    .end annotation
.end field

.field private final colorsById:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field public final hash:I

.field public final type:I


# direct methods
.method public static synthetic $r8$lambda$15xleJ6x5uh0DjkhvIqUbgyHrmk(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 5183
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetcolors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Lcom/exteragram/messenger/utils/ui/MonetUtils;->harmonize(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rYcWplV9U3FuwTumgwTtKILkB34(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 5184
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetdarkColors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Lcom/exteragram/messenger/utils/ui/MonetUtils;->harmonize(I)I

    move-result p0

    return p0
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 5126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    .line 5059
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    .line 5127
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->type:I

    .line 5128
    iput p2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->hash:I

    return-void
.end method

.method private static color(Ljava/lang/String;)I
    .locals 2

    .line 5190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static fromJSON(ILorg/telegram/tgnet/TLRPC$TL_jsonObject;Lorg/telegram/tgnet/TLRPC$TL_jsonObject;Lorg/telegram/tgnet/TLRPC$TL_jsonArray;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 12

    .line 5220
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>(II)V

    const/4 v2, 0x6

    if-eqz p1, :cond_5

    .line 5222
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 5223
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5224
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-nez v7, :cond_0

    goto :goto_0

    .line 5226
    :cond_0
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 5227
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 5230
    :cond_1
    new-instance v7, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v7}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5232
    :try_start_1
    iput v6, v7, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    move v8, v1

    :goto_1
    if-ge v8, v2, :cond_3

    .line 5234
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetcolors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v9

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetdarkColors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v8, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_4

    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetcolors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v11

    aget v11, v11, v1

    :goto_2
    aput v11, v10, v8

    aput v11, v9, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5239
    :cond_3
    :try_start_2
    iget v5, v7, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v8, 0x7

    if-ge v5, v8, :cond_4

    if-nez p0, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    iput-boolean v5, v7, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    .line 5240
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v8, v6

    invoke-virtual {v5, v8, v9, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 5236
    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_b

    .line 5244
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    :goto_5
    if-ge p2, p1, :cond_b

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 5245
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5246
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-nez v5, :cond_6

    goto :goto_5

    .line 5248
    :cond_6
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 5249
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 5252
    :cond_7
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PeerColor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v5, :cond_8

    goto :goto_5

    .line 5255
    :cond_8
    :try_start_3
    iput v4, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_a

    .line 5257
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetdarkColors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v9

    goto :goto_7

    :catch_1
    move-exception v3

    goto :goto_8

    :cond_9
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetdarkColors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v9

    aget v9, v9, v1

    :goto_7
    aput v9, v8, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 5262
    :cond_a
    :try_start_4
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_5

    .line 5259
    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 5265
    :cond_b
    iget-object p0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_e

    .line 5267
    iget-object p0, p3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_9
    if-ge v1, p1, :cond_e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 5268
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    if-nez p3, :cond_c

    goto :goto_9

    .line 5270
    :cond_c
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int p2, p2

    .line 5271
    iget-object p3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$PeerColor;

    if-nez p2, :cond_d

    goto :goto_9

    .line 5273
    :cond_d
    iget-object p3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :cond_e
    return-object v0

    :catch_2
    move-exception p0

    .line 5278
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromString(ILjava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5153
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5154
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 5156
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v2

    .line 5157
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 5160
    :goto_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>(II)V

    .line 5161
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v3, v1

    .line 5162
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 5163
    aget-object v4, p1, v3

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 5166
    :cond_2
    iget v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_3

    if-nez p0, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    iput-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    .line 5167
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColors;->harmonizeColors(Lorg/telegram/messenger/MessagesController$PeerColor;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v4

    .line 5168
    iget-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v5, :cond_4

    .line 5169
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5170
    :cond_4
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    iget v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static fromTL(ILorg/telegram/tgnet/TLRPC$TL_help_peerColors;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 5196
    :cond_0
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/MessagesController$PeerColors;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColors;->hash:I

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    .line 5197
    :goto_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5198
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 5200
    :cond_1
    iget v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_2

    if-nez p0, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    .line 5201
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColors;->harmonizeColors(Lorg/telegram/messenger/MessagesController$PeerColor;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v4

    .line 5202
    iget-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v5, :cond_3

    .line 5203
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_4

    .line 5204
    :cond_3
    :goto_2
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    iget v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    .line 5208
    :goto_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static harmonizeColors(Lorg/telegram/messenger/MessagesController$PeerColor;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 2

    .line 5182
    invoke-static {}, Lorg/telegram/messenger/MessagesController$PeerColors;->isCurrentThemeMonet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 5183
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetcolors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 5184
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->-$$Nest$fgetdarkColors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    :cond_0
    return-object p0
.end method

.method private static isCurrentThemeMonet()Z
    .locals 4

    .line 5177
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "theme"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5178
    const-string v1, "Monet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method


# virtual methods
.method public colorsAvailable(IZ)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5087
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5088
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    .line 5089
    iget-boolean v3, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getLvl(Z)I

    move-result v2

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 3

    .line 5133
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    return-object p1
.end method

.method public maxLevel()I
    .locals 1

    const/4 v0, 0x0

    .line 5097
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel(Z)I

    move-result v0

    return v0
.end method

.method public maxLevel(Z)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5102
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5103
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    .line 5104
    iget-boolean v3, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v3, :cond_0

    .line 5105
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getLvl(Z)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public minLevel()I
    .locals 1

    const/4 v0, 0x0

    .line 5112
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColors;->minLevel(Z)I

    move-result v0

    return v0
.end method

.method public minLevel(Z)I
    .locals 4

    .line 5116
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel(Z)I

    move-result v0

    const/4 v1, 0x0

    .line 5117
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5118
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    .line 5119
    iget-boolean v3, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v3, :cond_0

    .line 5120
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getLvl(Z)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public needUpdate()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 5064
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 5065
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->channelLvl:I

    if-lez v5, :cond_0

    move v3, v1

    .line 5068
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    move v4, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5073
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->type:I

    if-ne v2, v0, :cond_5

    if-nez v3, :cond_5

    .line 5075
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :cond_3
    if-ge v5, v3, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/messenger/MessagesController$PeerColor;

    .line 5076
    iget v6, v6, Lorg/telegram/messenger/MessagesController$PeerColor;->groupLvl:I

    if-lez v6, :cond_3

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    :cond_5
    :goto_1
    if-nez v3, :cond_7

    .line 5082
    iget v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->type:I

    if-nez v2, :cond_6

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 5138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5139
    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->hash:I

    if-eqz v1, :cond_0

    .line 5140
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->hash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 5142
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5143
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    if-lez v1, :cond_1

    .line 5144
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5145
    :cond_1
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->appendString(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5147
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
