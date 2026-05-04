.class Lorg/telegram/ui/ActionBar/Theme$3;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5191
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public selectDrawable(I)Z
    .locals 0

    .line 5194
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result p1

    return p1
.end method
