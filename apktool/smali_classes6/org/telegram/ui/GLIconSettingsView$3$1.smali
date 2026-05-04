.class Lorg/telegram/ui/GLIconSettingsView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GLIconSettingsView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GLIconSettingsView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GLIconSettingsView$3;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/telegram/ui/GLIconSettingsView$3$1;->this$1:Lorg/telegram/ui/GLIconSettingsView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic deleteTheme()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate$-CC;->$default$deleteTheme(Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V

    return-void
.end method

.method public synthetic getDefaultColor(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate$-CC;->$default$getDefaultColor(Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;I)I

    move-result p1

    return p1
.end method

.method public synthetic openThemeCreate(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate$-CC;->$default$openThemeCreate(Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;Z)V

    return-void
.end method

.method public setColor(IIZ)V
    .locals 0

    .line 101
    iget-object p2, p0, Lorg/telegram/ui/GLIconSettingsView$3$1;->this$1:Lorg/telegram/ui/GLIconSettingsView$3;

    iget-object p2, p2, Lorg/telegram/ui/GLIconSettingsView$3;->val$mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->model:Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;

    if-eqz p2, :cond_0

    .line 102
    iput p1, p2, Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;->specColor:I

    :cond_0
    return-void
.end method
