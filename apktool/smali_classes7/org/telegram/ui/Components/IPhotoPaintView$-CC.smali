.class public abstract synthetic Lorg/telegram/ui/Components/IPhotoPaintView$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;
    .locals 1

    .line 19
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Landroid/view/View;

    return-object p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You should override getView() if you\'re not inheriting from it."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $default$setOffsetTranslationX(Lorg/telegram/ui/Components/IPhotoPaintView;F)V
    .locals 0

    .line 30
    return-void
.end method
