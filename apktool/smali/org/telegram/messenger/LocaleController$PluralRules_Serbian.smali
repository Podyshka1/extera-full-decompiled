.class public Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Serbian"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4233
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 3

    .line 4235
    rem-int/lit8 v0, p1, 0x64

    .line 4236
    rem-int/lit8 p1, p1, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    if-gt p1, v1, :cond_2

    const/16 p1, 0xc

    if-lt v0, p1, :cond_1

    const/16 p1, 0xe

    if-le v0, p1, :cond_2

    :cond_1
    const/16 p1, 0x8

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
