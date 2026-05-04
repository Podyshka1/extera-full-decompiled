.class public Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation


# instance fields
.field private final mFonts:Ljava/util/List;

.field private final mStatusCode:I


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 569
    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V
    .locals 0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 564
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method

.method static create(ILjava/util/List;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 1

    .line 607
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method static create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 1

    .line 601
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    return-object v0
.end method


# virtual methods
.method public getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 2

    .line 583
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method

.method public getFontsWithFallbacks()Ljava/util/List;
    .locals 1

    .line 594
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 573
    iget v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    return v0
.end method

.method hasFallback()Z
    .locals 2

    .line 587
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
