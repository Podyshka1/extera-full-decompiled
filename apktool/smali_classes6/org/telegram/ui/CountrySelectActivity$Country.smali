.class public Lorg/telegram/ui/CountrySelectActivity$Country;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CountrySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Country"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public defaultName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public shortname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 258
    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
