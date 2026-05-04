.class Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/PaintTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Family"
.end annotation


# instance fields
.field family:Ljava/lang/String;

.field fonts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBold()Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;
    .locals 3

    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->subfamily:Ljava/lang/String;

    const-string v2, "Bold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegular()Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 223
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->subfamily:Ljava/lang/String;

    const-string v3, "Regular"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 229
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    return-object v0

    :cond_2
    return-object v1
.end method
