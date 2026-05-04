.class public Lcom/android/dex/TableOfContents$Section;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/TableOfContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field public byteCount:I

.field public off:I

.field public size:I

.field public final type:S


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    const/4 v1, -0x1

    .line 222
    iput v1, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 223
    iput v0, p0, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    int-to-short p1, p1

    .line 226
    iput-short p1, p0, Lcom/android/dex/TableOfContents$Section;->type:S

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/TableOfContents$Section;)I
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget p1, p1, Lcom/android/dex/TableOfContents$Section;->off:I

    if-eq v0, p1, :cond_1

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 219
    check-cast p1, Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p0, p1}, Lcom/android/dex/TableOfContents$Section;->compareTo(Lcom/android/dex/TableOfContents$Section;)I

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 243
    iget-short v0, p0, Lcom/android/dex/TableOfContents$Section;->type:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget v1, p0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Section[type=%#x,off=%#x,size=%#x]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
