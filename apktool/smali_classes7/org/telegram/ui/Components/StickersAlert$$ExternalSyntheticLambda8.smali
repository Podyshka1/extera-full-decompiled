.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->updateColors()V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
