.class public Lorg/telegram/ui/CacheControlActivity$ItemInner;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInner"
.end annotation


# instance fields
.field colorKey:I

.field entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

.field headerBottomMargin:I

.field headerName:Ljava/lang/CharSequence;

.field headerTopMargin:I

.field public index:I

.field keepMediaType:I

.field last:Z

.field public pad:Z

.field public size:J

.field text:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3061
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/16 p1, 0xf

    .line 3028
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerTopMargin:I

    const/4 p1, 0x0

    .line 3029
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerBottomMargin:I

    const/4 p1, -0x1

    .line 3030
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 3048
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/16 p1, 0xf

    .line 3028
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerTopMargin:I

    const/4 p1, 0x0

    .line 3029
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerBottomMargin:I

    .line 3049
    iput p2, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 1

    const/4 v0, 0x1

    .line 3042
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/16 p1, 0xf

    .line 3028
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerTopMargin:I

    const/4 p1, 0x0

    .line 3029
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerBottomMargin:I

    const/4 p1, -0x1

    .line 3030
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    .line 3043
    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerName:Ljava/lang/CharSequence;

    .line 3044
    iput-object p3, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    return-void
.end method

.method synthetic constructor <init>(ILorg/telegram/ui/CacheControlActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(I)V

    return-void
.end method

.method public static asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    .line 3065
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJIZ)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object p0

    return-object p0
.end method

.method public static asCheckBox(Ljava/lang/CharSequence;IJIZ)Lorg/telegram/ui/CacheControlActivity$ItemInner;
    .locals 2

    .line 3069
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(I)V

    .line 3070
    iput p1, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    .line 3071
    iput-object p0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerName:Ljava/lang/CharSequence;

    .line 3072
    iput-wide p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    .line 3073
    iput p4, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->colorKey:I

    .line 3074
    iput-boolean p5, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->last:Z

    return-object v0
.end method

.method public static asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;
    .locals 2

    .line 3079
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(I)V

    .line 3080
    iput-object p0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 3087
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 3088
    :cond_1
    check-cast p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 3089
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v2, v3, :cond_c

    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 3093
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v3, :cond_4

    iget-object v4, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v4, :cond_4

    .line 3094
    iget-wide v2, v3, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    iget-wide v4, v4, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    const/16 v3, 0x8

    if-eq v2, v3, :cond_b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    if-eqz v2, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 3100
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerName:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerName:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    if-ne v2, v0, :cond_7

    .line 3103
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->text:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    .line 3106
    iget v2, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    iget v3, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ne v2, v3, :cond_8

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-wide v4, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v1

    :cond_9
    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    .line 3109
    iget v2, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    iget p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ne v2, p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    :goto_0
    return v0

    :cond_c
    :goto_1
    return v1
.end method
