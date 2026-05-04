.class public Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Lithuanian"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4139
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 5

    .line 4141
    rem-int/lit8 v0, p1, 0x64

    .line 4142
    rem-int/lit8 p1, p1, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x13

    const/16 v4, 0xb

    if-ne p1, v1, :cond_1

    if-lt v0, v4, :cond_0

    if-le v0, v3, :cond_1

    :cond_0
    return v2

    :cond_1
    if-lt p1, v2, :cond_3

    const/16 v1, 0x9

    if-gt p1, v1, :cond_3

    if-lt v0, v4, :cond_2

    if-le v0, v3, :cond_3

    :cond_2
    const/16 p1, 0x8

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
