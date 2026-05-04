.class Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$1;
.super Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected onStartPipette()V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->-$$Nest$fgetpipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->onStartColorPipette()V

    return-void
.end method

.method protected onStopPipette()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->-$$Nest$fgetpipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->onStopColorPipette()V

    return-void
.end method
