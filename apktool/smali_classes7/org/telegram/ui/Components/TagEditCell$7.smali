.class Lorg/telegram/ui/Components/TagEditCell$7;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TagEditCell;->showInfoSheet(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 426
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getParentWidth()I
    .locals 2

    .line 431
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateTranslation()V
    .locals 0

    return-void
.end method
