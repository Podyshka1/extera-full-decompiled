.class public Lorg/telegram/messenger/LocaleController$PluralRules_Langi;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Langi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4165
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
