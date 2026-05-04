.class Lorg/telegram/ui/LocationActivity$SearchButton;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchButton"
.end annotation


# instance fields
.field private additionanTranslationY:F

.field private currentTranslationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateTranslationY()V
    .locals 2

    .line 291
    iget v0, p0, Lorg/telegram/ui/LocationActivity$SearchButton;->currentTranslationY:F

    iget v1, p0, Lorg/telegram/ui/LocationActivity$SearchButton;->additionanTranslationY:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getTranslationX()F
    .locals 1

    .line 276
    iget v0, p0, Lorg/telegram/ui/LocationActivity$SearchButton;->additionanTranslationY:F

    return v0
.end method

.method public setTranslation(F)V
    .locals 0

    .line 286
    iput p1, p0, Lorg/telegram/ui/LocationActivity$SearchButton;->currentTranslationY:F

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity$SearchButton;->updateTranslationY()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 281
    iput p1, p0, Lorg/telegram/ui/LocationActivity$SearchButton;->additionanTranslationY:F

    .line 282
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity$SearchButton;->updateTranslationY()V

    return-void
.end method
