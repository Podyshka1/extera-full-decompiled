.class public Lorg/telegram/messenger/LocaleController$PluralRules_Polish;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Polish"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4086
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 5

    .line 4088
    rem-int/lit8 v0, p1, 0x64

    .line 4089
    rem-int/lit8 v1, p1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    const/16 p1, 0xe

    const/16 v4, 0xc

    if-lt v1, v2, :cond_2

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    if-lt v0, v4, :cond_1

    if-le v0, p1, :cond_2

    :cond_1
    const/16 p1, 0x8

    return p1

    :cond_2
    if-ltz v1, :cond_3

    if-le v1, v3, :cond_5

    :cond_3
    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    const/16 v2, 0x9

    if-le v1, v2, :cond_5

    :cond_4
    if-lt v0, v4, :cond_6

    if-gt v0, p1, :cond_6

    :cond_5
    const/16 p1, 0x10

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
