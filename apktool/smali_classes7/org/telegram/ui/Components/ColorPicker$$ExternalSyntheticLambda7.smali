.class public final synthetic Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ColorPicker;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ColorPicker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/ColorPicker;

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorPicker;->$r8$lambda$y_E7eP_Acbm85kGSp6iOFvSpILc(Lorg/telegram/ui/Components/ColorPicker;)V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
