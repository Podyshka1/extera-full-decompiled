.class Lorg/telegram/ui/Components/NumberPicker$1;
.super Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/NumberPicker;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$1;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected canScrollBackward(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected canScrollForward(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected doScroll(Landroid/view/View;Z)V
    .locals 0

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$1;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method public getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$1;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->-$$Nest$fgetcontentDescriptionCallback(Lorg/telegram/ui/Components/NumberPicker;)Lorg/telegram/messenger/Utilities$CallbackReturn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$1;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->-$$Nest$fgetcontentDescriptionCallback(Lorg/telegram/ui/Components/NumberPicker;)Lorg/telegram/messenger/Utilities$CallbackReturn;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker$1;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/NumberPicker;->-$$Nest$fgetmValue(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 229
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker$1;->this$0:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->-$$Nest$fgetmValue(Lorg/telegram/ui/Components/NumberPicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->getContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
