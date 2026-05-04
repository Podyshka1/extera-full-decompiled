.class Lorg/telegram/ui/Components/EditTextBoldCursor$5;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextBoldCursor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 356
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->-$$Nest$fputcursorDrawn(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void

    .line 358
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->-$$Nest$fgetcursorSize(Lorg/telegram/ui/Components/EditTextBoldCursor;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->-$$Nest$fgetcursorWidth(Lorg/telegram/ui/Components/EditTextBoldCursor;)F

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method
